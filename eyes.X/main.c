/*
 * Main program
*/
#include "mcc_generated_files/dee/dee.h"
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "mcc_generated_files/uart/uart1.h"

#include "systick.h"
#include "sequences.h"

#include <stdio.h>
#include <stdlib.h>



// What mood are we in?
typedef enum {
    MOOD_HAPPY = 0,
    MOOD_ANGRY

} MOOD;

// What state are we in?
typedef enum {
    STATE_SLEEPING,
    STATE_WAKEUP,
    STATE_HAPPY,
    STATE_ANGRY,
    MAX_STATES

} MOOD_STATE;

char * statestr[MAX_STATES] = { "SLEEPING", "WAKEUP", "HAPPY", "ANGRY" };

// Debounce time on button checks in milliseconds.
#define BUTTON_DEBOUNCE_TIME_MS 500

// Hold the button for (500 * this) milliseconds to program distance setpoint.
#define PROGRAM_CHECK_PERIODS   2

// Hold the button for (500 * this) milliseconds to reset.
#define RESET_CHECK_PERIODS     6

// LED status time in milliseconds.
#define LED_TICK_TIME_MS        1000

// How often to check the sensor in milliseconds.
#define SENSOR_POLL_MS          100
#define SLEEPING_SENSOR_POLL_MS 500

// Threshold between mood changes in milliseconds.
#define ACTION_THRESHOLD_MS     SENSOR_POLL_MS

// Jitter around the sensor's readings (roughly 5cm, or ~2in).
#define SENSOR_JITTER           50

// Blink/wink thresholds
#define WINK_THRESHOLD          256
#define BLINK_THRESHOLD         768
#define DOUBLE_BLINK_THRESHOLD  384

// The default "angry distance" value when nothing is stored.
#define DEFAULT_DISTANCE        0x300   // 768mm = ~2.7ft

// Maximum acceptable distance, to filter out sensor glitches or detect 'no signal'.
// This is roughly the maximum reliable distance the sensor can measure, about ~2.5m.
#define MAX_DISTANCE            0xA80   // 2688mm

// Range of random numbers for blink/wink actions.
#define ACTION_RANGE            32767

// Minimum and maximum time between winks or blinks.
#define BLINK_TIMEOUT_MS        3000
#define BLINK_MAXIMUM_TIMEOUT_MS 7000

// Timeout if no signal received.
#define TIMEOUT_MS              3000

// EEPROM angry-distance address.
#define DEE_ANGRY_DISTANCE_ADDRESS  0


// Get the state based on distance and setpoint.
MOOD_STATE get_newstate(uint16_t distance, uint16_t distancelast, uint16_t setpoint, MOOD_STATE currentstate)
{
    MOOD_STATE newstate;

    DEBUG_PRINT("%5u -> %5u: ", distancelast, distance);

    if (distancelast > distance) {
        // The previous distance is farther than the current distance, so the subject moved closer.
        DEBUG_PRINT("APPROACH ");

        if (distance >= (uint16_t)((uint32_t)setpoint * 200 / 100)) {
            newstate = STATE_SLEEPING;
        }
        else if (distance >= (uint16_t)((uint32_t)setpoint * 150 / 100)) {
            newstate = STATE_WAKEUP;
        }
        else if (distance >= (uint16_t)((uint32_t)setpoint)) {
            newstate = STATE_HAPPY;
        }
        else {
            newstate = STATE_ANGRY;
        }

    } else {
        // The previous distance is closer than the current distance, so the subject moved away.
        // When moving away, stretch the windows to prevent dither around a given state.
        DEBUG_PRINT("AWAY     ");

        if (distance >= (uint16_t)((uint32_t)setpoint * 250 / 100)) {
            newstate = STATE_SLEEPING;
        }
        else if (distance >= (uint16_t)((uint32_t)setpoint * 200 / 100)) {
            newstate = STATE_WAKEUP;
        }
        else if (distance >= (uint16_t)((uint32_t)setpoint * 150 / 100)) {
            newstate = STATE_HAPPY;
        }
        else {
            newstate = STATE_ANGRY;
        }
    }

#if defined DEBUG
    if (newstate != currentstate) {
        DEBUG_PRINT("(%s -> %s)\r\n", statestr[currentstate], statestr[newstate]);
    }
    else
    {
        DEBUG_PRINT("(%s)\r\n", statestr[newstate]);
    }
#endif

    return newstate;
}


