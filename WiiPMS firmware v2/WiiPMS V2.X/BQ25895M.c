/*
 * File:   BQ25895M.c
 * Author: Gunnar
 *
 * Created on September 14, 2019, 11:18 AM
 */

#include <xc.h>
#include <stdint.h>
#include "I2C.h"
#include "BQ25895M.h"
#include "PICCONFIG.h"
#include "NVM.h"
#include "time.h"

void BQ_Write(unsigned char reg, char data) {
    I2C_Master_Start();
    I2C_Master_Write(BQ_ADDR << 1);            
    I2C_Master_Write(reg);
    I2C_Master_Write(data);   
    I2C_Master_Stop();
}

unsigned short BQ_Read(unsigned char reg) {
    unsigned char data;
    
    I2C_Master_Start();
    I2C_Master_Write(BQ_ADDR << 1);            
    I2C_Master_Write(reg);
    I2C_Master_Start();
    I2C_Master_Write(0b11010101);   //Address Read      
    data=I2C_Master_Read(1);
    I2C_Master_Stop();
    return data;
}

char BQ_read_adc(char reg) {
    BQ_Write(0x02, 0b10010001); //start ADC
    __delay_ms(500);            //delay for conversion
    return BQ_Read(reg); 
}

char * BQ_get_chrg_state() {
    
    char data[2];
    char temp = BQ_Read(0x0B); //get charge/vbus status

    data[0] = (temp >> 4) & 0b00000111;   //vbus stat
    data[1] = (temp >> 2) & 0b00000011;   //chrg stat

    return data;
}

uint8_t * VBUS_CHRG_STATE;
uint8_t BATTERY_VOLTAGE;

uint8_t BQ_adc_state = 0;
uint32_t BQ_adc_time = 0;

void BQ_UPDATE() {
    if(BQ_adc_state == 0) {
        VBUS_CHRG_STATE = BQ_get_chrg_state();
        BQ_Write(0x02, 0b10010001); //start ADC
        BQ_adc_time = get_time();
        BQ_adc_state = 1;
    }
    else if(BQ_adc_state == 1) {
        if(timer_diff(BQ_adc_time) >= 80) {
            BATTERY_VOLTAGE = BQ_Read(0x0E);       
            BQ_adc_state = 2;
            BQ_adc_time = get_time();
        }
    }
    else if(BQ_adc_state == 2) {
        if(timer_diff(BQ_adc_time) >= 20) {
            BQ_adc_state = 0;
        }
    }
    else {
        BQ_adc_state = 0;
    }  
}

uint8_t REG00_config;
uint8_t REG03_config;
uint8_t REG04_config;
uint8_t REG07_config;
uint8_t REG08_config;

//REG00
uint8_t EN_HIZ = 0;
uint8_t EN_ILIM = 1;
uint8_t INILIM = 0b111010;    //3A

//REG03
uint8_t WD_RST = 0;
uint8_t OTG_CONFIG = 0;
uint8_t CHG_CONFIG = 1;
uint8_t SYS_MIN = 0b101;

//REG04
uint8_t ICHG = 0b1100000;  //3.072A

//REG07
uint8_t EN_TERM = 1;
uint8_t STAT_DIS = 1;  //disable stat pin
uint8_t WATCHDOG = 0;
uint8_t EN_TIMER = 1;
uint8_t CHG_TIMER = 10;

//REG08
uint8_t BAT_COMP = 0;
uint8_t VCLAMP = 0;
uint8_t TREG = 0b01;   //80C

void BQ_CONFIG_INIT() {
    REG00_config = (EN_HIZ<<7)|(EN_ILIM<<6)|(INILIM); 
    REG03_config = (WD_RST<<6)|(OTG_CONFIG<<5)|(CHG_CONFIG<<4)|(SYS_MIN<<1);   
    REG04_config = (ICHG);   
    REG07_config = (EN_TERM<<7)|(STAT_DIS<<6)|(WATCHDOG<<4)|(EN_TIMER<<3)|(CHG_TIMER<<1)|0b1;    
    REG08_config = (BAT_COMP<<5)|(VCLAMP<<2)|TREG;  
}

void BQ_INIT() {
    BQ_Write(0x00, REG00_config); 
    BQ_Write(0x03, REG03_config);
    BQ_Write(0x04, REG04_config);
    BQ_Write(0x07, REG07_config);
    BQ_Write(0x08, REG08_config);
}

