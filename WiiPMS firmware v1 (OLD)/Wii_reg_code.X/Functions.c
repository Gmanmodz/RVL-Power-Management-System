/*
 * File:   Functions.c
 * Author: Gman
 *
 * Created on October 14, 2018, 8:59 PM
 */

#include <xc.h>
#include "PicConfig.h"
#include "I2C.h"
#include "STUSB4500.h"

//initialize variables
char mode = 0; //led mode
char i = 0; //led fade counting variable
char c = 0; //fade counting variable
char dir = 1;   //fade direction
char color = 0; //led color counter
char battery_volts = 0; //variable to store voltage on battery

char vbus_stat = 0;
char chrg_stat = 0;

static char Map(int x, char inMin, char inMax, char outMin, char outMax) {
    // Map a single value onto a different range
    return (((x - inMin) * (outMax - outMin)) / (inMax - inMin)) +outMin;
}

unsigned int readADC() {

    ADCON1 = 0b01100000; //Left justified, ADCLK is FOSC/64, VREF is VDD
    ADCON0 = 0b00010001; //RA4 selected, ADC is on

    __delay_ms(5); //sampling time
    
    ADCON0bits.GOnDONE = 1; //begin ADC
    while (ADCON0bits.GOnDONE); //wait for conversion to complete
    
    //return ((ADRESH << 6) | (ADRESL >> 2)); //Returns 8-bit result
    return ADRESH; //return upper 8bits 
}

char get_mode() {
    return mode;
}

void set_mode(char mode_temp) {
    mode = mode_temp;
}

char get_battery_volts() {
    return battery_volts;
}

void set_battery_volts(char battery_volts_temp) {
    battery_volts = battery_volts_temp;
}

void PPS_unlock() {
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCK = 0; //PPS unlocked	
}

void PPS_lock() {
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCK = 1; //PPS locked   	
}

void PWM_init() {

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
}

void BQ_init() {

    BQ_Write(0x00, 0b01111010); //disable Hi-Z, set input current limit to 3A (ILIM pin takes priority)
    BQ_Write(0x03, 0b00011010); //boost OTG disabled, vsys 3v5
    BQ_Write(0x04, 0b01100000); //ICHG set to 3.072 A - good for 1S2P
    BQ_Write(0x07, 0b11001101); //disable STAT pin and WDT
    BQ_Write(0x02, 0b00110101); //enable MaxCharge handshake
    BQ_Write(0x0D, 0xFF);       //Absolute WINDPM mode. Threshold set to 15.3v
    BQ_Write(0x08, 0b00000001); //TREG to 80C

}

char battery_read() {
    //gets the battery voltage over I2C
    BQ_Write(0x02, 0b10010001); //start ADC
    __delay_ms(500); //delay for conversion
    return BQ_Read(0x0E); // register ADC conversion of Battery Voltage
}

char charge_state() {

    char temp = BQ_Read(0x0B); //get charge status

    vbus_stat = (temp >> 4) & 0b00000111;
    chrg_stat = (temp >> 2) & 0b00000011;

    return vbus_stat;
}

void chrg_led() {
    
    if(c >= 255) {
        dir = 0;
    }
    
    if(c <= 1) {
        dir = 1;
    }
    
    if(dir == 1) {
        c++;
    }
    else if(dir == 0) {
        c--;
    }
    
    __delay_ms(5);
    
    if (chrg_stat == 0b01) {
        //status is pre-charge
        PWM3DCH = 0; //blue
        PWM4DCH = 0; //green
        PWM5DCH = c; //red

    } else if (chrg_stat == 0b10) {
        //status is fast charge
        PWM3DCH = 0; //blue
        PWM4DCH = c; //green
        PWM5DCH = c; //red    

    } else if (chrg_stat == 0b11) {
        //charge is complete
        PWM3DCH = 0; //blue
        PWM4DCH = c; //green
        PWM5DCH = 0; //red

    } else {
        PWM3DCH = 0; //blue
        PWM4DCH = 0; //green
        PWM5DCH = 0; //red
    }

}

void ps2_on() {

    //turn on ps2
    __delay_ms(1100);
    __delay_ms(1100);
    TRISAbits.TRISA2 = 0; //ps2 reset output
    aux = 0;    //ps2 reset low
    __delay_ms(100);
    __delay_ms(100);
    TRISAbits.TRISA2 = 1; //ps2 reset float 

}

void power_up() {

    //set initial IC registers
    BQ_init();

    //set STUSB4500
    STUSB_9V_12V();

    //turn on regulators
    TRISCbits.TRISC5 = 0;
    enable = 1; //reg enable high

    //ps2_on(); //turn ps2 on

    //turn on PWM
    PWM_init();

}

void power_down(char ship_mode) {

    TRISCbits.TRISC5 = 1; //reg enable float

    //PWM modules off
    PWM3EN = 0;
    PWM4EN = 0;
    PWM5EN = 0;

    if (ship_mode) {
        BQ_Write(0x09, 0b01100100); //Force BATFET off
    }

    SLEEP();
}

void RGB_fade() {
    //this function fades between continuous colors using the RGB led
    if (i >= 255) {
        i = 0;
        color++;
        if (color > 2) {
            color = 0;
        }
    }
    i++;
    __delay_ms(12);

    if (color == 0) {
        PWM3DCH = 255 - i;
        PWM4DCH = i;
        PWM5DCH = 0;
    }

    if (color == 1) {
        PWM3DCH = 0;
        PWM4DCH = 255 - i;
        PWM5DCH = i;
    }

    if (color == 2) {
        PWM3DCH = i;
        PWM4DCH = 0;
        PWM5DCH = 255 - i;
    }
}

void battery_fade() {
    //this function is used to demonstrate the battery voltage on the RG led

    char v = battery_volts; //temp variable holding the battery voltage

    //initial map v to lowest and highest battery acceptable
    char battery_min = 0; //2.304V
    char battery_max = 98; //4.25

    if (v > battery_max) {
        v = battery_max;
    }
    if (v < battery_min) {
        v = battery_min;
    }

    v = Map(v, battery_min, battery_max, 0, 127); //map battery voltage to full scale

    //yellow-red: 63-0
    if (v <= 63) {
        v = Map(v, 0, 63, 0, 255);
        PWM3DCH = 0; //blue
        PWM4DCH = v; //green
        PWM5DCH = 255; //red
    }
        //green-yellow 127-63
    else if (v >= 63) {
        v = Map(v, 63, 127, 0, 255);
        PWM3DCH = 0; //blue
        PWM4DCH = 255; //green
        PWM5DCH = 255 - v; //red
    }
}

void led_modes() {
    //this function is used to set some led modes that are cycled when pwr_btn is tapped

    //turn off leds
    if (mode == 0) {
        PWM3DCH = 0;
        PWM4DCH = 0;
        PWM5DCH = 0;
    }
        //fade through RGB
    else if (mode == 1) {
        RGB_fade();
    }

        //in mode 2 we will represent the battery voltage on the RGB leds from Green to yellow to red
    else if (mode == 2) {
        battery_fade();
    }
        //mode 3 is shipping mode
    else if (mode == 3) {
        //flashing red led
        PWM3DCH = 0; //blue
        PWM4DCH = 0; //green
        PWM5DCH = 255; //red 

        __delay_ms(400);

        PWM3DCH = 0; //blue
        PWM4DCH = 0; //green
        PWM5DCH = 0; //red   

        __delay_ms(400);

    }
    
}