// If the distance is close to the angry setpoint, we could warn.
// Warning only happens on approach.
bool warn_for_approach(uint16_t distance, uint16_t setpoint)
{
    bool retval = false;

    if (distance < (uint16_t)((uint32_t)setpoint * 140 / 100)) {
        retval = true;
    }

    return (retval);
}


int main(void)
{
    // These variables control housekeeping.
    uint32_t    ledlast = 0;            // Last time the LED changed state
    uint32_t    buttonlast = 0;         // Last time the button was checked
    uint32_t    uartlast = 0;           // Last time the UART was polled
    uint8_t     buttonheld = 0;         // How many polling cycles was the button held for

    bool        uartactive = false;     // Start by needing to poll the UART
    bool        dataread = false;       // Indicates whether data was read

    // These variables control mood, mood state change, and whether the LEDs are active.
    MOOD        mood = MOOD_HAPPY;          // Start in a 'happy' mood
    MOOD_STATE  moodstate = STATE_SLEEPING; // Start in a 'sleeping' state
    bool        awake = false;          // Start by being asleep (LEDs inactive))
    bool        warned = false;         // Start by stating we have not warned for being too close

    // These variables control actions (what to do and when).
    uint16_t    blinkaction = 0;        // A random value that initiates the act of blinking or winking
    uint32_t    blinklast = 0;          // The last time a blink or wink happened
    uint32_t    actionlast = 0;         // The last time an action was taken
    uint32_t    timeoutlast = 0;        // The last time a timeout action was noted

    // These variables control distance measurement.
    uint16_t    setpoint = 0;           // The distance setpoint for happy <-> angry transition and scale for state changes
    uint16_t    distance = 0xFFFF;      // The current measured distance.
    uint16_t    distancelast = 0xFFFF;  // The previously measured distance, used to determine direction (approaching, moving away)

    // How often to poll.
    uint32_t    polltime = SENSOR_POLL_MS;


    // Initialize system resources.
    SYSTEM_Initialize();
    DEE_Init();
    SysTick_Init();
    SYS_LED_SetLow();

    // Initialize the LEDs and sequence processor.
    led_init();
    sequences_init();

    // Reset and test the LEDs.
    run_sequence(RESET);
    SysTick_DelayMS(500);
    run_sequence(TEST);
    SysTick_DelayMS(500);
    run_sequence(RESET);
    SysTick_DelayMS(500);

    // Read stored status from EEPROM.
    DEE_RETURN_STATUS status;
    status = DEE_Read(DEE_ANGRY_DISTANCE_ADDRESS, &setpoint);

    if (DEE_NO_ERROR == status) {
        DEBUG_PRINT("Distance read from EEPROM as %d\r\n", setpoint);
    } else {
        setpoint = DEFAULT_DISTANCE;
        DEBUG_PRINT("Using default distance setpoint of %d\r\n", setpoint);
    }

    // Initialize the last-time things happened to 'now'.
    ledlast = SysTick_GetMillis();
    buttonlast = SysTick_GetMillis();
    uartlast = SysTick_GetMillis();
    actionlast = SysTick_GetMillis();

    // Run the power-up (coming online) sequence, because it's cool.
    run_sequence(POWERUP);

    // Pseudo-randomize the random function.
    srand(SysTick_GetMillis());

    // Go to sleep by default.
    run_sequence(SLEEP_HAPPY);

    // Flush the UART to clear any noise or previously stored data.
    DEBUG_PRINT("Flushing UART");
    while (UART1_IsRxReady()) {
        UART1_Read();
        DEBUG_PRINT(".");
    }
    DEBUG_PRINT("\r\n");

    // Main polling loop.
    while(1)
    {
        // Update the LED to show life on the board.
        uint32_t now = SysTick_GetMillis();
        if ((now - ledlast) >= LED_TICK_TIME_MS)
        {
            ledlast = now;
            SYS_LED_Toggle();
        }

        // Check the button for reset and setting distance setpoint.
        if ((now - buttonlast) > BUTTON_DEBOUNCE_TIME_MS) {
            buttonlast = now;

            // If the button was depressed..
            if (0 == SW_GetValue()) {
                buttonheld++;

                // Hold the button for N check periods before declaring a reset.
                if (buttonheld == RESET_CHECK_PERIODS) {
                    DEBUG_PRINT("Resetting\r\n");

                    // Let the user know.
                    led_setcolorall(0x00, 0x00, 0x00, true);
                    SysTick_DelayMS(100);
                    led_setcolorall(0x00, 0xFF, 0x00, true);
                    SysTick_DelayMS(1000);

                    // Initiate a software reset.
                    __asm__("reset");
                }

            } else {
                // If the button was held for long enough and then released, set the distance setpoint.
                if (buttonheld > PROGRAM_CHECK_PERIODS) {

                    // Is the setpoint valid?
                    // The setpoint must be less than half the maximum for the state machine to function correctly.
                    if (distance < (MAX_DISTANCE / 2)) {
                        DEBUG_PRINT("Storing distance setpoint as %u\r\n", distance);

                        if ((status = DEE_Write(DEE_ANGRY_DISTANCE_ADDRESS, distance)) != DEE_NO_ERROR) {
                            DEBUG_PRINT("Failed to write EEPROM (%d)\r\n", status);
                        } else {
                            // Run the 'set' sequence.
                            run_sequence(SET_DISTANCE);

                            // Restore the mood.
                            if (MOOD_HAPPY == mood) {
                                run_sequence(BE_HAPPY);
                            } else {
                                run_sequence(GET_ANGRY);
                            }

                            // Use the distance as the new setpoint.
                            setpoint = distance;
                        }
                    } else {
                        DEBUG_PRINT("Invalid distance (%u)\r\n", distance);

                        // Run the 'reject' sequence.
                        run_sequence(REJECT_DISTANCE);

                        // Restore the mood.
                        if (MOOD_HAPPY == mood) {
                            run_sequence(BE_HAPPY);
                        } else {
                            run_sequence(GET_ANGRY);
                        }
                    }
                }

                // Reset button-held count.
                buttonheld = 0;
            }
        }

        // While happy, we pseudo-randomly blink or wink.
        if ((true == awake) && (MOOD_HAPPY == mood)) {
            blinkaction = rand() % ACTION_RANGE;

            //DEBUG_PRINT("action: %u\r\n", blinkaction);

            // Only wink or blink if it's been at least a while since the last wink.
            if ((now - blinklast) > BLINK_TIMEOUT_MS) {
                // Wink threshold.
                if (blinkaction <= WINK_THRESHOLD) {
                    // Wink.  Flip a coin as to which eye.
                    if (blinkaction & 1) {
                        run_sequence(WINK_LEFT_HAPPY);
                    } else {
                        run_sequence(WINK_RIGHT_HAPPY);
                    }

                    // Remember the last time we winked to slow down winking.
                    blinklast = now;
                }

                // Blink threshold, or blink timeout.
                else if ((blinkaction <= BLINK_THRESHOLD) || ((now - blinklast) > BLINK_MAXIMUM_TIMEOUT_MS)) {
                    if (blinkaction <= DOUBLE_BLINK_THRESHOLD) {
                        // Double-blink.
                        run_sequence(BLINK_HAPPY);
                    }

                    // Blink.
                    run_sequence(BLINK_HAPPY);

                    // Remember the last time we blinked, to slow down winking.
                    blinklast = now;
                }
            }

            // If we are not angry and have not previously warned,
            // see if the distance is close enough to warn.
            // If so, warn the approacher.
            if ((STATE_ANGRY != moodstate) && (false == warned)) {
                warned = warn_for_approach(distance, setpoint);

                if (true == warned) {
                    DEBUG_PRINT("       WARNING\r\n");
                    run_sequence(WARN);
                }
            }
        }

        // ======================================================
        // Poll the UART.
        // ======================================================
        if (false == uartactive) {
            // Every so often, send a poll to the UART.
            if ((now - uartlast) > polltime) {
                //DEBUG_PRINT("Polling UART\r\n");
                uartlast = now;
                uartactive = true;

                // Send the command for distance (0x55).
                uint8_t cmd = 0x55;
                if (UART1_IsTxReady()) {
                    UART1_Write(cmd);
                    //DEBUG_PRINT("UART Ready.\r\n");
                }
                else {
                    DEBUG_PRINT("Sensor UART Not Ready!\r\n");
                }
            }

        } else {
            // Poll the UART for data.  Two bytes are expected.
            if (UART1_IsRxReady()) {
                #define SENSOR_DATA_BYTES 2
                uint8_t data[SENSOR_DATA_BYTES];
                uint8_t bytesread = 0;

                // Read the UART.
                for (int i = 0; i < SENSOR_DATA_BYTES; i++) {
                    if (UART1_IsRxReady()) {
                        data[i] = UART1_Read();
                        bytesread++;

                        // Provide a short delay to match the 9600bps clock rate.
                        // This allows the UART to be ready when we call.
                        SysTick_DelayUS(100);
                    }
                }

                if (SENSOR_DATA_BYTES == bytesread) {
                    // Build the distance value.
                    distance = (data[0] << 8) | data[1];
                    //DEBUG_PRINT("%5u\r\n", distance);

                } else {
                    DEBUG_PRINT("Only received %d sensor bytes!\r\n", bytesread);
                }

                // Indicate the UART interchange is done.
                uartactive = false;

                // Indicate data was read from the sensor.
                dataread = true;
            }

        } // end UART check

#if 0
        // Not doing this now, but could help save a little power, maybe.
        // Decide how often to check for state.
        if (false == awake) {
            // Check less often while asleep.
            polltime = SLEEPING_SENSOR_POLL_MS;
        } else {
            // Check more often while awake.
            polltime = SENSOR_POLL_MS;
        }
#endif

        // If data was read, see what's changed.
        if (true == dataread)
        {
            // ======================================================
            // Set the mood based on distance.
            // ======================================================
            if (distance < MAX_DISTANCE)
            {
                // Timeout has not occurred.
                timeoutlast = now;

                // Limit mood changes to prevent pulsing.
                if ((now - actionlast) >= ACTION_THRESHOLD_MS) {
                    MOOD_STATE newstate = moodstate;\

                    // Get the new state based on distance and the previous distance.
                    // The sensor has a bit of jitter, so only get a new state if the
                    // change in distance is large enough.
                    if (abs(distancelast - distance) > SENSOR_JITTER) {
                        newstate = get_newstate(distance, distancelast, setpoint, moodstate);
                        distancelast = distance;
                    }

                    if (newstate != moodstate) {
                        // State change means update the last time an action was taken.
                        actionlast = now;

                        // Depending on the new state and the current state, take a new action.
                        switch (newstate)
                        {
                            // Go to sleep.
                            case STATE_SLEEPING:
                            {
                                // No longer awake.
                                awake = false;

                                // Clear the 'warned you' flag.
                                warned = false;

                                switch (moodstate)
                                {
                                    // if we were waking up or happy, go back to sleep as blue.
                                    case STATE_WAKEUP:
                                    case STATE_HAPPY:
                                    {
                                        run_sequence(SLEEP_HAPPY);
                                    }
                                    break;

                                    // If angry, go to sleep as red.
                                    // But return to the happy state.
                                    // If we wake up angry, we'll go back to being angry.
                                    case STATE_ANGRY:
                                    {
                                        run_sequence(SLEEP_ANGRY);
                                        mood = MOOD_HAPPY;
                                    }

                                    default:
                                    break;
                                }
                            }
                            break;

                            // Wake up.
                            case STATE_WAKEUP:
                            {
                                // Awake.
                                awake = true;

                                // Clear the 'warned you' flag.
                                warned = false;

                                switch (moodstate)
                                {
                                    // If we were asleep, wake up happy.
                                    case STATE_SLEEPING:
                                    {
                                        run_sequence(WAKEUP_HAPPY);
                                    }
                                    break;

                                    // If we were angry, go back to being happy.
                                    case STATE_ANGRY:
                                    {
                                        run_sequence(BE_HAPPY);
                                        mood = MOOD_HAPPY;
                                    }

                                    // If we were happy or already waking up, nothing else to do.
                                    case STATE_HAPPY:
                                    default:
                                    break;
                                }
                            }
                            break;

                            // Be happy.
                            case STATE_HAPPY:
                            {
                                // Awake.
                                awake = true;

                                switch (moodstate)
                                {
                                    // If we were asleep, wake up happy.
                                    case STATE_SLEEPING:
                                    {
                                        run_sequence(WAKEUP_HAPPY);
                                    }
                                    break;

                                    // If we were angry, go back to being happy.
                                    case STATE_ANGRY:
                                    {
                                        run_sequence(BE_HAPPY);
                                        mood = MOOD_HAPPY;
                                    }
                                    break;

                                    // If we were waking up or are happy, nothing to do.
                                    default:
                                    break;
                                }
                            }
                            break;

                            // Get angry.
                            case STATE_ANGRY:
                            {
                                // We are angry no matter what state we were in before.
                                mood = MOOD_ANGRY;

                                // Awake.
                                awake = true;

                                // Assume 'warned'.
                                warned = true;

                                switch (moodstate)
                                {
                                    // If we were asleep, wake up angry.
                                    case STATE_SLEEPING:
                                    {
                                        run_sequence(WAKEUP_ANGRY);
                                    }
                                    break;

                                    // All other states result in a change to being in a bad mood.
                                    default:
                                    {
                                        run_sequence(GET_ANGRY);
                                    }
                                    break;
                                }
                            }
                            break;

                            default:
                            break;
                        }

                        // Save the state as the new state.
                        moodstate = newstate;
                    }
                }
            }
            else
            {
                DEBUG_PRINT("%5u: Checking for timeout (%s)\r\n", distance, (true == awake) ? "awake" : "sleeping");

                // The distance is outside the valid window or the 'no reading' value.
                // Check for timeout to reset to a sleeping state (farthest away).
                if ((now - timeoutlast) >= TIMEOUT_MS) {
                    timeoutlast = now;

                    DEBUG_PRINT("TIMED OUT (%s)\r\n", (true == awake) ? "awake" : "sleeping");

                    // Go back to the SLEEPING state.
                    moodstate = STATE_SLEEPING;

                    // If previously awake, run the 'sleep' sequence.
                    if (true == awake) {
                        if (MOOD_ANGRY == mood) {
                            run_sequence(SLEEP_ANGRY);
                        } else {
                            run_sequence(SLEEP_HAPPY);
                        }
                    }

                    // No longer awake.
                    awake = false;
                    warned = false;
                }
            }

            // Indicate that we need new data.
            dataread = false;
        }

        // Take a short pause to lower CPU load.
        SysTick_DelayMS(50);

    } // endwhile
}