/*
char BQ_CONFIG[17];

enum BQ_REG {
    EN_HIZ,
    EN_ILIM,
    INILIM,
    WD_RST,
    OTG_CONFIG,
    CHG_CONFIG,
    SYS_MIN,
    ICHRG,
    EN_TERM,
    STAT_DIS,
    WATCHDOG,
    EN_TIMER,
    CHG_TIMER,
    BAT_COMP,
    VCLAMP,
    TREG,
    BATFET_DIS
};


char default_mode = 1;

char CONFIG_TEMP[21];

void BQ_CONFIG_INIT() {
    
    for(char i = 0; i < 21; i++) {
        CONFIG_TEMP[i] = EEPROM_READ_BYTE(i);
    }
    
    if(CONFIG_TEMP[20] != 0xAA) {
        default_mode = 1;
    }
    
    if(default_mode) {
        BQ_CONFIG[EN_HIZ] = 0;
        BQ_CONFIG[EN_ILIM] = 1;
        BQ_CONFIG[INILIM] = 0b0111010;
        BQ_CONFIG[WD_RST] = 0;
        BQ_CONFIG[OTG_CONFIG] = 0;
        BQ_CONFIG[CHG_CONFIG] = 1;
        BQ_CONFIG[SYS_MIN] = 0b101;
        BQ_CONFIG[ICHRG] = 0b1100000;
        BQ_CONFIG[EN_TERM] = 1;
        BQ_CONFIG[STAT_DIS] = 1;
        BQ_CONFIG[WATCHDOG] = 0;
        BQ_CONFIG[EN_TIMER] = 1;
        BQ_CONFIG[CHG_TIMER] = 10;
        BQ_CONFIG[BAT_COMP] = 0;
        BQ_CONFIG[VCLAMP] = 0;
        BQ_CONFIG[TREG] = 0b01;
        BQ_CONFIG[BATFET_DIS] = 0;
    }
    else {
        BQ_CONFIG[EN_HIZ] = CONFIG_TEMP[EN_HIZ];
        BQ_CONFIG[EN_ILIM] = CONFIG_TEMP[EN_ILIM];
        BQ_CONFIG[INILIM] = CONFIG_TEMP[INILIM];
        BQ_CONFIG[WD_RST] = CONFIG_TEMP[WD_RST];
        BQ_CONFIG[OTG_CONFIG] = CONFIG_TEMP[OTG_CONFIG];
        BQ_CONFIG[CHG_CONFIG] = CONFIG_TEMP[CHG_CONFIG];
        BQ_CONFIG[SYS_MIN] = CONFIG_TEMP[SYS_MIN];
        BQ_CONFIG[ICHRG] = CONFIG_TEMP[ICHRG];
        BQ_CONFIG[EN_TERM] = CONFIG_TEMP[EN_TERM];
        BQ_CONFIG[STAT_DIS] = CONFIG_TEMP[STAT_DIS];
        BQ_CONFIG[WATCHDOG] = CONFIG_TEMP[WATCHDOG];
        BQ_CONFIG[EN_TIMER] = CONFIG_TEMP[EN_TIMER];
        BQ_CONFIG[CHG_TIMER] = CONFIG_TEMP[CHG_TIMER];
        BQ_CONFIG[BAT_COMP] = CONFIG_TEMP[BAT_COMP];
        BQ_CONFIG[VCLAMP] = CONFIG_TEMP[VCLAMP];
        BQ_CONFIG[TREG] = CONFIG_TEMP[TREG];
        BQ_CONFIG[BATFET_DIS] = CONFIG_TEMP[BATFET_DIS];       
    }
    
    REG00_config = (BQ_CONFIG[EN_HIZ]<<7)|(BQ_CONFIG[EN_ILIM]<<6)|(BQ_CONFIG[INILIM]); 
    REG03_config = (BQ_CONFIG[WD_RST]<<6)|(BQ_CONFIG[OTG_CONFIG]<<5)|(BQ_CONFIG[CHG_CONFIG]<<4)|(BQ_CONFIG[SYS_MIN]<<1);   
    REG04_config = (BQ_CONFIG[ICHRG]);   
    REG07_config = (BQ_CONFIG[EN_TERM]<<7)|(BQ_CONFIG[STAT_DIS]<<6)|(BQ_CONFIG[WATCHDOG]<<4)|(BQ_CONFIG[EN_TIMER]<<3)|(BQ_CONFIG[CHG_TIMER]<<1)|0b1;    
    REG08_config = (BQ_CONFIG[BAT_COMP]<<5)|(BQ_CONFIG[VCLAMP]<<2)|BQ_CONFIG[TREG];  
    
} 
 */
