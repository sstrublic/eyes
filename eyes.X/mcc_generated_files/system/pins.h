/**
 * PINS Generated Driver Header File 
 * 
 * @file      pins.h
 *            
 * @defgroup  pinsdriver Pins Driver
 *            
 * @brief     The Pin Driver directs the operation and function of 
 *            the selected device pins using dsPIC MCUs.
 *
 * @skipline @version   Firmware Driver Version 1.0.2
 *
 * @skipline @version   PLIB Version 1.3.0
 *
 * @skipline  Device : dsPIC33CK64MC105
*/

/*
© [2024] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

#ifndef PINS_H
#define PINS_H
// Section: Includes
#include <xc.h>

// Section: Device Pin Macros

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RB0 GPIO Pin which has a custom name of IO_RB0 to High
 * @pre      The RB0 must be set as Output Pin             
 * @param    none
 * @return   none  
 */
#define IO_RB0_SetHigh()          (_LATB0 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RB0 GPIO Pin which has a custom name of IO_RB0 to Low
 * @pre      The RB0 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define IO_RB0_SetLow()           (_LATB0 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Toggles the RB0 GPIO Pin which has a custom name of IO_RB0
 * @pre      The RB0 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define IO_RB0_Toggle()           (_LATB0 ^= 1)

/**
 * @ingroup  pinsdriver
 * @brief    Reads the value of the RB0 GPIO Pin which has a custom name of IO_RB0
 * @param    none
 * @return   none  
 */
#define IO_RB0_GetValue()         _RB0

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RB0 GPIO Pin which has a custom name of IO_RB0 as Input
 * @param    none
 * @return   none  
 */
#define IO_RB0_SetDigitalInput()  (_TRISB0 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RB0 GPIO Pin which has a custom name of IO_RB0 as Output
 * @param    none
 * @return   none  
 */
#define IO_RB0_SetDigitalOutput() (_TRISB0 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD1 GPIO Pin which has a custom name of IO_RD1 to High
 * @pre      The RD1 must be set as Output Pin             
 * @param    none
 * @return   none  
 */
#define IO_RD1_SetHigh()          (_LATD1 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD1 GPIO Pin which has a custom name of IO_RD1 to Low
 * @pre      The RD1 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define IO_RD1_SetLow()           (_LATD1 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Toggles the RD1 GPIO Pin which has a custom name of IO_RD1
 * @pre      The RD1 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define IO_RD1_Toggle()           (_LATD1 ^= 1)

/**
 * @ingroup  pinsdriver
 * @brief    Reads the value of the RD1 GPIO Pin which has a custom name of IO_RD1
 * @param    none
 * @return   none  
 */
#define IO_RD1_GetValue()         _RD1

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD1 GPIO Pin which has a custom name of IO_RD1 as Input
 * @param    none
 * @return   none  
 */
#define IO_RD1_SetDigitalInput()  (_TRISD1 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD1 GPIO Pin which has a custom name of IO_RD1 as Output
 * @param    none
 * @return   none  
 */
#define IO_RD1_SetDigitalOutput() (_TRISD1 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD8 GPIO Pin which has a custom name of IO_RD8 to High
 * @pre      The RD8 must be set as Output Pin             
 * @param    none
 * @return   none  
 */
#define IO_RD8_SetHigh()          (_LATD8 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD8 GPIO Pin which has a custom name of IO_RD8 to Low
 * @pre      The RD8 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define IO_RD8_SetLow()           (_LATD8 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Toggles the RD8 GPIO Pin which has a custom name of IO_RD8
 * @pre      The RD8 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define IO_RD8_Toggle()           (_LATD8 ^= 1)

/**
 * @ingroup  pinsdriver
 * @brief    Reads the value of the RD8 GPIO Pin which has a custom name of IO_RD8
 * @param    none
 * @return   none  
 */
#define IO_RD8_GetValue()         _RD8

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD8 GPIO Pin which has a custom name of IO_RD8 as Input
 * @param    none
 * @return   none  
 */
#define IO_RD8_SetDigitalInput()  (_TRISD8 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD8 GPIO Pin which has a custom name of IO_RD8 as Output
 * @param    none
 * @return   none  
 */
#define IO_RD8_SetDigitalOutput() (_TRISD8 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD10 GPIO Pin which has a custom name of SYS_LED to High
 * @pre      The RD10 must be set as Output Pin             
 * @param    none
 * @return   none  
 */
#define SYS_LED_SetHigh()          (_LATD10 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD10 GPIO Pin which has a custom name of SYS_LED to Low
 * @pre      The RD10 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define SYS_LED_SetLow()           (_LATD10 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Toggles the RD10 GPIO Pin which has a custom name of SYS_LED
 * @pre      The RD10 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define SYS_LED_Toggle()           (_LATD10 ^= 1)

/**
 * @ingroup  pinsdriver
 * @brief    Reads the value of the RD10 GPIO Pin which has a custom name of SYS_LED
 * @param    none
 * @return   none  
 */
#define SYS_LED_GetValue()         _RD10

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD10 GPIO Pin which has a custom name of SYS_LED as Input
 * @param    none
 * @return   none  
 */
#define SYS_LED_SetDigitalInput()  (_TRISD10 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD10 GPIO Pin which has a custom name of SYS_LED as Output
 * @param    none
 * @return   none  
 */
#define SYS_LED_SetDigitalOutput() (_TRISD10 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD13 GPIO Pin which has a custom name of SW to High
 * @pre      The RD13 must be set as Output Pin             
 * @param    none
 * @return   none  
 */
#define SW_SetHigh()          (_LATD13 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Sets the RD13 GPIO Pin which has a custom name of SW to Low
 * @pre      The RD13 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define SW_SetLow()           (_LATD13 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Toggles the RD13 GPIO Pin which has a custom name of SW
 * @pre      The RD13 must be set as Output Pin
 * @param    none
 * @return   none  
 */
#define SW_Toggle()           (_LATD13 ^= 1)

/**
 * @ingroup  pinsdriver
 * @brief    Reads the value of the RD13 GPIO Pin which has a custom name of SW
 * @param    none
 * @return   none  
 */
#define SW_GetValue()         _RD13

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD13 GPIO Pin which has a custom name of SW as Input
 * @param    none
 * @return   none  
 */
#define SW_SetDigitalInput()  (_TRISD13 = 1)

/**
 * @ingroup  pinsdriver
 * @brief    Configures the RD13 GPIO Pin which has a custom name of SW as Output
 * @param    none
 * @return   none  
 */
#define SW_SetDigitalOutput() (_TRISD13 = 0)

/**
 * @ingroup  pinsdriver
 * @brief    Initializes the PINS module
 * @param    none
 * @return   none  
 */
void PINS_Initialize(void);



#endif
