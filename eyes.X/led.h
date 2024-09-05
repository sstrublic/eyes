/* 
 * File:   led.h
 * Author: sstru
 *
 * Created on August 27, 2024, 5:54 PM
 */

#ifndef LED_H
#define	LED_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stddef.h>
#include <stdbool.h>

// LED control definitions

#define LED_COUNT      (16)
#define LED_DATA_BYTES (3)                  // 8 G/R/B
#define LED_DATA_BITS  (LED_DATA_BYTES * 8)
#define LED_MAX_BITS   (LED_DATA_BITS + 2)  // 8 G/R/B and 2 inter-frame bits at the end
   
// Defines PWM widths for 0 and 1 bits.
// The SCCP runs at 800KHz = 1250 ns/pulse.  The duty cycle scalar is 0 - 126 (63 is the midpoint as 50% "on").
// For a '0' bit, the output needs to be on for 400ns and off for 850ns.  This is (400/1250) = .32 * 126 = 41 = 0x29.
// For a '1' bit, the output needs to be on for 850ns and off for 400ns.  This is (850/1250) = .68 * 126 = 85 = 0x55.
#define BIT_0         (0x29)
#define BIT_1         (0x55)

// Turns the PWM all the way down to provide inter-frame time.
#define BIT_OFF       (0x00)

// LED colors as controlled by the host.
typedef enum {
    LED_COLOR_WHITE = 0,
    LED_COLOR_RED,
    LED_COLOR_ORANGE,
    LED_COLOR_YELLOW,
    LED_COLOR_LIGHT_YELLOW,
    LED_COLOR_GREEN,
    LED_COLOR_SPRING_GREEN,
    LED_COLOR_TURQUOISE_BLUE,
    LED_COLOR_SKY_BLUE,
    LED_COLOR_DODGER_BLUE,
    LED_COLOR_BLUE,
    LED_COLOR_PINK,
    LED_COLOR_MAX_COLORS
} LED_COLORS;


typedef struct {
    uint32_t G: 8;  // Green
    uint32_t R: 8;  // Red
    uint32_t B: 8;  // Blue
    uint32_t p: 8;  // pad
} RGB_COLORS;

typedef struct LED_COLOR_RGB {
    union {
        RGB_COLORS rgb;
        uint8_t raw[4];       // Raw data - pad/B/R/G
    } color;
    
} LED_COLOR_RGB;


// LED output data.
typedef struct LED_OUTPUT {

    LED_COLOR_RGB   leds[LED_COUNT];

    // Control values for clocking out the data.
    bool            busy;
    uint8_t         bitpos;
    uint8_t         ledidx;
    uint8_t         dwell;
    
} LED_OUTPUT;

// Control data for LED management.
typedef struct LED_CONTROL {
    struct
    {
        LED_COLORS      current;    // Current color being displayed
        LED_COLORS      new;        // New color to display
    } color;

    // The current color being displayed.
    LED_COLOR_RGB       current_color;

    uint32_t            next_check; // Next update time

} LED_CONTROL;


// Functions
void led_init(void);

// Reverse a byte's endian-ness.
extern inline uint8_t reverse(uint8_t byteval);


// Calculate a color intensity value.
extern inline uint8_t intensity(uint8_t rgbval, float intensity);


void led_setcolorvalues(LED_COLORS color);
void led_setcolor(uint8_t ledid, uint8_t red, uint8_t green, uint8_t blue, bool enable);
void led_setcolorall(uint8_t red, uint8_t green, uint8_t blue, bool enable);

void led_setcolordirect(uint8_t ledid, uint8_t red, uint8_t green, uint8_t blue);
void led_resetbitpos(void);

void led_pwmenable(bool enable);

#ifdef	__cplusplus
}
#endif

#endif	/* LED_H */

