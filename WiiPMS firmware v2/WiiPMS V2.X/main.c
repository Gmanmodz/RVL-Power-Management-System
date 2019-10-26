/*
 * File:   main.c
 * Author: Gunnar
 *
 * Created on September 13, 2019, 9:32 PM
 */

#include <xc.h>
#include <stdint.h>
#include <pic16f15324.h>
#include "PICCONFIG.h"
#include "PWM.h"
#include "PPS.h"
#include "I2C.h"
#include "BQ25895M.h"
#include "ADC.h"
#include "LED_INTERFACE.h"
#include "NVM.h"
#include "stusb4500.h"
#include "stusb4500_nvm.h"
#include "time.h"

uint8_t SYS_ENABLE = 0;

void PIC_SETUP(){
    
    CPUDOZEbits.IDLEN = 0;      //clear idle mode
    VREGCON = 0b00000011;       //low power sleep mode
    
    //IO setup
    TRISA = 0xFF;
    TRISC = 0xFF;
    ANSELA = 0;
    ANSELC = 0;
    ANSELAbits.ANSA4 = 1;   //thermistor
    WPUA = 0b00100000;      //WPU on RA5 BTN
    
    //TIMER1 setup
    T1CONbits.CKPS = 0b00;  //1:1 prescale
    T1CONbits.nSYNC = 0;
    T1CONbits.RD16 = 1;     //16-bit read
    T1GCONbits.GE = 0;      //Gate OFF
    T1CLK = 0b00000100;     //CLK is LFINTOSC
    TMR1 = TMR1_RST;  
    PIE4bits.TMR1IE = 1;    //enable tmr1 interrupt     
    T1CONbits.ON = 1;
    
    //IOC setup
    PIE0bits.IOCIE = 1;     //enable IOC module
    IOCAP = 0b00100000;     //PSEDGE enable bits
    IOCAN = 0b00100000;     //NEGEDGE enable bits
    IOCAF = 0x00;
    
    INTCONbits.GIE = 1;     //enable active interrupts
    INTCONbits.PEIE = 1;    //enable peripheral interrupts
}

uint8_t btn_is_pressed = 0;
uint8_t btn_is_debounced = 0;
uint32_t btn_time_start = 0;
uint32_t btn_time = 0;

void interrupt ISR(){

    if(TMR1IF) {
        TMR1IF = 0;
        TMR1 = TMR1_RST;
        timer_counter++;
    }
    
    if(IOCAF5) {
        IOCAF5 = 0;
    }
    
    if(!pwr_btn) {
        if(!btn_is_pressed) {
            btn_time_start = get_time();
        }
        btn_is_pressed = 1;
    } 
    else {
        if(btn_is_pressed) {
            btn_time = timer_diff(btn_time_start);
            if(btn_time >= 5) {
                btn_is_debounced = 1;
            }
        }
        btn_is_pressed = 0;
    }
    
} 

void thermal_protection(){    
    //calculating setpoint = 255 / [(Therm_resistance(at temp) / 10,000 ) + 1]
    //For temp = 75C, setpoint = 222
    if(readADC(ADCRA4) >= 222) {
        SYS_ENABLE = 0;
        TRISCbits.TRISC5 = 1;       //turn off regulators
        BQ_Write(0x09, 0b01100100); //Force BATFET off 
    }    
}

void ps2_on() {
    //turn on ps2
    __delay_ms(1100);
    TRISAbits.TRISA2 = 0;   //ps2 reset output
    aux = 0;                //ps2 reset low
    __delay_ms(100);
    TRISAbits.TRISA2 = 1;   //ps2 reset float 
}

uint8_t set_stusb4500 = 0;
uint32_t stusb4500_timeout = 0;

void main() {
            
    PIC_SETUP();
    
    //clear i2c bus if SDA held low
    I2C_bus_reset();
    
    //Initialize I2C Master
    PPS_unlock();
    SSP1DATPPS = 0x11;  //SDA INPUT
    RC1PPS = 0x16;      //SDA OUTPUT
    SSP1CLKPPS = 0x10;  //SDA INPUT
    RC0PPS = 0x15;      //SCL OUTPUT
    PPS_lock();
    I2C_Master_Init(350000);   
    
    BQ_CONFIG_INIT();
    BQ_INIT();
    
    PWM_INIT();

    while(1) {

        CLRWDT();
        
        if(btn_is_debounced) {
            if(btn_time >= 85) {                   //btn is long press
                SYS_ENABLE = !SYS_ENABLE;
                if(SYS_ENABLE) {
                    TRISCbits.TRISC5 = 0;
                    enable = 1;                     //turn on regulators   
                    //nvm_flash();
                    //ps2_on();
                }
                else {
                    TRISCbits.TRISC5 = 1;           //turn off regulators
                    if(mode == 3) {                 //shipping mode
                        BQ_Write(0x09, 0b01100100); //Force BATFET off 
                    }
                }
            }
            else if(SYS_ENABLE && btn_time<=50 && !VBUS_CHRG_STATE[1]) {    //btn is short press
                //if battery is low, revert to mode 2 to warn user
                //.02V/bit, 2.304V offset. bit value = [(desired cutoff voltage) - 2.304] / .02V/bit
                if(BATTERY_VOLTAGE <= 50) {     //45 = (3.2 - 2.304)/.02
                    mode = 2;
                }  
                else {
                    mode++;
                }
            }
            btn_is_debounced = 0;
        }
        
        BQ_UPDATE();

        thermal_protection();
        
        //setting the led interface
        if(VBUS_CHRG_STATE[1] == 0) {
            if(SYS_ENABLE) {
                led_modes();
            }
            if(timer_diff(stusb4500_timeout) >= 500) {
                set_stusb4500 = 0;
            }
        }
        else {
            chrg_led();
            if(!set_stusb4500) {
                stusb_negotiate();
                set_stusb4500 = 1;
                stusb4500_timeout = get_time();           
            }
        }
        
        //power consumption putting pic to sleep
        if(!SYS_ENABLE && VBUS_CHRG_STATE[1]==0 && !btn_is_debounced && pwr_btn && BQ_adc_state==0 && !set_stusb4500) {
            PWM_power_down();
            CLRWDT();
            SLEEP();    
            RESET();
        }
        
    }  
}