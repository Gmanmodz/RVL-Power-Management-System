/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef FUNCTIONS_H
#define	FUNCTIONS_H

#include <xc.h> // include processor files - each processor file is guarded.  

unsigned int readADC();

char get_mode();
void set_mode(char mode_temp);
char get_battery_volts();
void set_battery_volts(char battery_volts_temp);

void PPS_unlock();
void PPS_lock();
void PWM_init();
static char Map(int x, char inMin, char inMax, char outMin, char outMax);
char battery_read();
char charge_state();
void chrg_led();
void power_up();
void power_down(char ship_mode);
void BQ_init();
void RGB_fade();
void battery_fade();
void led_modes();

#endif