/* 
 * File:   sequences.h
 * Author: sstru
 *
 * Created on August 29, 2024, 10:29 AM
 */

#ifndef SEQUENCES_H
#define	SEQUENCES_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "led.h"

#define DEBUG

#if defined (DEBUG)
#define DEBUG_PRINT(...) printf(__VA_ARGS__)
#else
#define DEBUG_PRINT(...)
#endif

    
// An LED color value.
typedef struct {
    float   value;      // Value / initial value
    float   step;       // Step (increment/decrement) for this color

} LED_COLOR_VALUE;


typedef struct {
    uint16_t count;     // Number of executions of this step
    uint16_t mask;      // Mask for LEDs (0-15) to apply for this step
    uint32_t delay;     // delay (in usec) between each execution)
    
    // LED colors.
    union {
        struct {
            LED_COLOR_VALUE r;
            LED_COLOR_VALUE g;
            LED_COLOR_VALUE b;
        } color;
        
        LED_COLOR_VALUE values[LED_DATA_BYTES];
    } leds;   
    
} LED_STEP;     


// Sequences.
typedef enum {
    RESET = 0,
    TEST,
    POWERUP,
    WAKEUP_HAPPY,
    WAKEUP_ANGRY,
    SLEEP_HAPPY,
    SLEEP_ANGRY,
    GET_ANGRY,
    WARN,
    BE_HAPPY,
    BLINK_HAPPY,
    WINK_LEFT_HAPPY,
    WINK_RIGHT_HAPPY,
    SET_DISTANCE,
    MAX_SEQUENCES,
            
} SEQUENCE_ID;

typedef struct {
    uint16_t  count;    // Number of steps
    char *    desc;     // Description
    LED_STEP* steps;    // Steps
} SEQUENCE;


typedef struct {
    
    bool     busy;      // Is the sequencer active

    uint32_t delay;     // Current delay value
    LED_STEP step;      // Copy of the current step being executed (as it will be modified)
    
    LED_STEP *steps;    // Pointer to steps
    uint16_t count;     // Number of steps to execute
    uint16_t index;     // Current index in the sequence of steps
    
} SEQUENCE_CONTROL;


void sequences_init(void);
bool run_sequence(SEQUENCE_ID id);


#ifdef	__cplusplus
}
#endif

#endif	/* SEQUENCES_H */

