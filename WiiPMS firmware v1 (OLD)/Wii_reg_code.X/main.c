/*
 * File:   main.c
 * Author: Gman
 *
 * Created on Januar 1, 2019
 */

#include <xc.h>
#include "PicConfig.h"
#include "I2C.h"
#include "Functions.h"
#include "STUSB4500.h"

//variables
char reg_state = 0;             //reg enable state    
char tmr1_count = 0;            //tmr1 flag count
char mode_temp = 0;             //temp var for holding the mode state
char battery_volts_temp = 0;    //temp var for holding the battery voltage level
char mode_en = 0;               //when 0, mode cannot be changed

char vbus_stat_temp = 0;

void thermal_protection(){    
    //calculating setpoint = 255 / [(Therm_resistance(at temp) / 10,000 ) + 1]
    //For temp = 75C, setpoint = 222
    
    if(readADC() >= 222) {
        reg_state = 0;
        power_down(1);  //power down in shipping mode
        
    }    
}

void read_bq_status(){ 
    
    if(reg_state && TMR1IF) {
        TMR1IF = 0;  //reset TMR1
        tmr1_count++;
        
        //we don't really need to check these statuses all that often so it is in a timed event
        if(tmr1_count >= 10) { 
            tmr1_count = 0; //reset count
            
            //read charge status
            vbus_stat_temp = charge_state();
            
            //mode cannot be changed if the charger is plugged in
            if(vbus_stat_temp != 0) {
                mode_en = 0;
            }
            else {
                mode_en = 1;
            }
            
            //read battery voltage
            battery_volts_temp = battery_read();
            //store battery volts variable
            set_battery_volts(battery_volts_temp);
            
            //if battery is < 3v, shut down system to avoid Power On Reset
            if(get_battery_volts() <= 4) {
                //reg_state = 0;
                //power_down(0);
            }
            
            //if battery is low, revert to mode 2 to warn user
            //.02V/bit, 2.304V offset
            //bit value = [(desired cutoff voltage) - 2.304] / .02V/bit
            if(get_battery_volts() <= 50) {     //45 = (3.2 - 2.304)/.02
                mode_temp = 2;
                set_mode(mode_temp);
            }   
            
            thermal_protection();   //checks thermistor resistance and shuts down if over temp

        }   
    }    
}

void on_off_tact(){
    
    //count how long button is held down for
    //exit loop if held over 1 second
    
    char count = 0;
    char exit = 0;
    
    while(pwr_btn == 0 && exit == 0) {
        if(TMR2IF == 1) {
            count++;
            TMR2IF = 0;
        }
        if(count >= 120) {
            exit = 1;
        }
    }
    
    if(count >= 120){  //when button held down >1sec     
        reg_state =! reg_state;   //toggle reg_state
        
        if(reg_state == 1){   
            power_up();
        }
        
        else if(reg_state == 0){   
            
            if(get_mode() == 3) {
                power_down(1);
            }
            
            else {
                power_down(0);
            }
        }     
        
        while(pwr_btn == 0) {}  //wait for button to depress
        
    }    
 
    //if button is tapped, cycle through modes. Only works when system is on and mode_en
    else if(count >= 2 && reg_state && mode_en) {
        mode_temp++; 
        set_mode(mode_temp);
        
        //if mode exceeds the maximum modes, then cycle back to mode 0
        if(get_mode() > 3) {    
            mode_temp = 0;
            set_mode(mode_temp);
        }
    }
    
}

void interrupt ISR(){
    
    TMR2 = 0;     //reset TMR2
    TMR2IF = 0;   //reset flag
        
    on_off_tact();  //system is using tact switch for on/off control
    
    //reset IOC for pwr_btn
    IOCAF5 = 0;   //reset IOC  
    
    if(reg_state == 0) {    //guard condition
        SLEEP();
    }
    
}   //end ISR

void PIC_init(){
    
    //OSCCON1bits.NDIV = 0b0011;  //FOSC/8 = 4MHz
    
    VREGCON = 0b00000011;   //low power sleep mode
    TMR1ON = 0;             //TMR1 OFF
    
    //  I/O setup
    TRISA = 0b11111111;   
    TRISC = 0b11111111;
        
    ANSELA = 0b00010000;    //RA4 is analog, rest is digital
    ANSELC = 0;
    
    WPUA = 0b00100000;      //WPU on RA5
    
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
    
    //TIMER1 setup
    T1CON = 0b00110101;     //fosc/4 and 1:8 prescale
    T1GCONbits.GE = 1;      //Gate Enable ON
    T1CLK = 0b00000011;     //CLK is HFINTOSC
    TMR1H = 0xFF;           //count is 65,535
    TMR1L = 0xFF;
    TMR1IE = 0;             //enable tmr1 interrupt    
    
    //IOC setup
    PIE0bits.IOCIE = 1;     //enable IOC module
    IOCAP = 0b00100000;     //PSEDGE enable bits
    IOCAN = 0b00100000;     //NEGEDGE enable bits
    IOCAF = 0x00;
    INTCON = 0b11001000;    //IOC ENABLED
    
    INTCONbits.GIE = 1;     //enable active interrupts
    INTCONbits.PEIE = 1;    //enable peripheral interrupts

}

void main() {
    
    //Initialize the PIC settings
    PIC_init();
    
    //Initialize I2C Master with 100kHz clock
    PPS_unlock();
    SSP1DATPPS = 0x11;  //SDA INPUT
    RC1PPS = 0x16;      //SDA OUTPUT
    SSP1CLKPPS = 0x10;  //SDA INPUT
    RC0PPS = 0x15;      //SCL OUTPUT
    PPS_lock();
    
    I2C_Master_Init(100000);   
    
    //set initial IC registers
    BQ_init();    
    
    //set STUSB4500
    STUSB_9V_12V();
    
    //turn on PWM
    PWM_init();        
    
    SLEEP(); 
   
    while(1){
        
        if(reg_state == 1) {
         
            read_bq_status();

            if(vbus_stat_temp != 0) {
                chrg_led();
                //B_fade();
            }
             
            else {
                led_modes();
            }
      
        }   
        else {
            
            SLEEP();
            
        }
        
    }   //end while      
            
}   //end main