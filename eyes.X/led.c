/* 
 * File:   led.h
 * Author: sstru
 *
 * Created on August 27, 2024, 5:54 PM
 */

#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "mcc_generated_files/pwm/sccp3.h"
#include "systick.h"
#include "led.h"
#include "sequences.h"

#include <stdio.h>
#include <string.h>

// Defines RGB colors for each enumerated LED color.
static LED_COLOR_RGB led_colors[LED_COLOR_MAX_COLORS] = {
    {{{0xFF, 0xFF, 0xFF, 0x00}}},   // WHITE
    {{{0x00, 0xFF, 0x00, 0x00}}},   // RED
    {{{0x66, 0xFF, 0x00, 0x00}}},   // ORANGE
    {{{0xCC, 0xFF, 0x00, 0x00}}},   // YELLOW
    {{{0xFF, 0xCC, 0x00, 0x00}}},   // LIGHT_YELLOW
    {{{0xFF, 0x00, 0x00, 0x00}}},   // GREEN
    {{{0xFF, 0x00, 0x66, 0x00}}},   // SPRING_GREEN
    {{{0xFF, 0x00, 0xCC, 0x00}}},   // TURQUOISE_BLUE
    {{{0xCC, 0x00, 0xFF, 0x00}}},   // SKY_BLUE
    {{{0x66, 0x00, 0xFF, 0x00}}},   // DODGER_BLUE
    {{{0x00, 0x00, 0xFF, 0x00}}},   // BLUE
    {{{0x00, 0xFF, 0xFF, 0x00}}}    // PINK
};

// Data for each LED.
LED_OUTPUT led_output;

// Program all LEDs with the given bit value by pumping out
// 1 or 0 at the correct pulse width for each bit.  The callback
// updates the PWM duty cycle dynamically for each bit.
static void led_callback(void)
{
    register LED_OUTPUT *pLED = &led_output;
    register uint8_t  bitpos = pLED->bitpos;
    register uint8_t  ledidx = pLED->ledidx;

    // Turn on or off to set bit 1 or 0.
    if (bitpos < LED_DATA_BITS) {
        register uint8_t ledval = pLED->leds[ledidx].color.raw[bitpos >> 3];
        register uint8_t mask = (1 << (bitpos & 0x7));

        if (ledval & mask)
            CCP3RB = BIT_1;
        else
            CCP3RB = BIT_0;

    } else {
        // Insert inter-frame dwell time.
        CCP3RB = BIT_OFF;
    }

    // Advance to the next bit.
    bitpos++;
    if (bitpos == LED_MAX_BITS) {
        bitpos = 0;
        ledidx++;
    }
    
    // When all LEDs have been addressed, turn off the PWM and mark 'not-busy'.
    if (ledidx == LED_COUNT) {
        pLED->busy = false;
        CCP3CON1Lbits.CCPON = 0;
    }

    // Save for next time.
    pLED->bitpos = bitpos;
    pLED->ledidx = ledidx;
}


void led_init(void)
{
    PWM_LED_Disable();
    memset(&led_output, 0, sizeof(LED_OUTPUT));

    // Set up the LED callback and initial state.
    PWM_LED_PWM_CallbackRegister(led_callback);
}

// ===============================================================
// LED Control
// ===============================================================

// Reverse a byte's endian-ness.
inline uint8_t reverse(uint8_t byteval) {
   byteval = (byteval & 0xF0) >> 4 | (byteval & 0x0F) << 4;
   byteval = (byteval & 0xCC) >> 2 | (byteval & 0x33) << 2;
   byteval = (byteval & 0xAA) >> 1 | (byteval & 0x55) << 1;

   return byteval;
}

// Calculate a color intensity value.
inline uint8_t intensity(uint8_t rgbval, float intensity)
{
    float newval = (float)rgbval * intensity;
    return (uint8_t)newval;
}

// Set the LED color for all LEDs.
void led_setcolorall(uint8_t red, uint8_t green, uint8_t blue, bool enable)
{
    // Wait for the LED driver to complete its current data set.
    while (true == led_output.busy);
    
    // Start a new data set.
    if (true == enable) {
        led_output.busy = true;
    }
    
    for (uint8_t ledidx = 0; ledidx < LED_COUNT; ledidx++) {
        // Store the values in reversed-endian order for simplicity
        // when putting it out on the wire.
        led_output.leds[ledidx].color.rgb.R = reverse(red);
        led_output.leds[ledidx].color.rgb.G = reverse(green);
        led_output.leds[ledidx].color.rgb.B = reverse(blue);
        led_output.leds[ledidx].color.rgb.p = 0;
    }

    led_output.bitpos = 0;
    led_output.ledidx = 0;

    // Enable to trigger the color change.
    CCP3CON1Lbits.CCPON = enable;
}

// Set the LED color for a single LED, leaving the rest alone.
void led_setcolordirect(uint8_t ledid, uint8_t red, uint8_t green, uint8_t blue)
{
    register RGB_COLORS *c = &led_output.leds[ledid].color.rgb;

    // Store the values as given.
    c->R = red;
    c->G = green;
    c->B = blue;
}

// Reset the bit and LED positions.
void led_resetbitpos(void)
{
    led_output.bitpos = 0;
    led_output.ledidx = 0;
}


// Set the LED color for a single LED, leaving the rest alone.
void led_setcolor(uint8_t ledid, uint8_t red, uint8_t green, uint8_t blue, bool enable)
{
    // Wait for the LED driver to complete its current data set.
    while (true == led_output.busy);
    
    // Start a new data set.
    if (true == enable) {
        led_output.busy = true;
    }

    // Store the values in reversed-endian order for simplicity
    // when putting it out on the wire.
    led_output.leds[ledid].color.rgb.R = reverse(red);
    led_output.leds[ledid].color.rgb.G = reverse(green);
    led_output.leds[ledid].color.rgb.B = reverse(blue);
    led_output.leds[ledid].color.rgb.p = 0;

    led_output.bitpos = 0;
    led_output.ledidx = 0;

    // Enable to trigger the color change.
    CCP3CON1Lbits.CCPON = enable;
}

// Enable/disable the PWM.
void led_pwmenable(bool enable)
{
    // Set busy state.
    led_output.busy = enable;
    
    // Enable to trigger the color change.
    CCP3CON1Lbits.CCPON = enable;
}