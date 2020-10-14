/*
 * File:   ADC.c
 * Author: Gunnar
 *
 * Created on September 14, 2019, 11:34 AM
 */

#include <xc.h>
#include "PICCONFIG.h"

unsigned int readADC(char channel) {

    ADCON1 = 0b01100000; //Left justified, ADCLK is FOSC/64, VREF is VDD
    ADCON0 = (channel << 2) | 0b1;

    __delay_ms(5); //sampling time
    
    ADCON0bits.GOnDONE = 1; //begin ADC
    while (ADCON0bits.GOnDONE); //wait for conversion to complete
    
    //return ((ADRESH << 6) | (ADRESL >> 2)); //Returns 8-bit result
    return ADRESH; //return upper 8bits 
}