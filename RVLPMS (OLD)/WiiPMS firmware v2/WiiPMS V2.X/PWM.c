/*
 * File:   PWM.c
 * Author: Gunnar
 *
 * Created on September 13, 2019, 10:42 PM
 */

#include <xc.h>
#include "PPS.h"

void PWM_INIT() {
    
    PPS_unlock();
    RC2PPS = 0x0B; //PWM3
    RC3PPS = 0x0C; //PWM4
    RC4PPS = 0x0D; //PWM5
    PPS_lock();

    PWM3CON = 0;
    PR2 = 255;
    PWM3DCH = 0;
    PWM3DCL = 0b00111111;
    PWM3CON = 0b10000000;
    TRISCbits.TRISC2 = 0;
    PWM3CON = 0b11100000;

    PWM4CON = 0;
    PWM4DCH = 0;
    PWM4DCL = 0b00111111;
    PWM4CON = 0b10000000;
    TRISCbits.TRISC3 = 0;
    PWM4CON = 0b11100000;

    PWM5CON = 0;
    PWM5DCH = 0;
    PWM5DCL = 0b00111111;
    PWM5CON = 0b10000000;
    TRISCbits.TRISC4 = 0;
    PWM5CON = 0b11100000;        
    
    //TIMER2 setup
    T2CLKCON = 0b00000011;  //CLK is HFINTOSC     
    TMR2ON = 1;             //TMR2 ON
    T2CKPS0 = 0;            //prescaler=16
    T2CKPS1 = 0;
    T2CKPS2 = 1;
        
    T2OUTPS0 = 1;           //postscaler=16
    T2OUTPS1 = 1;
    T2OUTPS2 = 1;
    T2OUTPS3 = 1;
        
    TMR2 = 0;               //set to 0
    PR2 = 255;              //stop value
    TMR2IF = 0;             //set flag to 0    
    
}

void PWM_power_down() {
    //shutdown pwm
    PWM3DCH = 0;
    PWM4DCH = 0;
    PWM5DCH = 0;            
    PWM3CONbits.EN = 0;
    PWM4CONbits.EN = 0;
    PWM5CONbits.EN = 0;
    RC2 = 0;
    RC3 = 0;
    RC4 = 0;    
}

void PWM_power_up() {
    PWM3CONbits.EN = 1;
    PWM4CONbits.EN = 1;
    PWM5CONbits.EN = 1;    
}