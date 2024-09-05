/* sequences.c
 * 
 * Executes sequences of LED settings to control LEDs.
 */

#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "sequences.h"
#include "systick.h"
#include <stdio.h>
#include <string.h>


#define SEQ_TIMER_PERIOD_USECS (50U)

extern LED_OUTPUT led_output;
extern SEQUENCE sequences[];

static SEQUENCE_CONTROL seq_control;

// Sequencer callback for the SCCP timer.
// The sequence timer runs every 25 usecs.
void sequence_executor(void)
{
    IO_RB0_Toggle();
    
    // If the LED handler is busy, we can't do anything.
    if (true == led_output.busy) {
        IO_RB0_Toggle();
        return;
    }
   
    register SEQUENCE_CONTROL *pSeq = &seq_control;
    register LED_STEP *pStep = &pSeq->step;
            
    // If waiting, wait.
    IO_RD8_Toggle();
    if (pSeq->delay < pStep->delay) {
        pSeq->delay += SEQ_TIMER_PERIOD_USECS;
        return;
    }

    // Reset the delay value, accounting for the minimum LED time as measured empirically.
    pSeq->delay = 550;
    
    // Set the color for the LEDs in the mask.
    register uint8_t red = reverse(pStep->leds.color.r.value);
    register uint8_t green = reverse(pStep->leds.color.g.value);
    register uint8_t blue = reverse(pStep->leds.color.b.value);

    for (int i = 0; i < LED_COUNT; i++) {
        if (pStep->mask & (1 << i)) {
            led_setcolordirect(i, red, green, blue);
        }
    }

    led_resetbitpos();
    
    // Adjust for the next time.
    register LED_COLOR_VALUE *color = &pStep->leds.values[0];
    for (int j = 0; j < LED_DATA_BYTES; j++) {
        if ((color->value + color->step) > 255) color->value = 255;
        if ((color->value + color->step) < 0) color->value = 0;
        else color->value += color->step;
        
        color++;
    }

    // If the step has completed, look to see if there is another step to execute.
    if (0 == --pStep->count) {
        if (++pSeq->index < pSeq->count) {
            memcpy(&pSeq->step, &pSeq->steps[pSeq->index], sizeof(LED_STEP));
            pSeq->delay = 0;
            
        } else {
            // No longer busy.
            pSeq->busy = false;
        }
    }

    // Start the LED output.
    led_pwmenable(true);

    IO_RB0_Toggle();
}


// Initialize the sequence processor.
void sequences_init(void)
{
    memset(&seq_control, 0, sizeof(seq_control));
}


// Super low effort delay for waiting on sequence steps.
#define DELAY_CLOCKS    11
void sequence_delay(uint16_t usec)
{
    uint16_t d = 0;
    while (++d < (usec * DELAY_CLOCKS));
}


// Start a sequence.
bool run_sequence(SEQUENCE_ID id)
{
    bool retval = false;
    
    if (id < MAX_SEQUENCES) {
        while (true == seq_control.busy);
        seq_control.busy = true;

        // Select the sequence.
        seq_control.steps = sequences[id].steps;
        seq_control.count = sequences[id].count;
        seq_control.index = 0;

        memcpy(&seq_control.step, &seq_control.steps[0], sizeof(LED_STEP));
        seq_control.delay = 0;
       
        retval = true;

        DEBUG_PRINT("  Seq: %s\r\n", sequences[id].desc);
        
        // Run the stepper.
        while (seq_control.busy) {
            sequence_executor();
            sequence_delay(SEQ_TIMER_PERIOD_USECS);
        }
    }
    
    return retval;
}