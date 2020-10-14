/* 
 * File:   ADC.c
 * Author: Gunnar T
 * Comments:
 * Revision history: 
 */
 
#ifndef ADC_H
#define	ADC_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define ADCRA4  0b000100

unsigned int readADC(char channel);

#endif	