/* 
 * File:   LED_INTERFACE.c
 * Author: Gunnar T
 * Comments:
 * Revision history: 
 */
 
#ifndef LED_INTERFACE_H
#define	LED_INTERFACE_H

#include <xc.h> // include processor files - each processor file is guarded. 

void RGB_fade();
static char Map(int x, char inMin, char inMax, char outMin, char outMax);
void battery_fade();
void chrg_led();
void flash_led();
void led_modes();

extern char mode;

#endif	