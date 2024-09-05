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

/* What I want is a way to control a pattern of LEDs as a sequence.
 * If each LED has a value assigned (R/G/B/intensity) I can set them individually.
 * I have to wait 25 microseconds between PWM activations.
 * Each time I program I need to update the output array with the new value.
 * 
 * Each step does things.
 * For example I want to light up LED4 from 0 - 128, then start lighting up LED3/5 while LED4 continues to light up to 255.
 * 
 * Possible solution: [
 *                      (count, mask, delay, (value, step), (value, step), (value, step)),
 *                      (count, mask, delay, (value, step), (value, step), (value, step)),
 *                      (count, mask, delay, (value, step), (value, step), (value, step)),
 *                      ...,
 *                      (0, ...) // Signifies end of sequence
 *                    ]
 * Count indicates the number of times to execute the step.
 * Mask applies to all LEDs, up to 16.
 * Delay is the time between steps.
 * Each value/step pair handles the setting for r/g/b
 *   Value is the initial value (0-255)
 *   Step is the change (as a float)
 * First entry sets the initial value with a 1 count
 * 
 * Really, want to target reaching a color value in a period of time, then doing things
 * at that value without changing it, or transitioning to another value.
 */

// Note: The effective minimum delay time is 600 usec, as that's how long it takes the 
// LED PWM to clock out 16 LEDs worth of data.

// Reset.
LED_STEP reset[] = 
{
    { .count = 5, .mask = 0xFFFF, .delay = 1000,
      .leds = { .color.r = {0, 0}, .color.g = {0, 0}, .color.b = {0, 0} }
    }
};

