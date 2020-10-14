/* 
 * File:   BQ25895M.h
 * Author: Gunnar T
 * Comments:
 * Revision history: 
 */
 
#ifndef BQ25895M_H
#define	BQ25895M_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define BQ_ADDR 0x6A

void BQ_Write(unsigned char reg, char data);
unsigned short BQ_Read(unsigned char reg);
void BQ_get_chrg_state();
void BQ_CONFIG_INIT();
void BQ_INIT();
void BQ_UPDATE();

extern uint8_t VBUS_CHRG_STATE[2];
extern uint8_t BATTERY_VOLTAGE;
extern uint8_t BQ_adc_state;

#endif	