// Test (all white))
LED_STEP test[] = 
{
    { .count = 64, .mask = 0x0101, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x0202, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x0404, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x0808, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x1010, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x2020, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x4040, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
    { .count = 64, .mask = 0x8080, .delay = 550,
      .leds = { .color.r = {0, 4.0}, .color.g = {0, 4.0}, .color.b = {0, 4.0} }
    },
};

// Power up as blue.
LED_STEP powerup[] = 
{
    { .count = 256, .mask = 0xFFFF, .delay = 5000,
      .leds = { .color.r = {0, 0}, .color.g = {0, 0.3}, .color.b = {0, 1.0} }
    }
};

// Wakeup as blue.
LED_STEP wakeupblue[] = 
{
    { .count = 32, .mask = 0x1010, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x2828, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x4444, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x8282, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0101, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
};

// Wakeup as red.
LED_STEP wakeupred[] = 
{
    { .count = 32, .mask = 0x1010, .delay = 550,
      .leds = { .color.r = {0, 8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x2828, .delay = 550,
      .leds = { .color.r = {0, 8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x4444, .delay = 550,
      .leds = { .color.r = {0, 8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x8282, .delay = 550,
      .leds = { .color.r = {0, 8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x0101, .delay = 550,
      .leds = { .color.r = {0, 8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
};

// Sleep as blue.
LED_STEP sleepblue[] = 
{
    { .count = 32, .mask = 0x0101, .delay = 750,
      .leds = { .color.r = {0, 0}, .color.g = {0, -2.4}, .color.b = {0, -8.0} }
    },
    { .count = 32, .mask = 0x8282, .delay = 750,
      .leds = { .color.r = {0, 0}, .color.g = {0, -2.4}, .color.b = {0, -8.0} }
    },
    { .count = 32, .mask = 0x4444, .delay = 750,
      .leds = { .color.r = {0, 0}, .color.g = {0, -2.4}, .color.b = {0, -8.0} }
    },
    { .count = 32, .mask = 0x2828, .delay = 750,
      .leds = { .color.r = {0, 0}, .color.g = {0, -2.4}, .color.b = {0, -8.0} }
    },
    { .count = 32, .mask = 0x1010, .delay = 750,
      .leds = { .color.r = {0, 0}, .color.g = {0, -2.4}, .color.b = {0, -8.0} }
    },
};

// Sleep as red.
LED_STEP sleepred[] = 
{
    { .count = 32, .mask = 0x0101, .delay = 750,
      .leds = { .color.r = {0, -8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x8282, .delay = 750,
      .leds = { .color.r = {0, -8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x4444, .delay = 750,
      .leds = { .color.r = {0, -8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x2828, .delay = 750,
      .leds = { .color.r = {0, -8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x1010, .delay = 750,
      .leds = { .color.r = {0, -8.0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
};

// Transition blue to red.
LED_STEP angry[] =
{
    { .count = 128, .mask = 0xFFFF, .delay = 700,
      .leds = { .color.r = {0, 2.0}, .color.g = {0x4D, -0.6}, .color.b = {0xFF, -2.0} }
    }
};

// Transition blue to red to blue.
LED_STEP warn[] =
{
    { .count = 32, .mask = 0xFFFF, .delay = 1000,
      .leds = { .color.r = {0, 8.0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 100, .mask = 0xFFFF, .delay = 1000,
      .leds = { .color.r = {0xFF, 0}, .color.g = {0, 0}, .color.b = {0, 0} }
    },
    { .count = 256, .mask = 0xFFFF, .delay = 2500,
      .leds = { .color.r = {0xFF, -1.0}, .color.g = {0, 0.3}, .color.b = {0, 1.0} }
    }
};

// Transition red to blue.
LED_STEP happy[] =   
{
    { .count = 256, .mask = 0xFFFF, .delay = 1500,
      .leds = { .color.r = {0xFF, -1.0}, .color.g = {0, 0.3}, .color.b = {0, 1.0} }
    }
};


// Blink blue
LED_STEP blinkblue[] =   
{
    { .count = 32, .mask = 0x0101, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x8282, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x4444, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x2828, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x1010, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 20, .mask = 0xFFFF, .delay = 1500,
      .leds = { .color.r = {0, 0}, .color.g = {0, 0.0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x1010, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x2828, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x4444, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x8282, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0101, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
};

// Wink left blue
LED_STEP winkleftblue[] =   
{
    { .count = 32, .mask = 0x0001, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x0082, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x0044, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x0028, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x0010, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 200, .mask = 0x00FF, .delay = 1000,
      .leds = { .color.r = {0, 0}, .color.g = {0, 0.0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x0010, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0028, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0044, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0082, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0001, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
};


// Wink right blue
LED_STEP winkrightblue[] =   
{
    { .count = 32, .mask = 0x0100, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x8200, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x4400, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x2800, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 32, .mask = 0x1000, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0x4D, -2.4}, .color.b = {0xFF, -8.0} }
    },
    { .count = 200, .mask = 0xFF00, .delay = 1000,
      .leds = { .color.r = {0, 0}, .color.g = {0, 0.0}, .color.b = {0, 0} }
    },
    { .count = 32, .mask = 0x1000, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x2800, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x4400, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x8200, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
    { .count = 32, .mask = 0x0100, .delay = 550,
      .leds = { .color.r = {0, 0}, .color.g = {0, 2.4}, .color.b = {0, 8.0} }
    },
};

// Set distance.
LED_STEP set_distance[] =   
{
    { .count = 256, .mask = 0xFFFF, .delay = 4000,
      .leds = { .color.r = {0xFF, -1.0}, .color.g = {0, 0}, .color.b = {0xFF, -1.0} }
    },
    { .count = 100, .mask = 0xFFFF, .delay = 1000,
      .leds = { .color.r = {0, 0}, .color.g = {0, 0}, .color.b = {0, 0} }
    }
};


// The available sequences.
SEQUENCE sequences[MAX_SEQUENCES] =
{
    {(sizeof(reset) / sizeof(LED_STEP)), "Reset", reset},
    {(sizeof(test) / sizeof(LED_STEP)), "Test", test},
    {(sizeof(powerup) / sizeof(LED_STEP)), "Powerup", powerup},
    {(sizeof(wakeupblue) / sizeof(LED_STEP)), "Happy Wakeup", wakeupblue},
    {(sizeof(wakeupred) / sizeof(LED_STEP)), "Angry Wakeup", wakeupred},
    {(sizeof(sleepblue) / sizeof(LED_STEP)), "Happy Sleep", sleepblue},
    {(sizeof(sleepred) / sizeof(LED_STEP)), "Angry Sleep", sleepred},
    {(sizeof(angry) / sizeof(LED_STEP)), "Angry", angry},
    {(sizeof(warn) / sizeof(LED_STEP)), "Warn", warn},
    {(sizeof(happy) / sizeof(LED_STEP)), "Happy", happy},
    {(sizeof(blinkblue) / sizeof(LED_STEP)), "Blink", blinkblue},
    {(sizeof(winkleftblue) / sizeof(LED_STEP)), "Wink Left", winkleftblue},
    {(sizeof(winkrightblue) / sizeof(LED_STEP)), "Wink Right", winkrightblue},
    {(sizeof(set_distance) / sizeof(LED_STEP)), "Set Distance", set_distance},
};
