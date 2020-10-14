
# 1 "PPS.c"

# 18 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 108 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f15324.h"
extern volatile unsigned char INDF0 __at(0x000);

asm("INDF0 equ 00h");


typedef union {
struct {
unsigned INDF0 :8;
};
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __at(0x000);

# 128
extern volatile unsigned char INDF1 __at(0x001);

asm("INDF1 equ 01h");


typedef union {
struct {
unsigned INDF1 :8;
};
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __at(0x001);

# 148
extern volatile unsigned char PCL __at(0x002);

asm("PCL equ 02h");


typedef union {
struct {
unsigned PCL :8;
};
} PCLbits_t;
extern volatile PCLbits_t PCLbits __at(0x002);

# 168
extern volatile unsigned char STATUS __at(0x003);

asm("STATUS equ 03h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned nPD :1;
unsigned nTO :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0x003);

# 227
extern volatile unsigned short FSR0 __at(0x004);



extern volatile unsigned char FSR0L __at(0x004);

asm("FSR0L equ 04h");


typedef union {
struct {
unsigned FSR0L :8;
};
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __at(0x004);

# 251
extern volatile unsigned char FSR0H __at(0x005);

asm("FSR0H equ 05h");


typedef union {
struct {
unsigned FSR0H :8;
};
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __at(0x005);

# 271
extern volatile unsigned short FSR1 __at(0x006);



extern volatile unsigned char FSR1L __at(0x006);

asm("FSR1L equ 06h");


typedef union {
struct {
unsigned FSR1L :8;
};
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __at(0x006);

# 295
extern volatile unsigned char FSR1H __at(0x007);

asm("FSR1H equ 07h");


typedef union {
struct {
unsigned FSR1H :8;
};
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __at(0x007);

# 315
extern volatile unsigned char BSR __at(0x008);

asm("BSR equ 08h");


typedef union {
struct {
unsigned BSR :6;
};
struct {
unsigned BSR0 :1;
unsigned BSR1 :1;
unsigned BSR2 :1;
unsigned BSR3 :1;
unsigned BSR4 :1;
unsigned BSR5 :1;
};
} BSRbits_t;
extern volatile BSRbits_t BSRbits __at(0x008);

# 373
extern volatile unsigned char WREG __at(0x009);

asm("WREG equ 09h");


typedef union {
struct {
unsigned WREG0 :8;
};
} WREGbits_t;
extern volatile WREGbits_t WREGbits __at(0x009);

# 393
extern volatile unsigned char PCLATH __at(0x00A);

asm("PCLATH equ 0Ah");


typedef union {
struct {
unsigned PCLATH :7;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0x00A);

# 413
extern volatile unsigned char INTCON __at(0x00B);

asm("INTCON equ 0Bh");


typedef union {
struct {
unsigned INTEDG :1;
unsigned :5;
unsigned PEIE :1;
unsigned GIE :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0x00B);

# 446
extern volatile unsigned char PORTA __at(0x00C);

asm("PORTA equ 0Ch");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0x00C);

# 496
extern volatile unsigned char PORTC __at(0x00E);

asm("PORTC equ 0Eh");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0x00E);

# 546
extern volatile unsigned char TRISA __at(0x012);

asm("TRISA equ 012h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0x012);

# 591
extern volatile unsigned char TRISC __at(0x014);

asm("TRISC equ 014h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0x014);

# 641
extern volatile unsigned char LATA __at(0x018);

asm("LATA equ 018h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0x018);

# 686
extern volatile unsigned char LATC __at(0x01A);

asm("LATC equ 01Ah");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0x01A);

# 736
extern volatile unsigned short ADRES __at(0x09B);

asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __at(0x09B);

asm("ADRESL equ 09Bh");


typedef union {
struct {
unsigned ADRESL :8;
};
struct {
unsigned ADRESL0 :1;
unsigned ADRESL1 :1;
unsigned ADRESL2 :1;
unsigned ADRESL3 :1;
unsigned ADRESL4 :1;
unsigned ADRESL5 :1;
unsigned ADRESL6 :1;
unsigned ADRESL7 :1;
};
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __at(0x09B);

# 813
extern volatile unsigned char ADRESH __at(0x09C);

asm("ADRESH equ 09Ch");


typedef union {
struct {
unsigned ADRESH :8;
};
struct {
unsigned ADRESH0 :1;
unsigned ADRESH1 :1;
unsigned ADRESH2 :1;
unsigned ADRESH3 :1;
unsigned ADRESH4 :1;
unsigned ADRESH5 :1;
unsigned ADRESH6 :1;
unsigned ADRESH7 :1;
};
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __at(0x09C);

# 883
extern volatile unsigned char ADCON0 __at(0x09D);

asm("ADCON0 equ 09Dh");


typedef union {
struct {
unsigned ADON :1;
unsigned GOnDONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
unsigned CHS4 :1;
unsigned CHS5 :1;
};
struct {
unsigned :2;
unsigned CHS :6;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0x09D);

# 954
extern volatile unsigned char ADCON1 __at(0x09E);

asm("ADCON1 equ 09Eh");


typedef union {
struct {
unsigned ADPREF0 :1;
unsigned ADPREF1 :1;
unsigned :2;
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ADFM :1;
};
struct {
unsigned ADPREF :2;
unsigned :2;
unsigned ADCS :3;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0x09E);

# 1020
extern volatile unsigned char ADACT __at(0x09F);

asm("ADACT equ 09Fh");


typedef union {
struct {
unsigned ADACT0 :1;
unsigned ADACT1 :1;
unsigned ADACT2 :1;
unsigned ADACT3 :1;
unsigned ADACT4 :1;
};
struct {
unsigned ADACT :5;
};
} ADACTbits_t;
extern volatile ADACTbits_t ADACTbits __at(0x09F);

# 1072
extern volatile unsigned char RC1REG __at(0x119);

asm("RC1REG equ 0119h");


extern volatile unsigned char RCREG __at(0x119);

asm("RCREG equ 0119h");

extern volatile unsigned char RCREG1 __at(0x119);

asm("RCREG1 equ 0119h");


typedef union {
struct {
unsigned RC1REG :8;
};
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __at(0x119);

# 1099
typedef union {
struct {
unsigned RC1REG :8;
};
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __at(0x119);

# 1111
typedef union {
struct {
unsigned RC1REG :8;
};
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __at(0x119);

# 1126
extern volatile unsigned char TX1REG __at(0x11A);

asm("TX1REG equ 011Ah");


extern volatile unsigned char TXREG1 __at(0x11A);

asm("TXREG1 equ 011Ah");

extern volatile unsigned char TXREG __at(0x11A);

asm("TXREG equ 011Ah");


typedef union {
struct {
unsigned TX1REG :8;
};
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __at(0x11A);

# 1153
typedef union {
struct {
unsigned TX1REG :8;
};
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __at(0x11A);

# 1165
typedef union {
struct {
unsigned TX1REG :8;
};
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __at(0x11A);

# 1180
extern volatile unsigned short SP1BRG __at(0x11B);

asm("SP1BRG equ 011Bh");




extern volatile unsigned char SP1BRGL __at(0x11B);

asm("SP1BRGL equ 011Bh");


extern volatile unsigned char SPBRG __at(0x11B);

asm("SPBRG equ 011Bh");

extern volatile unsigned char SPBRG1 __at(0x11B);

asm("SPBRG1 equ 011Bh");

extern volatile unsigned char SPBRGL __at(0x11B);

asm("SPBRGL equ 011Bh");


typedef union {
struct {
unsigned SP1BRGL :8;
};
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __at(0x11B);

# 1218
typedef union {
struct {
unsigned SP1BRGL :8;
};
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __at(0x11B);

# 1230
typedef union {
struct {
unsigned SP1BRGL :8;
};
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __at(0x11B);

# 1242
typedef union {
struct {
unsigned SP1BRGL :8;
};
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __at(0x11B);

# 1257
extern volatile unsigned char SP1BRGH __at(0x11C);

asm("SP1BRGH equ 011Ch");


extern volatile unsigned char SPBRGH __at(0x11C);

asm("SPBRGH equ 011Ch");

extern volatile unsigned char SPBRGH1 __at(0x11C);

asm("SPBRGH1 equ 011Ch");


typedef union {
struct {
unsigned SP1BRGH :8;
};
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __at(0x11C);

# 1284
typedef union {
struct {
unsigned SP1BRGH :8;
};
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __at(0x11C);

# 1296
typedef union {
struct {
unsigned SP1BRGH :8;
};
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __at(0x11C);

# 1311
extern volatile unsigned char RC1STA __at(0x11D);

asm("RC1STA equ 011Dh");


extern volatile unsigned char RCSTA1 __at(0x11D);

asm("RCSTA1 equ 011Dh");

extern volatile unsigned char RCSTA __at(0x11D);

asm("RCSTA equ 011Dh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __at(0x11D);

# 1380
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0x11D);

# 1434
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0x11D);

# 1491
extern volatile unsigned char TX1STA __at(0x11E);

asm("TX1STA equ 011Eh");


extern volatile unsigned char TXSTA1 __at(0x11E);

asm("TXSTA1 equ 011Eh");

extern volatile unsigned char TXSTA __at(0x11E);

asm("TXSTA equ 011Eh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __at(0x11E);

# 1560
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0x11E);

# 1614
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0x11E);

# 1671
extern volatile unsigned char BAUD1CON __at(0x11F);

asm("BAUD1CON equ 011Fh");


extern volatile unsigned char BAUDCON1 __at(0x11F);

asm("BAUDCON1 equ 011Fh");

extern volatile unsigned char BAUDCTL1 __at(0x11F);

asm("BAUDCTL1 equ 011Fh");

extern volatile unsigned char BAUDCON __at(0x11F);

asm("BAUDCON equ 011Fh");

extern volatile unsigned char BAUDCTL __at(0x11F);

asm("BAUDCTL equ 011Fh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __at(0x11F);

# 1738
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __at(0x11F);

# 1782
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __at(0x11F);

# 1826
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0x11F);

# 1870
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0x11F);

# 1917
extern volatile unsigned char SSP1BUF __at(0x18C);

asm("SSP1BUF equ 018Ch");


typedef union {
struct {
unsigned SSPBUF :8;
};
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __at(0x18C);

# 1937
extern volatile unsigned char SSP1ADD __at(0x18D);

asm("SSP1ADD equ 018Dh");


typedef union {
struct {
unsigned SSPADD :8;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __at(0x18D);

# 2057
extern volatile unsigned char SSP1MSK __at(0x18E);

asm("SSP1MSK equ 018Eh");


typedef union {
struct {
unsigned SSPMSK :8;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __at(0x18E);

# 2127
extern volatile unsigned char SSP1STAT __at(0x18F);

asm("SSP1STAT equ 018Fh");


typedef union {
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned R :1;
unsigned START :1;
unsigned STOP :1;
unsigned D :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned I2C_START1 :1;
unsigned I2C_STOP2 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned I2C_READ1 :1;
unsigned S2 :1;
unsigned P2 :1;
unsigned DATA_ADDRESS1 :1;
};
struct {
unsigned :2;
unsigned READ_WRITE1 :1;
unsigned :2;
unsigned D_A1 :1;
};
struct {
unsigned :2;
unsigned R_W1 :1;
unsigned :2;
unsigned D_nA1 :1;
};
struct {
unsigned :2;
unsigned R_nW1 :1;
unsigned :2;
unsigned I2C_DAT1 :1;
};
struct {
unsigned :2;
unsigned nW2 :1;
unsigned :2;
unsigned nA2 :1;
};
struct {
unsigned :2;
unsigned nWRITE1 :1;
unsigned :2;
unsigned nADDRESS1 :1;
};
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __at(0x18F);

# 2491
extern volatile unsigned char SSP1CON1 __at(0x190);

asm("SSP1CON1 equ 0190h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __at(0x190);

# 2611
extern volatile unsigned char SSP1CON2 __at(0x191);

asm("SSP1CON2 equ 0191h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK :5;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __at(0x191);

# 2798
extern volatile unsigned char SSP1CON3 __at(0x192);

asm("SSP1CON3 equ 0192h");


typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __at(0x192);

# 2860
extern volatile unsigned short TMR1 __at(0x20C);

asm("TMR1 equ 020Ch");




extern volatile unsigned char TMR1L __at(0x20C);

asm("TMR1L equ 020Ch");


typedef union {
struct {
unsigned TMR1L0 :1;
unsigned TMR1L1 :1;
unsigned TMR1L2 :1;
unsigned TMR1L3 :1;
unsigned TMR1L4 :1;
unsigned TMR1L5 :1;
unsigned TMR1L6 :1;
unsigned TMR1L7 :1;
};
struct {
unsigned TMR1L :8;
};
struct {
unsigned TMR10 :1;
unsigned TMR11 :1;
unsigned TMR12 :1;
unsigned TMR13 :1;
unsigned TMR14 :1;
unsigned TMR15 :1;
unsigned TMR16 :1;
unsigned TMR17 :1;
};
struct {
unsigned CAL01 :1;
unsigned CAL11 :1;
unsigned CAL21 :1;
unsigned CAL31 :1;
unsigned CAL41 :1;
unsigned CAL51 :1;
unsigned CAL61 :1;
unsigned CAL71 :1;
};
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __at(0x20C);

# 3037
extern volatile unsigned char TMR1H __at(0x20D);

asm("TMR1H equ 020Dh");


typedef union {
struct {
unsigned TMR1H0 :1;
unsigned TMR1H1 :1;
unsigned TMR1H2 :1;
unsigned TMR1H3 :1;
unsigned TMR1H4 :1;
unsigned TMR1H5 :1;
unsigned TMR1H6 :1;
unsigned TMR1H7 :1;
};
struct {
unsigned TMR1H :8;
};
struct {
unsigned TMR18 :1;
unsigned TMR19 :1;
unsigned TMR110 :1;
unsigned TMR111 :1;
unsigned TMR112 :1;
unsigned TMR113 :1;
unsigned TMR114 :1;
unsigned TMR115 :1;
};
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __at(0x20D);

# 3157
extern volatile unsigned char T1CON __at(0x20E);

asm("T1CON equ 020Eh");


typedef union {
struct {
unsigned ON :1;
unsigned RD16 :1;
unsigned nSYNC :1;
unsigned :1;
unsigned CKPS :2;
};
struct {
unsigned TMR1ON :1;
unsigned T1RD16 :1;
unsigned nT1SYNC :1;
unsigned :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :4;
unsigned CKPS0 :1;
unsigned CKPS1 :1;
};
struct {
unsigned :1;
unsigned RD161 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0x20E);

# 3253
extern volatile unsigned char T1GCON __at(0x20F);

asm("T1GCON equ 020Fh");


extern volatile unsigned char PR1 __at(0x20F);

asm("PR1 equ 020Fh");


typedef union {
struct {
unsigned :2;
unsigned GVAL :1;
unsigned GGO_nDONE :1;
unsigned GSPM :1;
unsigned GTM :1;
unsigned GPOL :1;
unsigned GE :1;
};
struct {
unsigned :2;
unsigned T1GVAL :1;
unsigned T1GGO_nDONE :1;
unsigned T1GSPM :1;
unsigned T1GTM :1;
unsigned T1GPOL :1;
unsigned T1GE :1;
};
struct {
unsigned :3;
unsigned T1GGO :1;
};
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __at(0x20F);

# 3355
typedef union {
struct {
unsigned :2;
unsigned GVAL :1;
unsigned GGO_nDONE :1;
unsigned GSPM :1;
unsigned GTM :1;
unsigned GPOL :1;
unsigned GE :1;
};
struct {
unsigned :2;
unsigned T1GVAL :1;
unsigned T1GGO_nDONE :1;
unsigned T1GSPM :1;
unsigned T1GTM :1;
unsigned T1GPOL :1;
unsigned T1GE :1;
};
struct {
unsigned :3;
unsigned T1GGO :1;
};
} PR1bits_t;
extern volatile PR1bits_t PR1bits __at(0x20F);

# 3449
extern volatile unsigned char T1GATE __at(0x210);

asm("T1GATE equ 0210h");


extern volatile unsigned char TMR1GATE __at(0x210);

asm("TMR1GATE equ 0210h");


typedef union {
struct {
unsigned GSS :5;
};
struct {
unsigned GSS0 :1;
unsigned GSS1 :1;
unsigned GSS2 :1;
unsigned GSS3 :1;
unsigned GSS4 :1;
};
struct {
unsigned T1GSS0 :1;
unsigned T1GSS1 :1;
unsigned T1GSS2 :1;
unsigned T1GSS3 :1;
unsigned T1GSS4 :1;
};
} T1GATEbits_t;
extern volatile T1GATEbits_t T1GATEbits __at(0x210);

# 3536
typedef union {
struct {
unsigned GSS :5;
};
struct {
unsigned GSS0 :1;
unsigned GSS1 :1;
unsigned GSS2 :1;
unsigned GSS3 :1;
unsigned GSS4 :1;
};
struct {
unsigned T1GSS0 :1;
unsigned T1GSS1 :1;
unsigned T1GSS2 :1;
unsigned T1GSS3 :1;
unsigned T1GSS4 :1;
};
} TMR1GATEbits_t;
extern volatile TMR1GATEbits_t TMR1GATEbits __at(0x210);

# 3615
extern volatile unsigned char T1CLK __at(0x211);

asm("T1CLK equ 0211h");


extern volatile unsigned char TMR1CLK __at(0x211);

asm("TMR1CLK equ 0211h");


typedef union {
struct {
unsigned CS :4;
};
struct {
unsigned T1CS0 :1;
unsigned T1CS1 :1;
unsigned T1CS2 :1;
unsigned T1CS3 :1;
};
struct {
unsigned CS0 :1;
unsigned CS1 :1;
unsigned CS2 :1;
unsigned CS3 :1;
};
} T1CLKbits_t;
extern volatile T1CLKbits_t T1CLKbits __at(0x211);

# 3690
typedef union {
struct {
unsigned CS :4;
};
struct {
unsigned T1CS0 :1;
unsigned T1CS1 :1;
unsigned T1CS2 :1;
unsigned T1CS3 :1;
};
struct {
unsigned CS0 :1;
unsigned CS1 :1;
unsigned CS2 :1;
unsigned CS3 :1;
};
} TMR1CLKbits_t;
extern volatile TMR1CLKbits_t TMR1CLKbits __at(0x211);

# 3757
extern volatile unsigned char T2TMR __at(0x28C);

asm("T2TMR equ 028Ch");


extern volatile unsigned char TMR2 __at(0x28C);

asm("TMR2 equ 028Ch");


typedef union {
struct {
unsigned TMR :8;
};
struct {
unsigned TMR2 :8;
};
} T2TMRbits_t;
extern volatile T2TMRbits_t T2TMRbits __at(0x28C);

# 3788
typedef union {
struct {
unsigned TMR :8;
};
struct {
unsigned TMR2 :8;
};
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __at(0x28C);

# 3811
extern volatile unsigned char T2PR __at(0x28D);

asm("T2PR equ 028Dh");


extern volatile unsigned char PR2 __at(0x28D);

asm("PR2 equ 028Dh");


typedef union {
struct {
unsigned PR :8;
};
struct {
unsigned T2PR :8;
};
} T2PRbits_t;
extern volatile T2PRbits_t T2PRbits __at(0x28D);

# 3842
typedef union {
struct {
unsigned PR :8;
};
struct {
unsigned T2PR :8;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0x28D);

# 3865
extern volatile unsigned char T2CON __at(0x28E);

asm("T2CON equ 028Eh");


typedef union {
struct {
unsigned OUTPS :4;
unsigned CKPS :3;
unsigned ON :1;
};
struct {
unsigned OUTPS0 :1;
unsigned OUTPS1 :1;
unsigned OUTPS2 :1;
unsigned OUTPS3 :1;
unsigned CKPS0 :1;
unsigned CKPS1 :1;
unsigned CKPS2 :1;
};
struct {
unsigned T2OUTPS :4;
unsigned T2CKPS :3;
unsigned T2ON :1;
};
struct {
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned T2CKPS2 :1;
unsigned TMR2ON :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0x28E);

# 4011
extern volatile unsigned char T2HLT __at(0x28F);

asm("T2HLT equ 028Fh");


typedef union {
struct {
unsigned MODE :5;
unsigned CKSYNC :1;
unsigned CKPOL :1;
unsigned PSYNC :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
unsigned MODE3 :1;
unsigned MODE4 :1;
};
struct {
unsigned T2MODE :5;
unsigned T2CKSYNC :1;
unsigned T2CKPOL :1;
unsigned T2PSYNC :1;
};
struct {
unsigned T2MODE0 :1;
unsigned T2MODE1 :1;
unsigned T2MODE2 :1;
unsigned T2MODE3 :1;
unsigned T2MODE4 :1;
};
} T2HLTbits_t;
extern volatile T2HLTbits_t T2HLTbits __at(0x28F);

# 4139
extern volatile unsigned char T2CLKCON __at(0x290);

asm("T2CLKCON equ 0290h");


typedef union {
struct {
unsigned CS :4;
};
struct {
unsigned CS0 :1;
unsigned CS1 :1;
unsigned CS2 :1;
unsigned CS3 :1;
};
struct {
unsigned T2CS :4;
};
struct {
unsigned T2CS0 :1;
unsigned T2CS1 :1;
unsigned T2CS2 :1;
unsigned T2CS3 :1;
};
} T2CLKCONbits_t;
extern volatile T2CLKCONbits_t T2CLKCONbits __at(0x290);

# 4219
extern volatile unsigned char T2RST __at(0x291);

asm("T2RST equ 0291h");


typedef union {
struct {
unsigned RSEL :4;
};
struct {
unsigned RSEL0 :1;
unsigned RSEL1 :1;
unsigned RSEL2 :1;
unsigned RSEL3 :1;
};
struct {
unsigned T2RSEL :4;
};
struct {
unsigned T2RSEL0 :1;
unsigned T2RSEL1 :1;
unsigned T2RSEL2 :1;
unsigned T2RSEL3 :1;
};
} T2RSTbits_t;
extern volatile T2RSTbits_t T2RSTbits __at(0x291);

# 4299
extern volatile unsigned short CCPR1 __at(0x30C);

asm("CCPR1 equ 030Ch");




extern volatile unsigned char CCPR1L __at(0x30C);

asm("CCPR1L equ 030Ch");


typedef union {
struct {
unsigned RL :8;
};
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __at(0x30C);

# 4326
extern volatile unsigned char CCPR1H __at(0x30D);

asm("CCPR1H equ 030Dh");


typedef union {
struct {
unsigned RH :8;
};
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __at(0x30D);

# 4346
extern volatile unsigned char CCP1CON __at(0x30E);

asm("CCP1CON equ 030Eh");


typedef union {
struct {
unsigned MODE :4;
unsigned FMT :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
unsigned MODE3 :1;
};
struct {
unsigned CCP1MODE :4;
unsigned CCP1FMT :1;
unsigned CCP1OUT :1;
unsigned :1;
unsigned CCP1EN :1;
};
struct {
unsigned CCP1MODE0 :1;
unsigned CCP1MODE1 :1;
unsigned CCP1MODE2 :1;
unsigned CCP1MODE3 :1;
};
struct {
unsigned :7;
unsigned P1M1 :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0x30E);

# 4473
extern volatile unsigned char CCP1CAP __at(0x30F);

asm("CCP1CAP equ 030Fh");


typedef union {
struct {
unsigned CTS :8;
};
struct {
unsigned CTS0 :1;
unsigned CTS1 :1;
unsigned CTS2 :1;
};
struct {
unsigned CCP1CTS :8;
};
struct {
unsigned CCP1CTS0 :1;
unsigned CCP1CTS1 :1;
unsigned CCP1CTS2 :1;
};
} CCP1CAPbits_t;
extern volatile CCP1CAPbits_t CCP1CAPbits __at(0x30F);

# 4541
extern volatile unsigned short CCPR2 __at(0x310);

asm("CCPR2 equ 0310h");




extern volatile unsigned char CCPR2L __at(0x310);

asm("CCPR2L equ 0310h");


typedef union {
struct {
unsigned RL :8;
};
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __at(0x310);

# 4568
extern volatile unsigned char CCPR2H __at(0x311);

asm("CCPR2H equ 0311h");


typedef union {
struct {
unsigned RH :8;
};
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __at(0x311);

# 4588
extern volatile unsigned char CCP2CON __at(0x312);

asm("CCP2CON equ 0312h");


typedef union {
struct {
unsigned MODE :4;
unsigned FMT :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
unsigned MODE3 :1;
};
struct {
unsigned CCP2MODE :4;
unsigned CCP2FMT :1;
unsigned CCP2OUT :1;
unsigned :1;
unsigned CCP2EN :1;
};
struct {
unsigned CCP2MODE0 :1;
unsigned CCP2MODE1 :1;
unsigned CCP2MODE2 :1;
unsigned CCP2MODE3 :1;
};
struct {
unsigned :7;
unsigned P2M1 :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0x312);

# 4715
extern volatile unsigned char CCP2CAP __at(0x313);

asm("CCP2CAP equ 0313h");


typedef union {
struct {
unsigned CTS :8;
};
struct {
unsigned CTS0 :1;
unsigned CTS1 :1;
unsigned CTS2 :1;
};
struct {
unsigned CCP2CTS :8;
};
struct {
unsigned CCP2CTS0 :1;
unsigned CCP2CTS1 :1;
unsigned CCP2CTS2 :1;
};
} CCP2CAPbits_t;
extern volatile CCP2CAPbits_t CCP2CAPbits __at(0x313);

# 4783
extern volatile unsigned short PWM3DC __at(0x314);

asm("PWM3DC equ 0314h");




extern volatile unsigned char PWM3DCL __at(0x314);

asm("PWM3DCL equ 0314h");


typedef union {
struct {
unsigned :6;
unsigned DC :2;
};
struct {
unsigned :6;
unsigned DC0 :1;
unsigned DC1 :1;
};
struct {
unsigned :6;
unsigned PWM3DC0 :1;
unsigned PWM3DC1 :1;
};
struct {
unsigned :6;
unsigned PWMPW0 :1;
unsigned PWMPW1 :1;
};
} PWM3DCLbits_t;
extern volatile PWM3DCLbits_t PWM3DCLbits __at(0x314);

# 4856
extern volatile unsigned char PWM3DCH __at(0x315);

asm("PWM3DCH equ 0315h");


typedef union {
struct {
unsigned DC :8;
};
struct {
unsigned DC2 :1;
unsigned DC3 :1;
unsigned DC4 :1;
unsigned DC5 :1;
unsigned DC6 :1;
unsigned DC7 :1;
unsigned DC8 :1;
unsigned DC9 :1;
};
struct {
unsigned PWM3DC2 :1;
unsigned PWM3DC3 :1;
unsigned PWM3DC4 :1;
unsigned PWM3DC5 :1;
unsigned PWM3DC6 :1;
unsigned PWM3DC7 :1;
unsigned PWM3DC8 :1;
unsigned PWM3DC9 :1;
};
struct {
unsigned PWMPW2 :1;
unsigned PWMPW3 :1;
unsigned PWMPW4 :1;
unsigned PWMPW5 :1;
unsigned PWMPW6 :1;
unsigned PWMPW7 :1;
unsigned PWMPW8 :1;
unsigned PWMPW9 :1;
};
} PWM3DCHbits_t;
extern volatile PWM3DCHbits_t PWM3DCHbits __at(0x315);

# 5026
extern volatile unsigned char PWM3CON __at(0x316);

asm("PWM3CON equ 0316h");


typedef union {
struct {
unsigned :4;
unsigned POL :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned :4;
unsigned PWM3POL :1;
unsigned PWM3OUT :1;
unsigned :1;
unsigned PWM3EN :1;
};
} PWM3CONbits_t;
extern volatile PWM3CONbits_t PWM3CONbits __at(0x316);

# 5082
extern volatile unsigned short PWM4DC __at(0x318);

asm("PWM4DC equ 0318h");




extern volatile unsigned char PWM4DCL __at(0x318);

asm("PWM4DCL equ 0318h");


typedef union {
struct {
unsigned :6;
unsigned DC :2;
};
struct {
unsigned :6;
unsigned DC0 :1;
unsigned DC1 :1;
};
struct {
unsigned :6;
unsigned PWM4DC0 :1;
unsigned PWM4DC1 :1;
};
struct {
unsigned :6;
unsigned PWMPW0 :1;
unsigned PWMPW1 :1;
};
} PWM4DCLbits_t;
extern volatile PWM4DCLbits_t PWM4DCLbits __at(0x318);

# 5155
extern volatile unsigned char PWM4DCH __at(0x319);

asm("PWM4DCH equ 0319h");


typedef union {
struct {
unsigned DC :8;
};
struct {
unsigned DC2 :1;
unsigned DC3 :1;
unsigned DC4 :1;
unsigned DC5 :1;
unsigned DC6 :1;
unsigned DC7 :1;
unsigned DC8 :1;
unsigned DC9 :1;
};
struct {
unsigned PWM4DC2 :1;
unsigned PWM4DC3 :1;
unsigned PWM4DC4 :1;
unsigned PWM4DC5 :1;
unsigned PWM4DC6 :1;
unsigned PWM4DC7 :1;
unsigned PWM4DC8 :1;
unsigned PWM4DC9 :1;
};
struct {
unsigned PWMPW2 :1;
unsigned PWMPW3 :1;
unsigned PWMPW4 :1;
unsigned PWMPW5 :1;
unsigned PWMPW6 :1;
unsigned PWMPW7 :1;
unsigned PWMPW8 :1;
unsigned PWMPW9 :1;
};
} PWM4DCHbits_t;
extern volatile PWM4DCHbits_t PWM4DCHbits __at(0x319);

# 5325
extern volatile unsigned char PWM4CON __at(0x31A);

asm("PWM4CON equ 031Ah");


typedef union {
struct {
unsigned :4;
unsigned POL :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned :4;
unsigned PWM4POL :1;
unsigned PWM4OUT :1;
unsigned :1;
unsigned PWM4EN :1;
};
} PWM4CONbits_t;
extern volatile PWM4CONbits_t PWM4CONbits __at(0x31A);

# 5381
extern volatile unsigned short PWM5DC __at(0x31C);

asm("PWM5DC equ 031Ch");




extern volatile unsigned char PWM5DCL __at(0x31C);

asm("PWM5DCL equ 031Ch");


typedef union {
struct {
unsigned :6;
unsigned DC :2;
};
struct {
unsigned :6;
unsigned DC0 :1;
unsigned DC1 :1;
};
struct {
unsigned :6;
unsigned PWM5DC0 :1;
unsigned PWM5DC1 :1;
};
struct {
unsigned :6;
unsigned PWMPW0 :1;
unsigned PWMPW1 :1;
};
} PWM5DCLbits_t;
extern volatile PWM5DCLbits_t PWM5DCLbits __at(0x31C);

# 5454
extern volatile unsigned char PWM5DCH __at(0x31D);

asm("PWM5DCH equ 031Dh");


typedef union {
struct {
unsigned DC :8;
};
struct {
unsigned DC2 :1;
unsigned DC3 :1;
unsigned DC4 :1;
unsigned DC5 :1;
unsigned DC6 :1;
unsigned DC7 :1;
unsigned DC8 :1;
unsigned DC9 :1;
};
struct {
unsigned PWM5DC2 :1;
unsigned PWM5DC3 :1;
unsigned PWM5DC4 :1;
unsigned PWM5DC5 :1;
unsigned PWM5DC6 :1;
unsigned PWM5DC7 :1;
unsigned PWM5DC8 :1;
unsigned PWM5DC9 :1;
};
struct {
unsigned PWMPW2 :1;
unsigned PWMPW3 :1;
unsigned PWMPW4 :1;
unsigned PWMPW5 :1;
unsigned PWMPW6 :1;
unsigned PWMPW7 :1;
unsigned PWMPW8 :1;
unsigned PWMPW9 :1;
};
} PWM5DCHbits_t;
extern volatile PWM5DCHbits_t PWM5DCHbits __at(0x31D);

# 5624
extern volatile unsigned char PWM5CON __at(0x31E);

asm("PWM5CON equ 031Eh");


typedef union {
struct {
unsigned :4;
unsigned POL :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned :4;
unsigned PWM5POL :1;
unsigned PWM5OUT :1;
unsigned :1;
unsigned PWM5EN :1;
};
} PWM5CONbits_t;
extern volatile PWM5CONbits_t PWM5CONbits __at(0x31E);

# 5680
extern volatile unsigned short PWM6DC __at(0x38C);

asm("PWM6DC equ 038Ch");




extern volatile unsigned char PWM6DCL __at(0x38C);

asm("PWM6DCL equ 038Ch");


typedef union {
struct {
unsigned :6;
unsigned DC :2;
};
struct {
unsigned :6;
unsigned DC0 :1;
unsigned DC1 :1;
};
struct {
unsigned :6;
unsigned PWM6DC0 :1;
unsigned PWM6DC1 :1;
};
struct {
unsigned :6;
unsigned PWMPW0 :1;
unsigned PWMPW1 :1;
};
} PWM6DCLbits_t;
extern volatile PWM6DCLbits_t PWM6DCLbits __at(0x38C);

# 5753
extern volatile unsigned char PWM6DCH __at(0x38D);

asm("PWM6DCH equ 038Dh");


typedef union {
struct {
unsigned DC :8;
};
struct {
unsigned DC2 :1;
unsigned DC3 :1;
unsigned DC4 :1;
unsigned DC5 :1;
unsigned DC6 :1;
unsigned DC7 :1;
unsigned DC8 :1;
unsigned DC9 :1;
};
struct {
unsigned PWM6DC2 :1;
unsigned PWM6DC3 :1;
unsigned PWM6DC4 :1;
unsigned PWM6DC5 :1;
unsigned PWM6DC6 :1;
unsigned PWM6DC7 :1;
unsigned PWM6DC8 :1;
unsigned PWM6DC9 :1;
};
struct {
unsigned PWMPW2 :1;
unsigned PWMPW3 :1;
unsigned PWMPW4 :1;
unsigned PWMPW5 :1;
unsigned PWMPW6 :1;
unsigned PWMPW7 :1;
unsigned PWMPW8 :1;
unsigned PWMPW9 :1;
};
} PWM6DCHbits_t;
extern volatile PWM6DCHbits_t PWM6DCHbits __at(0x38D);

# 5923
extern volatile unsigned char PWM6CON __at(0x38E);

asm("PWM6CON equ 038Eh");


typedef union {
struct {
unsigned :4;
unsigned POL :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned :4;
unsigned PWM6POL :1;
unsigned PWM6OUT :1;
unsigned :1;
unsigned PWM6EN :1;
};
} PWM6CONbits_t;
extern volatile PWM6CONbits_t PWM6CONbits __at(0x38E);

# 5980
extern volatile __uint24 NCO1ACC __at(0x58C);


asm("NCO1ACC equ 058Ch");




extern volatile unsigned char NCO1ACCL __at(0x58C);

asm("NCO1ACCL equ 058Ch");


typedef union {
struct {
unsigned NCO1ACC0 :1;
unsigned NCO1ACC1 :1;
unsigned NCO1ACC2 :1;
unsigned NCO1ACC3 :1;
unsigned NCO1ACC4 :1;
unsigned NCO1ACC5 :1;
unsigned NCO1ACC6 :1;
unsigned NCO1ACC7 :1;
};
struct {
unsigned NCO1ACC :8;
};
} NCO1ACCLbits_t;
extern volatile NCO1ACCLbits_t NCO1ACCLbits __at(0x58C);

# 6058
extern volatile unsigned char NCO1ACCH __at(0x58D);

asm("NCO1ACCH equ 058Dh");


typedef union {
struct {
unsigned NCO1ACC8 :1;
unsigned NCO1ACC9 :1;
unsigned NCO1ACC10 :1;
unsigned NCO1ACC11 :1;
unsigned NCO1ACC12 :1;
unsigned NCO1ACC13 :1;
unsigned NCO1ACC14 :1;
unsigned NCO1ACC15 :1;
};
struct {
unsigned NCO1ACC :8;
};
} NCO1ACCHbits_t;
extern volatile NCO1ACCHbits_t NCO1ACCHbits __at(0x58D);

# 6128
extern volatile unsigned char NCO1ACCU __at(0x58E);

asm("NCO1ACCU equ 058Eh");


typedef union {
struct {
unsigned NCO1ACC16 :1;
unsigned NCO1ACC17 :1;
unsigned NCO1ACC18 :1;
unsigned NCO1ACC19 :1;
};
struct {
unsigned NCO1ACC :8;
};
} NCO1ACCUbits_t;
extern volatile NCO1ACCUbits_t NCO1ACCUbits __at(0x58E);

# 6175
extern volatile __uint24 NCO1INC __at(0x58F);


asm("NCO1INC equ 058Fh");




extern volatile unsigned char NCO1INCL __at(0x58F);

asm("NCO1INCL equ 058Fh");


typedef union {
struct {
unsigned NCO1INC0 :1;
unsigned NCO1INC1 :1;
unsigned NCO1INC2 :1;
unsigned NCO1INC3 :1;
unsigned NCO1INC4 :1;
unsigned NCO1INC5 :1;
unsigned NCO1INC6 :1;
unsigned NCO1INC7 :1;
};
struct {
unsigned NCO1INC :8;
};
} NCO1INCLbits_t;
extern volatile NCO1INCLbits_t NCO1INCLbits __at(0x58F);

# 6253
extern volatile unsigned char NCO1INCH __at(0x590);

asm("NCO1INCH equ 0590h");


typedef union {
struct {
unsigned NCO1INC8 :1;
unsigned NCO1INC9 :1;
unsigned NCO1INC10 :1;
unsigned NCO1INC11 :1;
unsigned NCO1INC12 :1;
unsigned NCO1INC13 :1;
unsigned NCO1INC14 :1;
unsigned NCO1INC15 :1;
};
struct {
unsigned NCO1INC :8;
};
} NCO1INCHbits_t;
extern volatile NCO1INCHbits_t NCO1INCHbits __at(0x590);

# 6323
extern volatile unsigned char NCO1INCU __at(0x591);

asm("NCO1INCU equ 0591h");


typedef union {
struct {
unsigned NCO1INC16 :1;
unsigned NCO1INC17 :1;
unsigned NCO1INC18 :1;
unsigned NCO1INC19 :1;
};
struct {
unsigned NCO1INC :8;
};
} NCO1INCUbits_t;
extern volatile NCO1INCUbits_t NCO1INCUbits __at(0x591);

# 6369
extern volatile unsigned char NCO1CON __at(0x592);

asm("NCO1CON equ 0592h");


typedef union {
struct {
unsigned N1PFM :1;
unsigned :3;
unsigned N1POL :1;
unsigned N1OUT :1;
unsigned :1;
unsigned N1EN :1;
};
} NCO1CONbits_t;
extern volatile NCO1CONbits_t NCO1CONbits __at(0x592);

# 6409
extern volatile unsigned char NCO1CLK __at(0x593);

asm("NCO1CLK equ 0593h");


typedef union {
struct {
unsigned N1CKS0 :1;
unsigned N1CKS1 :1;
unsigned N1CKS2 :1;
unsigned N1CKS3 :1;
unsigned :1;
unsigned N1PWS0 :1;
unsigned N1PWS1 :1;
unsigned N1PWS2 :1;
};
struct {
unsigned N1CKS :4;
unsigned :1;
unsigned N1PWS :3;
};
} NCO1CLKbits_t;
extern volatile NCO1CLKbits_t NCO1CLKbits __at(0x593);

# 6481
extern volatile unsigned char TMR0L __at(0x59C);

asm("TMR0L equ 059Ch");


extern volatile unsigned char TMR0 __at(0x59C);

asm("TMR0 equ 059Ch");


typedef union {
struct {
unsigned TMR0L :8;
};
struct {
unsigned TMR0L0 :1;
unsigned TMR0L1 :1;
unsigned TMR0L2 :1;
unsigned TMR0L3 :1;
unsigned TMR0L4 :1;
unsigned TMR0L5 :1;
unsigned TMR0L6 :1;
unsigned TMR0L7 :1;
};
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __at(0x59C);

# 6554
typedef union {
struct {
unsigned TMR0L :8;
};
struct {
unsigned TMR0L0 :1;
unsigned TMR0L1 :1;
unsigned TMR0L2 :1;
unsigned TMR0L3 :1;
unsigned TMR0L4 :1;
unsigned TMR0L5 :1;
unsigned TMR0L6 :1;
unsigned TMR0L7 :1;
};
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __at(0x59C);

# 6619
extern volatile unsigned char TMR0H __at(0x59D);

asm("TMR0H equ 059Dh");


extern volatile unsigned char PR0 __at(0x59D);

asm("PR0 equ 059Dh");


typedef union {
struct {
unsigned TMR0H :8;
};
struct {
unsigned T0PR :8;
};
struct {
unsigned TMR0H0 :1;
unsigned TMR0H1 :1;
unsigned TMR0H2 :1;
unsigned TMR0H3 :1;
unsigned TMR0H4 :1;
unsigned TMR0H5 :1;
unsigned TMR0H6 :1;
unsigned TMR0H7 :1;
};
struct {
unsigned T0PR0 :1;
unsigned T0PR1 :1;
unsigned T0PR2 :1;
unsigned T0PR3 :1;
unsigned T0PR4 :1;
unsigned T0PR5 :1;
unsigned T0PR6 :1;
unsigned T0PR7 :1;
};
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __at(0x59D);

# 6750
typedef union {
struct {
unsigned TMR0H :8;
};
struct {
unsigned T0PR :8;
};
struct {
unsigned TMR0H0 :1;
unsigned TMR0H1 :1;
unsigned TMR0H2 :1;
unsigned TMR0H3 :1;
unsigned TMR0H4 :1;
unsigned TMR0H5 :1;
unsigned TMR0H6 :1;
unsigned TMR0H7 :1;
};
struct {
unsigned T0PR0 :1;
unsigned T0PR1 :1;
unsigned T0PR2 :1;
unsigned T0PR3 :1;
unsigned T0PR4 :1;
unsigned T0PR5 :1;
unsigned T0PR6 :1;
unsigned T0PR7 :1;
};
} PR0bits_t;
extern volatile PR0bits_t PR0bits __at(0x59D);

# 6873
extern volatile unsigned char T0CON0 __at(0x59E);

asm("T0CON0 equ 059Eh");


typedef union {
struct {
unsigned T0OUTPS :4;
unsigned T016BIT :1;
unsigned T0OUT :1;
unsigned :1;
unsigned T0EN :1;
};
struct {
unsigned T0OUTPS0 :1;
unsigned T0OUTPS1 :1;
unsigned T0OUTPS2 :1;
unsigned T0OUTPS3 :1;
};
} T0CON0bits_t;
extern volatile T0CON0bits_t T0CON0bits __at(0x59E);

# 6938
extern volatile unsigned char T0CON1 __at(0x59F);

asm("T0CON1 equ 059Fh");


typedef union {
struct {
unsigned T0CKPS :4;
unsigned T0ASYNC :1;
unsigned T0CS :3;
};
struct {
unsigned T0CKPS0 :1;
unsigned T0CKPS1 :1;
unsigned T0CKPS2 :1;
unsigned T0CKPS3 :1;
unsigned :1;
unsigned T0CS0 :1;
unsigned T0CS1 :1;
unsigned T0CS2 :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
unsigned T0PS3 :1;
};
struct {
unsigned T0PS :4;
};
} T0CON1bits_t;
extern volatile T0CON1bits_t T0CON1bits __at(0x59F);

# 7049
extern volatile unsigned char CWG1CLKCON __at(0x60C);

asm("CWG1CLKCON equ 060Ch");


typedef union {
struct {
unsigned CS :1;
};
struct {
unsigned CWG1CS :1;
};
} CWG1CLKCONbits_t;
extern volatile CWG1CLKCONbits_t CWG1CLKCONbits __at(0x60C);

# 7077
extern volatile unsigned char CWG1DAT __at(0x60D);

asm("CWG1DAT equ 060Dh");


typedef union {
struct {
unsigned DAT :4;
};
struct {
unsigned CWG1DAT0 :1;
unsigned CWG1DAT1 :1;
unsigned CWG1DAT2 :1;
unsigned CWG1DAT3 :1;
};
} CWG1DATbits_t;
extern volatile CWG1DATbits_t CWG1DATbits __at(0x60D);

# 7123
extern volatile unsigned char CWG1DBR __at(0x60E);

asm("CWG1DBR equ 060Eh");


typedef union {
struct {
unsigned DBR :6;
};
struct {
unsigned DBR0 :1;
unsigned DBR1 :1;
unsigned DBR2 :1;
unsigned DBR3 :1;
unsigned DBR4 :1;
unsigned DBR5 :1;
};
struct {
unsigned CWG1DBR :6;
};
struct {
unsigned CWG1DBR0 :1;
unsigned CWG1DBR1 :1;
unsigned CWG1DBR2 :1;
unsigned CWG1DBR3 :1;
unsigned CWG1DBR4 :1;
unsigned CWG1DBR5 :1;
};
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __at(0x60E);

# 7227
extern volatile unsigned char CWG1DBF __at(0x60F);

asm("CWG1DBF equ 060Fh");


typedef union {
struct {
unsigned DBF :6;
};
struct {
unsigned DBF0 :1;
unsigned DBF1 :1;
unsigned DBF2 :1;
unsigned DBF3 :1;
unsigned DBF4 :1;
unsigned DBF5 :1;
};
struct {
unsigned CWG1DBF :6;
};
struct {
unsigned CWG1DBF0 :1;
unsigned CWG1DBF1 :1;
unsigned CWG1DBF2 :1;
unsigned CWG1DBF3 :1;
unsigned CWG1DBF4 :1;
unsigned CWG1DBF5 :1;
};
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __at(0x60F);

# 7331
extern volatile unsigned char CWG1CON0 __at(0x610);

asm("CWG1CON0 equ 0610h");


typedef union {
struct {
unsigned MODE :3;
unsigned :3;
unsigned LD :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
unsigned :4;
unsigned G1EN :1;
};
struct {
unsigned CWG1MODE :3;
unsigned :3;
unsigned CWG1LD :1;
unsigned CWG1EN :1;
};
struct {
unsigned CWG1MODE0 :1;
unsigned CWG1MODE1 :1;
unsigned CWG1MODE2 :1;
};
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __at(0x610);

# 7432
extern volatile unsigned char CWG1CON1 __at(0x611);

asm("CWG1CON1 equ 0611h");


typedef union {
struct {
unsigned POLA :1;
unsigned POLB :1;
unsigned POLC :1;
unsigned POLD :1;
unsigned :1;
unsigned IN :1;
};
struct {
unsigned CWG1POLA :1;
unsigned CWG1POLB :1;
unsigned CWG1POLC :1;
unsigned CWG1POLD :1;
unsigned :1;
unsigned CWG1IN :1;
};
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __at(0x611);

# 7510
extern volatile unsigned char CWG1AS0 __at(0x612);

asm("CWG1AS0 equ 0612h");


typedef union {
struct {
unsigned :2;
unsigned LSAC :2;
unsigned LSBD :2;
unsigned REN :1;
unsigned SHUTDOWN :1;
};
struct {
unsigned :2;
unsigned LSAC0 :1;
unsigned LSAC1 :1;
unsigned LSBD0 :1;
unsigned LSBD1 :1;
};
struct {
unsigned :2;
unsigned CWG1LSAC :2;
unsigned CWG1LSBD :2;
unsigned CWG1REN :1;
unsigned CWG1SHUTDOWN :1;
};
struct {
unsigned :2;
unsigned CWG1LSAC0 :1;
unsigned CWG1LSAC1 :1;
unsigned CWG1LSBD0 :1;
unsigned CWG1LSBD1 :1;
};
} CWG1AS0bits_t;
extern volatile CWG1AS0bits_t CWG1AS0bits __at(0x612);

# 7630
extern volatile unsigned char CWG1AS1 __at(0x613);

asm("CWG1AS1 equ 0613h");


typedef union {
struct {
unsigned AS0E :1;
unsigned AS1E :1;
unsigned AS2E :1;
unsigned AS3E :1;
unsigned AS4E :1;
};
} CWG1AS1bits_t;
extern volatile CWG1AS1bits_t CWG1AS1bits __at(0x613);

# 7674
extern volatile unsigned char CWG1STR __at(0x614);

asm("CWG1STR equ 0614h");


typedef union {
struct {
unsigned STRA :1;
unsigned STRB :1;
unsigned STRC :1;
unsigned STRD :1;
unsigned OVRA :1;
unsigned OVRB :1;
unsigned OVRC :1;
unsigned OVRD :1;
};
struct {
unsigned CWG1STRA :1;
unsigned CWG1STRB :1;
unsigned CWG1STRC :1;
unsigned CWG1STRD :1;
unsigned CWG1OVRA :1;
unsigned CWG1OVRB :1;
unsigned CWG1OVRC :1;
unsigned CWG1OVRD :1;
};
} CWG1STRbits_t;
extern volatile CWG1STRbits_t CWG1STRbits __at(0x614);

# 7786
extern volatile unsigned char PIR0 __at(0x70C);

asm("PIR0 equ 070Ch");


typedef union {
struct {
unsigned INTF :1;
unsigned :3;
unsigned IOCIF :1;
unsigned TMR0IF :1;
};
} PIR0bits_t;
extern volatile PIR0bits_t PIR0bits __at(0x70C);

# 7819
extern volatile unsigned char PIR1 __at(0x70D);

asm("PIR1 equ 070Dh");


typedef union {
struct {
unsigned ADIF :1;
unsigned ADTIF :1;
unsigned :4;
unsigned CSWIF :1;
unsigned OSFIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0x70D);

# 7858
extern volatile unsigned char PIR2 __at(0x70E);

asm("PIR2 equ 070Eh");


typedef union {
struct {
unsigned C1IF :1;
unsigned C2IF :1;
unsigned :4;
unsigned ZCDIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0x70E);

# 7891
extern volatile unsigned char PIR3 __at(0x70F);

asm("PIR3 equ 070Fh");


typedef union {
struct {
unsigned SSP1IF :1;
unsigned BCL1IF :1;
unsigned :2;
unsigned TX1IF :1;
unsigned RC1IF :1;
unsigned TX2IF :1;
unsigned RC2IF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0x70F);

# 7942
extern volatile unsigned char PIR4 __at(0x710);

asm("PIR4 equ 0710h");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
};
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __at(0x710);

# 7968
extern volatile unsigned char PIR5 __at(0x711);

asm("PIR5 equ 0711h");


typedef union {
struct {
unsigned TMR1GIF :1;
unsigned :3;
unsigned CLC1IF :1;
unsigned CLC2IF :1;
unsigned CLC3IF :1;
unsigned CLC4IF :1;
};
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __at(0x711);

# 8013
extern volatile unsigned char PIR6 __at(0x712);

asm("PIR6 equ 0712h");


typedef union {
struct {
unsigned CCP1IF :1;
unsigned CCP2IF :1;
};
} PIR6bits_t;
extern volatile PIR6bits_t PIR6bits __at(0x712);

# 8039
extern volatile unsigned char PIR7 __at(0x713);

asm("PIR7 equ 0713h");


typedef union {
struct {
unsigned CWG1IF :1;
unsigned :3;
unsigned NCO1IF :1;
unsigned NVMIF :1;
};
struct {
unsigned :4;
unsigned NCOIF :1;
};
} PIR7bits_t;
extern volatile PIR7bits_t PIR7bits __at(0x713);

# 8081
extern volatile unsigned char PIE0 __at(0x716);

asm("PIE0 equ 0716h");


typedef union {
struct {
unsigned INTE :1;
unsigned :3;
unsigned IOCIE :1;
unsigned TMR0IE :1;
};
} PIE0bits_t;
extern volatile PIE0bits_t PIE0bits __at(0x716);

# 8114
extern volatile unsigned char PIE1 __at(0x717);

asm("PIE1 equ 0717h");


typedef union {
struct {
unsigned ADIE :1;
unsigned :5;
unsigned CSWIE :1;
unsigned OSFIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0x717);

# 8147
extern volatile unsigned char PIE2 __at(0x718);

asm("PIE2 equ 0718h");


typedef union {
struct {
unsigned C1IE :1;
unsigned C2IE :1;
unsigned :4;
unsigned ZCDIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0x718);

# 8180
extern volatile unsigned char PIE3 __at(0x719);

asm("PIE3 equ 0719h");


typedef union {
struct {
unsigned SSP1IE :1;
unsigned BCL1IE :1;
unsigned :2;
unsigned TX1IE :1;
unsigned RC1IE :1;
unsigned TX2IE :1;
unsigned RC2IE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0x719);

# 8231
extern volatile unsigned char PIE4 __at(0x71A);

asm("PIE4 equ 071Ah");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
};
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __at(0x71A);

# 8257
extern volatile unsigned char PIE5 __at(0x71B);

asm("PIE5 equ 071Bh");


typedef union {
struct {
unsigned TMR1GIE :1;
unsigned :3;
unsigned CLC1IE :1;
unsigned CLC2IE :1;
unsigned CLC3IE :1;
unsigned CLC4IE :1;
};
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __at(0x71B);

# 8302
extern volatile unsigned char PIE6 __at(0x71C);

asm("PIE6 equ 071Ch");


typedef union {
struct {
unsigned CCP1IE :1;
unsigned CCP2IE :1;
};
} PIE6bits_t;
extern volatile PIE6bits_t PIE6bits __at(0x71C);

# 8328
extern volatile unsigned char PIE7 __at(0x71D);

asm("PIE7 equ 071Dh");


typedef union {
struct {
unsigned CWG1IE :1;
unsigned :3;
unsigned NCO1IE :1;
unsigned NVMIE :1;
};
struct {
unsigned :4;
unsigned NCOIE :1;
};
} PIE7bits_t;
extern volatile PIE7bits_t PIE7bits __at(0x71D);

# 8370
extern volatile unsigned char PMD0 __at(0x796);

asm("PMD0 equ 0796h");


typedef union {
struct {
unsigned IOCMD :1;
unsigned CLKRMD :1;
unsigned NVMMD :1;
unsigned :3;
unsigned FVRMD :1;
unsigned SYSCMD :1;
};
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __at(0x796);

# 8415
extern volatile unsigned char PMD1 __at(0x797);

asm("PMD1 equ 0797h");


typedef union {
struct {
unsigned TMR0MD :1;
unsigned TMR1MD :1;
unsigned TMR2MD :1;
unsigned :4;
unsigned DDS1MD :1;
};
struct {
unsigned :7;
unsigned NCOMD :1;
};
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __at(0x797);

# 8463
extern volatile unsigned char PMD2 __at(0x798);

asm("PMD2 equ 0798h");


typedef union {
struct {
unsigned ZCDMD :1;
unsigned CMP1MD :1;
unsigned CMP2MD :1;
unsigned :2;
unsigned ADCMD :1;
unsigned DAC1MD :1;
};
} PMD2bits_t;
extern volatile PMD2bits_t PMD2bits __at(0x798);

# 8508
extern volatile unsigned char PMD3 __at(0x799);

asm("PMD3 equ 0799h");


typedef union {
struct {
unsigned CCP1MD :1;
unsigned CCP2MD :1;
unsigned PWM3MD :1;
unsigned PWM4MD :1;
unsigned PWM5MD :1;
unsigned PWM6MD :1;
};
} PMD3bits_t;
extern volatile PMD3bits_t PMD3bits __at(0x799);

# 8558
extern volatile unsigned char PMD4 __at(0x79A);

asm("PMD4 equ 079Ah");


typedef union {
struct {
unsigned CWG1MD :1;
unsigned :3;
unsigned MSSP1MD :1;
unsigned :1;
unsigned UART1MD :1;
unsigned UART2MD :1;
};
} PMD4bits_t;
extern volatile PMD4bits_t PMD4bits __at(0x79A);

# 8598
extern volatile unsigned char PMD5 __at(0x79B);

asm("PMD5 equ 079Bh");


typedef union {
struct {
unsigned :1;
unsigned CLC1MD :1;
unsigned CLC2MD :1;
unsigned CLC3MD :1;
unsigned CLC4MD :1;
};
} PMD5bits_t;
extern volatile PMD5bits_t PMD5bits __at(0x79B);

# 8637
extern volatile unsigned char WDTCON0 __at(0x80C);

asm("WDTCON0 equ 080Ch");


typedef union {
struct {
unsigned SEN :1;
unsigned WDTPS :5;
};
struct {
unsigned SWDTEN :1;
};
struct {
unsigned WDTSEN :1;
};
struct {
unsigned :1;
unsigned WDTPS0 :1;
unsigned WDTPS1 :1;
unsigned WDTPS2 :1;
unsigned WDTPS3 :1;
unsigned WDTPS4 :1;
};
} WDTCON0bits_t;
extern volatile WDTCON0bits_t WDTCON0bits __at(0x80C);

# 8712
extern volatile unsigned char WDTCON1 __at(0x80D);

asm("WDTCON1 equ 080Dh");


typedef union {
struct {
unsigned WINDOW :3;
unsigned :1;
unsigned WDTCS :3;
};
struct {
unsigned WINDOW0 :1;
unsigned WINDOW1 :1;
unsigned WINDOW2 :1;
};
struct {
unsigned WDTWINDOW :3;
};
struct {
unsigned WDTWINDOW0 :1;
unsigned WDTWINDOW1 :1;
unsigned WDTWINDOW2 :1;
unsigned :1;
unsigned WDTCS0 :1;
unsigned WDTCS1 :1;
unsigned WDTCS2 :1;
};
} WDTCON1bits_t;
extern volatile WDTCON1bits_t WDTCON1bits __at(0x80D);

# 8806
extern volatile unsigned char WDTPSL __at(0x80E);

asm("WDTPSL equ 080Eh");


typedef union {
struct {
unsigned PSCNT :8;
};
struct {
unsigned PSCNT0 :1;
unsigned PSCNT1 :1;
unsigned PSCNT2 :1;
unsigned PSCNT3 :1;
unsigned PSCNT4 :1;
unsigned PSCNT5 :1;
unsigned PSCNT6 :1;
unsigned PSCNT7 :1;
};
struct {
unsigned WDTPSCNT :8;
};
struct {
unsigned WDTPSCNT0 :1;
unsigned WDTPSCNT1 :1;
unsigned WDTPSCNT2 :1;
unsigned WDTPSCNT3 :1;
unsigned WDTPSCNT4 :1;
unsigned WDTPSCNT5 :1;
unsigned WDTPSCNT6 :1;
unsigned WDTPSCNT7 :1;
};
} WDTPSLbits_t;
extern volatile WDTPSLbits_t WDTPSLbits __at(0x80E);

# 8934
extern volatile unsigned char WDTPSH __at(0x80F);

asm("WDTPSH equ 080Fh");


typedef union {
struct {
unsigned PSCNT :8;
};
struct {
unsigned PSCNT8 :1;
unsigned PSCNT9 :1;
unsigned PSCNT10 :1;
unsigned PSCNT11 :1;
unsigned PSCNT12 :1;
unsigned PSCNT13 :1;
unsigned PSCNT14 :1;
unsigned PSCNT15 :1;
};
struct {
unsigned WDTPSCNT :8;
};
struct {
unsigned WDTPSCNT8 :1;
unsigned WDTPSCNT9 :1;
unsigned WDTPSCNT10 :1;
unsigned WDTPSCNT11 :1;
unsigned WDTPSCNT12 :1;
unsigned WDTPSCNT13 :1;
unsigned WDTPSCNT14 :1;
unsigned WDTPSCNT15 :1;
};
} WDTPSHbits_t;
extern volatile WDTPSHbits_t WDTPSHbits __at(0x80F);

# 9062
extern volatile unsigned char WDTTMR __at(0x810);

asm("WDTTMR equ 0810h");


typedef union {
struct {
unsigned PSCNT16 :1;
unsigned PSCNT17 :1;
unsigned STATE :1;
unsigned WDTTMR :5;
};
struct {
unsigned WDTPSCNT16 :1;
unsigned WDTPSCNT17 :1;
unsigned WDTSTATE :1;
unsigned WDTTMR0 :1;
unsigned WDTTMR1 :1;
unsigned WDTTMR2 :1;
unsigned WDTTMR3 :1;
};
} WDTTMRbits_t;
extern volatile WDTTMRbits_t WDTTMRbits __at(0x810);

# 9144
extern volatile unsigned char BORCON __at(0x811);

asm("BORCON equ 0811h");


typedef union {
struct {
unsigned BORRDY :1;
unsigned :6;
unsigned SBOREN :1;
};
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __at(0x811);

# 9171
extern volatile unsigned char VREGCON __at(0x812);

asm("VREGCON equ 0812h");


typedef union {
struct {
unsigned :1;
unsigned VREGPM :1;
};
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __at(0x812);

# 9192
extern volatile unsigned char PCON0 __at(0x813);

asm("PCON0 equ 0813h");


typedef union {
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nRI :1;
unsigned nRMCLR :1;
unsigned nRWDT :1;
unsigned nWDTWV :1;
unsigned STKUNF :1;
unsigned STKOVF :1;
};
} PCON0bits_t;
extern volatile PCON0bits_t PCON0bits __at(0x813);

# 9254
extern volatile unsigned char PCON1 __at(0x814);

asm("PCON1 equ 0814h");


typedef union {
struct {
unsigned :1;
unsigned nMEMV :1;
};
} PCON1bits_t;
extern volatile PCON1bits_t PCON1bits __at(0x814);

# 9275
extern volatile unsigned short NVMADR __at(0x81A);

asm("NVMADR equ 081Ah");




extern volatile unsigned char NVMADRL __at(0x81A);

asm("NVMADRL equ 081Ah");


typedef union {
struct {
unsigned NVMADRL0 :1;
unsigned NVMADRL1 :1;
unsigned NVMADRL2 :1;
unsigned NVMADRL3 :1;
unsigned NVMADRL4 :1;
unsigned NVMADRL5 :1;
unsigned NVMADRL6 :1;
unsigned NVMADRL7 :1;
};
} NVMADRLbits_t;
extern volatile NVMADRLbits_t NVMADRLbits __at(0x81A);

# 9344
extern volatile unsigned char NVMADRH __at(0x81B);

asm("NVMADRH equ 081Bh");


typedef union {
struct {
unsigned NVMADRH0 :1;
unsigned NVMADRH1 :1;
unsigned NVMADRH2 :1;
unsigned NVMADRH3 :1;
unsigned NVMADRH4 :1;
unsigned NVMADRH5 :1;
unsigned NVMADRH6 :1;
};
} NVMADRHbits_t;
extern volatile NVMADRHbits_t NVMADRHbits __at(0x81B);

# 9400
extern volatile unsigned short NVMDAT __at(0x81C);

asm("NVMDAT equ 081Ch");




extern volatile unsigned char NVMDATL __at(0x81C);

asm("NVMDATL equ 081Ch");


typedef union {
struct {
unsigned NVMDATL0 :1;
unsigned NVMDATL1 :1;
unsigned NVMDATL2 :1;
unsigned NVMDATL3 :1;
unsigned NVMDATL4 :1;
unsigned NVMDATL5 :1;
unsigned NVMDATL6 :1;
unsigned NVMDATL7 :1;
};
} NVMDATLbits_t;
extern volatile NVMDATLbits_t NVMDATLbits __at(0x81C);

# 9469
extern volatile unsigned char NVMDATH __at(0x81D);

asm("NVMDATH equ 081Dh");


typedef union {
struct {
unsigned NVMDATH0 :1;
unsigned NVMDATH1 :1;
unsigned NVMDATH2 :1;
unsigned NVMDATH3 :1;
unsigned NVMDATH4 :1;
unsigned NVMDATH5 :1;
};
} NVMDATHbits_t;
extern volatile NVMDATHbits_t NVMDATHbits __at(0x81D);

# 9519
extern volatile unsigned char NVMCON1 __at(0x81E);

asm("NVMCON1 equ 081Eh");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned LWLO :1;
unsigned NVMREGS :1;
};
} NVMCON1bits_t;
extern volatile NVMCON1bits_t NVMCON1bits __at(0x81E);

# 9575
extern volatile unsigned char NVMCON2 __at(0x81F);

asm("NVMCON2 equ 081Fh");


typedef union {
struct {
unsigned NVMCON2 :8;
};
} NVMCON2bits_t;
extern volatile NVMCON2bits_t NVMCON2bits __at(0x81F);

# 9595
extern volatile unsigned char CPUDOZE __at(0x88C);

asm("CPUDOZE equ 088Ch");


typedef union {
struct {
unsigned DOZE :3;
unsigned :1;
unsigned DOE :1;
unsigned ROI :1;
unsigned DOZEN :1;
unsigned IDLEN :1;
};
struct {
unsigned DOZE0 :1;
unsigned DOZE1 :1;
unsigned DOZE2 :1;
};
} CPUDOZEbits_t;
extern volatile CPUDOZEbits_t CPUDOZEbits __at(0x88C);

# 9660
extern volatile unsigned char OSCCON1 __at(0x88D);

asm("OSCCON1 equ 088Dh");


typedef union {
struct {
unsigned NDIV :4;
unsigned NOSC :3;
};
struct {
unsigned NDIV0 :1;
unsigned NDIV1 :1;
unsigned NDIV2 :1;
unsigned NDIV3 :1;
unsigned NOSC0 :1;
unsigned NOSC1 :1;
unsigned NOSC2 :1;
};
} OSCCON1bits_t;
extern volatile OSCCON1bits_t OSCCON1bits __at(0x88D);

# 9730
extern volatile unsigned char OSCCON2 __at(0x88E);

asm("OSCCON2 equ 088Eh");


typedef union {
struct {
unsigned CDIV :4;
unsigned COSC :3;
};
struct {
unsigned CDIV0 :1;
unsigned CDIV1 :1;
unsigned CDIV2 :1;
unsigned CDIV3 :1;
unsigned COSC0 :1;
unsigned COSC1 :1;
unsigned COSC2 :1;
};
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __at(0x88E);

# 9800
extern volatile unsigned char OSCCON3 __at(0x88F);

asm("OSCCON3 equ 088Fh");


typedef union {
struct {
unsigned :3;
unsigned NOSCR :1;
unsigned ORDY :1;
unsigned :2;
unsigned CSWHOLD :1;
};
} OSCCON3bits_t;
extern volatile OSCCON3bits_t OSCCON3bits __at(0x88F);

# 9834
extern volatile unsigned char OSCSTAT __at(0x890);

asm("OSCSTAT equ 0890h");


typedef union {
struct {
unsigned PLLR :1;
unsigned :1;
unsigned ADOR :1;
unsigned :1;
unsigned LFOR :1;
unsigned MFOR :1;
unsigned HFOR :1;
unsigned EXTOR :1;
};
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __at(0x890);

# 9886
extern volatile unsigned char OSCEN __at(0x891);

asm("OSCEN equ 0891h");


typedef union {
struct {
unsigned :2;
unsigned ADOEN :1;
unsigned :1;
unsigned LFOEN :1;
unsigned MFOEN :1;
unsigned HFOEN :1;
unsigned EXTOEN :1;
};
} OSCENbits_t;
extern volatile OSCENbits_t OSCENbits __at(0x891);

# 9932
extern volatile unsigned char OSCTUNE __at(0x892);

asm("OSCTUNE equ 0892h");


typedef union {
struct {
unsigned HFTUN :6;
};
struct {
unsigned HFTUN0 :1;
unsigned HFTUN1 :1;
unsigned HFTUN2 :1;
unsigned HFTUN3 :1;
unsigned HFTUN4 :1;
unsigned HFTUN5 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0x892);

# 9990
extern volatile unsigned char OSCFRQ __at(0x893);

asm("OSCFRQ equ 0893h");


typedef union {
struct {
unsigned HFFRQ :3;
};
struct {
unsigned HFFRQ0 :1;
unsigned HFFRQ1 :1;
unsigned HFFRQ2 :1;
};
} OSCFRQbits_t;
extern volatile OSCFRQbits_t OSCFRQbits __at(0x893);

# 10030
extern volatile unsigned char CLKRCON __at(0x895);

asm("CLKRCON equ 0895h");


typedef union {
struct {
unsigned CLKRDIV :3;
unsigned CLKRDC :2;
unsigned :2;
unsigned CLKREN :1;
};
struct {
unsigned CLKRDIV0 :1;
unsigned CLKRDIV1 :1;
unsigned CLKRDIV2 :1;
unsigned CLKRDC0 :1;
unsigned CLKRDC1 :1;
};
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __at(0x895);

# 10095
extern volatile unsigned char CLKRCLK __at(0x896);

asm("CLKRCLK equ 0896h");


typedef union {
struct {
unsigned CLKRCLK :4;
};
struct {
unsigned CLKRCLK0 :1;
unsigned CLKRCLK1 :1;
unsigned CLKRCLK2 :1;
unsigned CLKRCLK3 :1;
};
} CLKRCLKbits_t;
extern volatile CLKRCLKbits_t CLKRCLKbits __at(0x896);

# 10141
extern volatile unsigned char FVRCON __at(0x90C);

asm("FVRCON equ 090Ch");


typedef union {
struct {
unsigned ADFVR :2;
unsigned CDAFVR :2;
unsigned TSRNG :1;
unsigned TSEN :1;
unsigned FVRRDY :1;
unsigned FVREN :1;
};
struct {
unsigned ADFVR0 :1;
unsigned ADFVR1 :1;
unsigned CDAFVR0 :1;
unsigned CDAFVR1 :1;
};
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __at(0x90C);

# 10217
extern volatile unsigned char DAC1CON0 __at(0x90E);

asm("DAC1CON0 equ 090Eh");


typedef union {
struct {
unsigned NSS :1;
unsigned :1;
unsigned PSS :2;
unsigned OE2 :1;
unsigned OE1 :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned DAC1NSS :1;
unsigned :1;
unsigned DAC1PSS0 :1;
unsigned DAC1PSS1 :1;
unsigned DAC1OE2 :1;
unsigned DAC1OE1 :1;
unsigned :1;
unsigned DAC1EN :1;
};
struct {
unsigned :2;
unsigned PSS0 :1;
unsigned PSS1 :1;
};
} DAC1CON0bits_t;
extern volatile DAC1CON0bits_t DAC1CON0bits __at(0x90E);

# 10318
extern volatile unsigned char DAC1CON1 __at(0x90F);

asm("DAC1CON1 equ 090Fh");


typedef union {
struct {
unsigned DAC1R :5;
};
struct {
unsigned DAC1R0 :1;
unsigned DAC1R1 :1;
unsigned DAC1R2 :1;
unsigned DAC1R3 :1;
unsigned DAC1R4 :1;
};
} DAC1CON1bits_t;
extern volatile DAC1CON1bits_t DAC1CON1bits __at(0x90F);

# 10370
extern volatile unsigned char ZCDCON __at(0x91F);

asm("ZCDCON equ 091Fh");


typedef union {
struct {
unsigned ZCDINTN :1;
unsigned ZCDINTP :1;
unsigned :2;
unsigned ZCDPOL :1;
unsigned ZCDOUT :1;
unsigned :1;
unsigned ZCDSEN :1;
};
} ZCDCONbits_t;
extern volatile ZCDCONbits_t ZCDCONbits __at(0x91F);

# 10416
extern volatile unsigned char CMOUT __at(0x98F);

asm("CMOUT equ 098Fh");


extern volatile unsigned char CMSTAT __at(0x98F);

asm("CMSTAT equ 098Fh");


typedef union {
struct {
unsigned MC1OUT :1;
unsigned MC2OUT :1;
};
struct {
unsigned C1OUT :1;
unsigned C2OUT :1;
};
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __at(0x98F);

# 10459
typedef union {
struct {
unsigned MC1OUT :1;
unsigned MC2OUT :1;
};
struct {
unsigned C1OUT :1;
unsigned C2OUT :1;
};
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __at(0x98F);

# 10494
extern volatile unsigned char CM1CON0 __at(0x990);

asm("CM1CON0 equ 0990h");


typedef union {
struct {
unsigned SYNC :1;
unsigned HYS :1;
unsigned :2;
unsigned POL :1;
unsigned :1;
unsigned OUT :1;
unsigned EN :1;
};
struct {
unsigned C1SYNC :1;
unsigned C1HYS :1;
unsigned :2;
unsigned C1POL :1;
unsigned :1;
unsigned C1OUT :1;
unsigned C1EN :1;
};
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __at(0x990);

# 10574
extern volatile unsigned char CM1CON1 __at(0x991);

asm("CM1CON1 equ 0991h");


typedef union {
struct {
unsigned INTN :1;
unsigned INTP :1;
};
struct {
unsigned C1INTN :1;
unsigned C1INTP :1;
};
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __at(0x991);

# 10614
extern volatile unsigned char CM1NCH __at(0x992);

asm("CM1NCH equ 0992h");


typedef union {
struct {
unsigned NCH :3;
};
struct {
unsigned NCH0 :1;
unsigned NCH1 :1;
unsigned NCH2 :1;
};
struct {
unsigned C1NCH0 :1;
unsigned C1NCH1 :1;
unsigned C1NCH2 :1;
};
} CM1NCHbits_t;
extern volatile CM1NCHbits_t CM1NCHbits __at(0x992);

# 10674
extern volatile unsigned char CM1PCH __at(0x993);

asm("CM1PCH equ 0993h");


typedef union {
struct {
unsigned PCH :3;
};
struct {
unsigned PCH0 :1;
unsigned PCH1 :1;
unsigned PCH2 :1;
};
struct {
unsigned C1PCH0 :1;
unsigned C1PCH1 :1;
unsigned C1PCH2 :1;
};
} CM1PCHbits_t;
extern volatile CM1PCHbits_t CM1PCHbits __at(0x993);

# 10734
extern volatile unsigned char CM2CON0 __at(0x994);

asm("CM2CON0 equ 0994h");


typedef union {
struct {
unsigned SYNC :1;
unsigned HYS :1;
unsigned :2;
unsigned POL :1;
unsigned :1;
unsigned OUT :1;
unsigned EN :1;
};
struct {
unsigned C2SYNC :1;
unsigned C2HYS :1;
unsigned :2;
unsigned C2POL :1;
unsigned :1;
unsigned C2OUT :1;
unsigned C2EN :1;
};
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __at(0x994);

# 10814
extern volatile unsigned char CM2CON1 __at(0x995);

asm("CM2CON1 equ 0995h");


typedef union {
struct {
unsigned INTN :1;
unsigned INTP :1;
};
struct {
unsigned C2INTN :1;
unsigned C2INTP :1;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0x995);

# 10854
extern volatile unsigned char CM2NCH __at(0x996);

asm("CM2NCH equ 0996h");


typedef union {
struct {
unsigned NCH :3;
};
struct {
unsigned NCH0 :1;
unsigned NCH1 :1;
unsigned NCH2 :1;
};
struct {
unsigned C2NCH0 :1;
unsigned C2NCH1 :1;
unsigned C2NCH2 :1;
};
} CM2NCHbits_t;
extern volatile CM2NCHbits_t CM2NCHbits __at(0x996);

# 10914
extern volatile unsigned char CM2PCH __at(0x997);

asm("CM2PCH equ 0997h");


typedef union {
struct {
unsigned PCH :3;
};
struct {
unsigned PCH0 :1;
unsigned PCH1 :1;
unsigned PCH2 :1;
};
struct {
unsigned C2PCH0 :1;
unsigned C2PCH1 :1;
unsigned C2PCH2 :1;
};
} CM2PCHbits_t;
extern volatile CM2PCHbits_t CM2PCHbits __at(0x997);

# 10974
extern volatile unsigned char RC2REG __at(0xA19);

asm("RC2REG equ 0A19h");


extern volatile unsigned char RCREG2 __at(0xA19);

asm("RCREG2 equ 0A19h");


typedef union {
struct {
unsigned RC2REG :8;
};
} RC2REGbits_t;
extern volatile RC2REGbits_t RC2REGbits __at(0xA19);

# 10997
typedef union {
struct {
unsigned RC2REG :8;
};
} RCREG2bits_t;
extern volatile RCREG2bits_t RCREG2bits __at(0xA19);

# 11012
extern volatile unsigned char TX2REG __at(0xA1A);

asm("TX2REG equ 0A1Ah");


extern volatile unsigned char TXREG2 __at(0xA1A);

asm("TXREG2 equ 0A1Ah");


typedef union {
struct {
unsigned TX2REG :8;
};
} TX2REGbits_t;
extern volatile TX2REGbits_t TX2REGbits __at(0xA1A);

# 11035
typedef union {
struct {
unsigned TX2REG :8;
};
} TXREG2bits_t;
extern volatile TXREG2bits_t TXREG2bits __at(0xA1A);

# 11050
extern volatile unsigned short SP2BRG __at(0xA1B);

asm("SP2BRG equ 0A1Bh");




extern volatile unsigned char SP2BRGL __at(0xA1B);

asm("SP2BRGL equ 0A1Bh");


extern volatile unsigned char SPBRG2 __at(0xA1B);

asm("SPBRG2 equ 0A1Bh");


typedef union {
struct {
unsigned SP2BRGL :8;
};
} SP2BRGLbits_t;
extern volatile SP2BRGLbits_t SP2BRGLbits __at(0xA1B);

# 11080
typedef union {
struct {
unsigned SP2BRGL :8;
};
} SPBRG2bits_t;
extern volatile SPBRG2bits_t SPBRG2bits __at(0xA1B);

# 11095
extern volatile unsigned char SP2BRGH __at(0xA1C);

asm("SP2BRGH equ 0A1Ch");


extern volatile unsigned char SPBRGH2 __at(0xA1C);

asm("SPBRGH2 equ 0A1Ch");


typedef union {
struct {
unsigned SP2BRGH :8;
};
} SP2BRGHbits_t;
extern volatile SP2BRGHbits_t SP2BRGHbits __at(0xA1C);

# 11118
typedef union {
struct {
unsigned SP2BRGH :8;
};
} SPBRGH2bits_t;
extern volatile SPBRGH2bits_t SPBRGH2bits __at(0xA1C);

# 11133
extern volatile unsigned char RC2STA __at(0xA1D);

asm("RC2STA equ 0A1Dh");


extern volatile unsigned char RCSTA2 __at(0xA1D);

asm("RCSTA2 equ 0A1Dh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RC2STAbits_t;
extern volatile RC2STAbits_t RC2STAbits __at(0xA1D);

# 11198
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RCSTA2bits_t;
extern volatile RCSTA2bits_t RCSTA2bits __at(0xA1D);

# 11255
extern volatile unsigned char TX2STA __at(0xA1E);

asm("TX2STA equ 0A1Eh");


extern volatile unsigned char TXSTA2 __at(0xA1E);

asm("TXSTA2 equ 0A1Eh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TX2STAbits_t;
extern volatile TX2STAbits_t TX2STAbits __at(0xA1E);

# 11320
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TXSTA2bits_t;
extern volatile TXSTA2bits_t TXSTA2bits __at(0xA1E);

# 11377
extern volatile unsigned char BAUD2CON __at(0xA1F);

asm("BAUD2CON equ 0A1Fh");


extern volatile unsigned char BAUDCON2 __at(0xA1F);

asm("BAUDCON2 equ 0A1Fh");

extern volatile unsigned char BAUDCTL2 __at(0xA1F);

asm("BAUDCTL2 equ 0A1Fh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUD2CONbits_t;
extern volatile BAUD2CONbits_t BAUD2CONbits __at(0xA1F);

# 11436
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCON2bits_t;
extern volatile BAUDCON2bits_t BAUDCON2bits __at(0xA1F);

# 11480
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCTL2bits_t;
extern volatile BAUDCTL2bits_t BAUDCTL2bits __at(0xA1F);

# 11527
extern volatile unsigned char CLCDATA __at(0x1E0F);

asm("CLCDATA equ 01E0Fh");


typedef union {
struct {
unsigned MLC1OUT :1;
unsigned MLC2OUT :1;
unsigned MLC3OUT :1;
unsigned MLC4OUT :1;
};
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __at(0x1E0F);

# 11565
extern volatile unsigned char CLC1CON __at(0x1E10);

asm("CLC1CON equ 01E10h");


typedef union {
struct {
unsigned LC1MODE :3;
unsigned LC1INTN :1;
unsigned LC1INTP :1;
unsigned LC1OUT :1;
unsigned :1;
unsigned LC1EN :1;
};
struct {
unsigned LC1MODE0 :1;
unsigned LC1MODE1 :1;
unsigned LC1MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __at(0x1E10);

# 11683
extern volatile unsigned char CLC1POL __at(0x1E11);

asm("CLC1POL equ 01E11h");


typedef union {
struct {
unsigned LC1G1POL :1;
unsigned LC1G2POL :1;
unsigned LC1G3POL :1;
unsigned LC1G4POL :1;
unsigned :3;
unsigned LC1POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __at(0x1E11);

# 11761
extern volatile unsigned char CLC1SEL0 __at(0x1E12);

asm("CLC1SEL0 equ 01E12h");


typedef union {
struct {
unsigned LC1D1S0 :1;
unsigned LC1D1S1 :1;
unsigned LC1D1S2 :1;
unsigned LC1D1S3 :1;
unsigned LC1D1S4 :1;
unsigned LC1D1S5 :1;
};
struct {
unsigned LC1D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
unsigned D1S5 :1;
};
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __at(0x1E12);

# 11865
extern volatile unsigned char CLC1SEL1 __at(0x1E13);

asm("CLC1SEL1 equ 01E13h");


typedef union {
struct {
unsigned LC1D2S0 :1;
unsigned LC1D2S1 :1;
unsigned LC1D2S2 :1;
unsigned LC1D2S3 :1;
unsigned LC1D2S4 :1;
unsigned LC1D2S5 :1;
};
struct {
unsigned LC1D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
unsigned D2S5 :1;
};
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __at(0x1E13);

# 11969
extern volatile unsigned char CLC1SEL2 __at(0x1E14);

asm("CLC1SEL2 equ 01E14h");


typedef union {
struct {
unsigned LC1D3S0 :1;
unsigned LC1D3S1 :1;
unsigned LC1D3S2 :1;
unsigned LC1D3S3 :1;
unsigned LC1D3S4 :1;
unsigned LC1D3S5 :1;
};
struct {
unsigned LC1D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
unsigned D3S5 :1;
};
} CLC1SEL2bits_t;
extern volatile CLC1SEL2bits_t CLC1SEL2bits __at(0x1E14);

# 12073
extern volatile unsigned char CLC1SEL3 __at(0x1E15);

asm("CLC1SEL3 equ 01E15h");


typedef union {
struct {
unsigned LC1D4S0 :1;
unsigned LC1D4S1 :1;
unsigned LC1D4S2 :1;
unsigned LC1D4S3 :1;
unsigned LC1D4S4 :1;
unsigned LC1D4S5 :1;
};
struct {
unsigned LC1D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
unsigned D4S5 :1;
};
} CLC1SEL3bits_t;
extern volatile CLC1SEL3bits_t CLC1SEL3bits __at(0x1E15);

# 12177
extern volatile unsigned char CLC1GLS0 __at(0x1E16);

asm("CLC1GLS0 equ 01E16h");


typedef union {
struct {
unsigned LC1G1D1N :1;
unsigned LC1G1D1T :1;
unsigned LC1G1D2N :1;
unsigned LC1G1D2T :1;
unsigned LC1G1D3N :1;
unsigned LC1G1D3T :1;
unsigned LC1G1D4N :1;
unsigned LC1G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __at(0x1E16);

# 12289
extern volatile unsigned char CLC1GLS1 __at(0x1E17);

asm("CLC1GLS1 equ 01E17h");


typedef union {
struct {
unsigned LC1G2D1N :1;
unsigned LC1G2D1T :1;
unsigned LC1G2D2N :1;
unsigned LC1G2D2T :1;
unsigned LC1G2D3N :1;
unsigned LC1G2D3T :1;
unsigned LC1G2D4N :1;
unsigned LC1G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __at(0x1E17);

# 12401
extern volatile unsigned char CLC1GLS2 __at(0x1E18);

asm("CLC1GLS2 equ 01E18h");


typedef union {
struct {
unsigned LC1G3D1N :1;
unsigned LC1G3D1T :1;
unsigned LC1G3D2N :1;
unsigned LC1G3D2T :1;
unsigned LC1G3D3N :1;
unsigned LC1G3D3T :1;
unsigned LC1G3D4N :1;
unsigned LC1G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __at(0x1E18);

# 12513
extern volatile unsigned char CLC1GLS3 __at(0x1E19);

asm("CLC1GLS3 equ 01E19h");


typedef union {
struct {
unsigned LC1G4D1N :1;
unsigned LC1G4D1T :1;
unsigned LC1G4D2N :1;
unsigned LC1G4D2T :1;
unsigned LC1G4D3N :1;
unsigned LC1G4D3T :1;
unsigned LC1G4D4N :1;
unsigned LC1G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __at(0x1E19);

# 12625
extern volatile unsigned char CLC2CON __at(0x1E1A);

asm("CLC2CON equ 01E1Ah");


typedef union {
struct {
unsigned LC2MODE :3;
unsigned LC2INTN :1;
unsigned LC2INTP :1;
unsigned LC2OUT :1;
unsigned :1;
unsigned LC2EN :1;
};
struct {
unsigned LC2MODE0 :1;
unsigned LC2MODE1 :1;
unsigned LC2MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __at(0x1E1A);

# 12743
extern volatile unsigned char CLC2POL __at(0x1E1B);

asm("CLC2POL equ 01E1Bh");


typedef union {
struct {
unsigned LC2G1POL :1;
unsigned LC2G2POL :1;
unsigned LC2G3POL :1;
unsigned LC2G4POL :1;
unsigned :3;
unsigned LC2POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __at(0x1E1B);

# 12821
extern volatile unsigned char CLC2SEL0 __at(0x1E1C);

asm("CLC2SEL0 equ 01E1Ch");


typedef union {
struct {
unsigned LC2D1S0 :1;
unsigned LC2D1S1 :1;
unsigned LC2D1S2 :1;
unsigned LC2D1S3 :1;
unsigned LC2D1S4 :1;
unsigned LC2D1S5 :1;
};
struct {
unsigned LC2D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
unsigned D1S5 :1;
};
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __at(0x1E1C);

# 12925
extern volatile unsigned char CLC2SEL1 __at(0x1E1D);

asm("CLC2SEL1 equ 01E1Dh");


typedef union {
struct {
unsigned LC2D2S0 :1;
unsigned LC2D2S1 :1;
unsigned LC2D2S2 :1;
unsigned LC2D2S3 :1;
unsigned LC2D2S4 :1;
unsigned LC2D2S5 :1;
};
struct {
unsigned LC2D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
unsigned D2S5 :1;
};
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __at(0x1E1D);

# 13029
extern volatile unsigned char CLC2SEL2 __at(0x1E1E);

asm("CLC2SEL2 equ 01E1Eh");


typedef union {
struct {
unsigned LC2D3S0 :1;
unsigned LC2D3S1 :1;
unsigned LC2D3S2 :1;
unsigned LC2D3S3 :1;
unsigned LC2D3S4 :1;
unsigned LC2D3S5 :1;
};
struct {
unsigned LC2D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
unsigned D3S5 :1;
};
} CLC2SEL2bits_t;
extern volatile CLC2SEL2bits_t CLC2SEL2bits __at(0x1E1E);

# 13133
extern volatile unsigned char CLC2SEL3 __at(0x1E1F);

asm("CLC2SEL3 equ 01E1Fh");


typedef union {
struct {
unsigned LC2D4S0 :1;
unsigned LC2D4S1 :1;
unsigned LC2D4S2 :1;
unsigned LC2D4S3 :1;
unsigned LC2D4S4 :1;
unsigned LC2D4S5 :1;
};
struct {
unsigned LC2D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
unsigned D4S5 :1;
};
} CLC2SEL3bits_t;
extern volatile CLC2SEL3bits_t CLC2SEL3bits __at(0x1E1F);

# 13237
extern volatile unsigned char CLC2GLS0 __at(0x1E20);

asm("CLC2GLS0 equ 01E20h");


typedef union {
struct {
unsigned LC2G1D1N :1;
unsigned LC2G1D1T :1;
unsigned LC2G1D2N :1;
unsigned LC2G1D2T :1;
unsigned LC2G1D3N :1;
unsigned LC2G1D3T :1;
unsigned LC2G1D4N :1;
unsigned LC2G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __at(0x1E20);

# 13349
extern volatile unsigned char CLC2GLS1 __at(0x1E21);

asm("CLC2GLS1 equ 01E21h");


typedef union {
struct {
unsigned LC2G2D1N :1;
unsigned LC2G2D1T :1;
unsigned LC2G2D2N :1;
unsigned LC2G2D2T :1;
unsigned LC2G2D3N :1;
unsigned LC2G2D3T :1;
unsigned LC2G2D4N :1;
unsigned LC2G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __at(0x1E21);

# 13461
extern volatile unsigned char CLC2GLS2 __at(0x1E22);

asm("CLC2GLS2 equ 01E22h");


typedef union {
struct {
unsigned LC2G3D1N :1;
unsigned LC2G3D1T :1;
unsigned LC2G3D2N :1;
unsigned LC2G3D2T :1;
unsigned LC2G3D3N :1;
unsigned LC2G3D3T :1;
unsigned LC2G3D4N :1;
unsigned LC2G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __at(0x1E22);

# 13573
extern volatile unsigned char CLC2GLS3 __at(0x1E23);

asm("CLC2GLS3 equ 01E23h");


typedef union {
struct {
unsigned LC2G4D1N :1;
unsigned LC2G4D1T :1;
unsigned LC2G4D2N :1;
unsigned LC2G4D2T :1;
unsigned LC2G4D3N :1;
unsigned LC2G4D3T :1;
unsigned LC2G4D4N :1;
unsigned LC2G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __at(0x1E23);

# 13685
extern volatile unsigned char CLC3CON __at(0x1E24);

asm("CLC3CON equ 01E24h");


typedef union {
struct {
unsigned LC3MODE :3;
unsigned LC3INTN :1;
unsigned LC3INTP :1;
unsigned LC3OUT :1;
unsigned :1;
unsigned LC3EN :1;
};
struct {
unsigned LC3MODE0 :1;
unsigned LC3MODE1 :1;
unsigned LC3MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __at(0x1E24);

# 13803
extern volatile unsigned char CLC3POL __at(0x1E25);

asm("CLC3POL equ 01E25h");


typedef union {
struct {
unsigned LC3G1POL :1;
unsigned LC3G2POL :1;
unsigned LC3G3POL :1;
unsigned LC3G4POL :1;
unsigned :3;
unsigned LC3POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __at(0x1E25);

# 13881
extern volatile unsigned char CLC3SEL0 __at(0x1E26);

asm("CLC3SEL0 equ 01E26h");


typedef union {
struct {
unsigned LC3D1S0 :1;
unsigned LC3D1S1 :1;
unsigned LC3D1S2 :1;
unsigned LC3D1S3 :1;
unsigned LC3D1S4 :1;
unsigned LC3D1S5 :1;
};
struct {
unsigned LC3D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
unsigned D1S5 :1;
};
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __at(0x1E26);

# 13985
extern volatile unsigned char CLC3SEL1 __at(0x1E27);

asm("CLC3SEL1 equ 01E27h");


typedef union {
struct {
unsigned LC3D2S0 :1;
unsigned LC3D2S1 :1;
unsigned LC3D2S2 :1;
unsigned LC3D2S3 :1;
unsigned LC3D2S4 :1;
unsigned LC3D2S5 :1;
};
struct {
unsigned LC3D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
unsigned D2S5 :1;
};
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __at(0x1E27);

# 14089
extern volatile unsigned char CLC3SEL2 __at(0x1E28);

asm("CLC3SEL2 equ 01E28h");


typedef union {
struct {
unsigned LC3D3S0 :1;
unsigned LC3D3S1 :1;
unsigned LC3D3S2 :1;
unsigned LC3D3S3 :1;
unsigned LC3D3S4 :1;
unsigned LC3D3S5 :1;
};
struct {
unsigned LC3D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
unsigned D3S5 :1;
};
} CLC3SEL2bits_t;
extern volatile CLC3SEL2bits_t CLC3SEL2bits __at(0x1E28);

# 14193
extern volatile unsigned char CLC3SEL3 __at(0x1E29);

asm("CLC3SEL3 equ 01E29h");


typedef union {
struct {
unsigned LC3D4S0 :1;
unsigned LC3D4S1 :1;
unsigned LC3D4S2 :1;
unsigned LC3D4S3 :1;
unsigned LC3D4S4 :1;
unsigned LC3D4S5 :1;
};
struct {
unsigned LC3D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
unsigned D4S5 :1;
};
} CLC3SEL3bits_t;
extern volatile CLC3SEL3bits_t CLC3SEL3bits __at(0x1E29);

# 14297
extern volatile unsigned char CLC3GLS0 __at(0x1E2A);

asm("CLC3GLS0 equ 01E2Ah");


typedef union {
struct {
unsigned LC3G1D1N :1;
unsigned LC3G1D1T :1;
unsigned LC3G1D2N :1;
unsigned LC3G1D2T :1;
unsigned LC3G1D3N :1;
unsigned LC3G1D3T :1;
unsigned LC3G1D4N :1;
unsigned LC3G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __at(0x1E2A);

# 14409
extern volatile unsigned char CLC3GLS1 __at(0x1E2B);

asm("CLC3GLS1 equ 01E2Bh");


typedef union {
struct {
unsigned LC3G2D1N :1;
unsigned LC3G2D1T :1;
unsigned LC3G2D2N :1;
unsigned LC3G2D2T :1;
unsigned LC3G2D3N :1;
unsigned LC3G2D3T :1;
unsigned LC3G2D4N :1;
unsigned LC3G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __at(0x1E2B);

# 14521
extern volatile unsigned char CLC3GLS2 __at(0x1E2C);

asm("CLC3GLS2 equ 01E2Ch");


typedef union {
struct {
unsigned LC3G3D1N :1;
unsigned LC3G3D1T :1;
unsigned LC3G3D2N :1;
unsigned LC3G3D2T :1;
unsigned LC3G3D3N :1;
unsigned LC3G3D3T :1;
unsigned LC3G3D4N :1;
unsigned LC3G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __at(0x1E2C);

# 14633
extern volatile unsigned char CLC3GLS3 __at(0x1E2D);

asm("CLC3GLS3 equ 01E2Dh");


typedef union {
struct {
unsigned LC3G4D1N :1;
unsigned LC3G4D1T :1;
unsigned LC3G4D2N :1;
unsigned LC3G4D2T :1;
unsigned LC3G4D3N :1;
unsigned LC3G4D3T :1;
unsigned LC3G4D4N :1;
unsigned LC3G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __at(0x1E2D);

# 14745
extern volatile unsigned char CLC4CON __at(0x1E2E);

asm("CLC4CON equ 01E2Eh");


typedef union {
struct {
unsigned LC4MODE :3;
unsigned LC4INTN :1;
unsigned LC4INTP :1;
unsigned LC4OUT :1;
unsigned :1;
unsigned LC4EN :1;
};
struct {
unsigned LC4MODE0 :1;
unsigned LC4MODE1 :1;
unsigned LC4MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC4CONbits_t;
extern volatile CLC4CONbits_t CLC4CONbits __at(0x1E2E);

# 14863
extern volatile unsigned char CLC4POL __at(0x1E2F);

asm("CLC4POL equ 01E2Fh");


typedef union {
struct {
unsigned LC4G1POL :1;
unsigned LC4G2POL :1;
unsigned LC4G3POL :1;
unsigned LC4G4POL :1;
unsigned :3;
unsigned LC4POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC4POLbits_t;
extern volatile CLC4POLbits_t CLC4POLbits __at(0x1E2F);

# 14941
extern volatile unsigned char CLC4SEL0 __at(0x1E30);

asm("CLC4SEL0 equ 01E30h");


typedef union {
struct {
unsigned LC4D1S0 :1;
unsigned LC4D1S1 :1;
unsigned LC4D1S2 :1;
unsigned LC4D1S3 :1;
unsigned LC4D1S4 :1;
unsigned LC4D1S5 :1;
};
struct {
unsigned LC4D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
unsigned D1S5 :1;
};
} CLC4SEL0bits_t;
extern volatile CLC4SEL0bits_t CLC4SEL0bits __at(0x1E30);

# 15045
extern volatile unsigned char CLC4SEL1 __at(0x1E31);

asm("CLC4SEL1 equ 01E31h");


typedef union {
struct {
unsigned LC4D2S0 :1;
unsigned LC4D2S1 :1;
unsigned LC4D2S2 :1;
unsigned LC4D2S3 :1;
unsigned LC4D2S4 :1;
unsigned LC4D2S5 :1;
};
struct {
unsigned LC4D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
unsigned D2S5 :1;
};
} CLC4SEL1bits_t;
extern volatile CLC4SEL1bits_t CLC4SEL1bits __at(0x1E31);

# 15149
extern volatile unsigned char CLC4SEL2 __at(0x1E32);

asm("CLC4SEL2 equ 01E32h");


typedef union {
struct {
unsigned LC4D3S0 :1;
unsigned LC4D3S1 :1;
unsigned LC4D3S2 :1;
unsigned LC4D3S3 :1;
unsigned LC4D3S4 :1;
unsigned LC4D3S5 :1;
};
struct {
unsigned LC4D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
unsigned D3S5 :1;
};
} CLC4SEL2bits_t;
extern volatile CLC4SEL2bits_t CLC4SEL2bits __at(0x1E32);

# 15253
extern volatile unsigned char CLC4SEL3 __at(0x1E33);

asm("CLC4SEL3 equ 01E33h");


typedef union {
struct {
unsigned LC4D4S0 :1;
unsigned LC4D4S1 :1;
unsigned LC4D4S2 :1;
unsigned LC4D4S3 :1;
unsigned LC4D4S4 :1;
unsigned LC4D4S5 :1;
};
struct {
unsigned LC4D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
unsigned D4S5 :1;
};
} CLC4SEL3bits_t;
extern volatile CLC4SEL3bits_t CLC4SEL3bits __at(0x1E33);

# 15357
extern volatile unsigned char CLC4GLS0 __at(0x1E34);

asm("CLC4GLS0 equ 01E34h");


typedef union {
struct {
unsigned LC4G1D1N :1;
unsigned LC4G1D1T :1;
unsigned LC4G1D2N :1;
unsigned LC4G1D2T :1;
unsigned LC4G1D3N :1;
unsigned LC4G1D3T :1;
unsigned LC4G1D4N :1;
unsigned LC4G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC4GLS0bits_t;
extern volatile CLC4GLS0bits_t CLC4GLS0bits __at(0x1E34);

# 15469
extern volatile unsigned char CLC4GLS1 __at(0x1E35);

asm("CLC4GLS1 equ 01E35h");


typedef union {
struct {
unsigned LC4G2D1N :1;
unsigned LC4G2D1T :1;
unsigned LC4G2D2N :1;
unsigned LC4G2D2T :1;
unsigned LC4G2D3N :1;
unsigned LC4G2D3T :1;
unsigned LC4G2D4N :1;
unsigned LC4G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC4GLS1bits_t;
extern volatile CLC4GLS1bits_t CLC4GLS1bits __at(0x1E35);

# 15581
extern volatile unsigned char CLC4GLS2 __at(0x1E36);

asm("CLC4GLS2 equ 01E36h");


typedef union {
struct {
unsigned LC4G3D1N :1;
unsigned LC4G3D1T :1;
unsigned LC4G3D2N :1;
unsigned LC4G3D2T :1;
unsigned LC4G3D3N :1;
unsigned LC4G3D3T :1;
unsigned LC4G3D4N :1;
unsigned LC4G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC4GLS2bits_t;
extern volatile CLC4GLS2bits_t CLC4GLS2bits __at(0x1E36);

# 15693
extern volatile unsigned char CLC4GLS3 __at(0x1E37);

asm("CLC4GLS3 equ 01E37h");


typedef union {
struct {
unsigned LC4G4D1N :1;
unsigned LC4G4D1T :1;
unsigned LC4G4D2N :1;
unsigned LC4G4D2T :1;
unsigned LC4G4D3N :1;
unsigned LC4G4D3T :1;
unsigned LC4G4D4N :1;
unsigned LC4G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC4GLS3bits_t;
extern volatile CLC4GLS3bits_t CLC4GLS3bits __at(0x1E37);

# 15805
extern volatile unsigned char PPSLOCK __at(0x1E8F);

asm("PPSLOCK equ 01E8Fh");


typedef union {
struct {
unsigned PPSLOCKED :1;
};
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __at(0x1E8F);

# 15825
extern volatile unsigned char INTPPS __at(0x1E90);

asm("INTPPS equ 01E90h");


typedef union {
struct {
unsigned INTPPS :6;
};
struct {
unsigned INTPPS0 :1;
unsigned INTPPS1 :1;
unsigned INTPPS2 :1;
unsigned INTPPS3 :1;
unsigned INTPPS4 :1;
unsigned INTPPS5 :1;
};
} INTPPSbits_t;
extern volatile INTPPSbits_t INTPPSbits __at(0x1E90);

# 15883
extern volatile unsigned char T0CKIPPS __at(0x1E91);

asm("T0CKIPPS equ 01E91h");


typedef union {
struct {
unsigned T0CKIPPS :6;
};
struct {
unsigned T0CKIPPS0 :1;
unsigned T0CKIPPS1 :1;
unsigned T0CKIPPS2 :1;
unsigned T0CKIPPS3 :1;
unsigned T0CKIPPS4 :1;
unsigned T0CKIPPS5 :1;
};
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __at(0x1E91);

# 15941
extern volatile unsigned char T1CKIPPS __at(0x1E92);

asm("T1CKIPPS equ 01E92h");


typedef union {
struct {
unsigned T1CKIPPS :6;
};
struct {
unsigned T1CKIPPS0 :1;
unsigned T1CKIPPS1 :1;
unsigned T1CKIPPS2 :1;
unsigned T1CKIPPS3 :1;
unsigned T1CKIPPS4 :1;
unsigned T1CKIPPS5 :1;
};
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __at(0x1E92);

# 15999
extern volatile unsigned char T1GPPS __at(0x1E93);

asm("T1GPPS equ 01E93h");


typedef union {
struct {
unsigned T1GPPS :6;
};
struct {
unsigned T1GPPS0 :1;
unsigned T1GPPS1 :1;
unsigned T1GPPS2 :1;
unsigned T1GPPS3 :1;
unsigned T1GPPS4 :1;
unsigned T1GPPS5 :1;
};
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __at(0x1E93);

# 16057
extern volatile unsigned char T2INPPS __at(0x1E9C);

asm("T2INPPS equ 01E9Ch");


typedef union {
struct {
unsigned T2INPPS :6;
};
struct {
unsigned T2INPPS0 :1;
unsigned T2INPPS1 :1;
unsigned T2INPPS2 :1;
unsigned T2INPPS3 :1;
unsigned T2INPPS4 :1;
unsigned T2INPPS5 :1;
};
} T2INPPSbits_t;
extern volatile T2INPPSbits_t T2INPPSbits __at(0x1E9C);

# 16115
extern volatile unsigned char CCP1PPS __at(0x1EA1);

asm("CCP1PPS equ 01EA1h");


typedef union {
struct {
unsigned CCP1PPS :6;
};
struct {
unsigned CCP1PPS0 :1;
unsigned CCP1PPS1 :1;
unsigned CCP1PPS2 :1;
unsigned CCP1PPS3 :1;
unsigned CCP1PPS4 :1;
unsigned CCP1PPS5 :1;
};
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __at(0x1EA1);

# 16173
extern volatile unsigned char CCP2PPS __at(0x1EA2);

asm("CCP2PPS equ 01EA2h");


typedef union {
struct {
unsigned CCP2PPS :6;
};
struct {
unsigned CCP2PPS0 :1;
unsigned CCP2PPS1 :1;
unsigned CCP2PPS2 :1;
unsigned CCP2PPS3 :1;
unsigned CCP2PPS4 :1;
unsigned CCP2PPS5 :1;
};
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __at(0x1EA2);

# 16231
extern volatile unsigned char CWG1PPS __at(0x1EB1);

asm("CWG1PPS equ 01EB1h");


typedef union {
struct {
unsigned CWG1PPS :6;
};
struct {
unsigned CWG1PPS0 :1;
unsigned CWG1PPS1 :1;
unsigned CWG1PPS2 :1;
unsigned CWG1PPS3 :1;
unsigned CWG1PPS4 :1;
unsigned CWG1PPS5 :1;
};
struct {
unsigned CWG1INPPS0 :1;
unsigned CWG1INPPS1 :1;
unsigned CWG1INPPS2 :1;
unsigned CWG1INPPS3 :1;
unsigned CWG1INPPS4 :1;
unsigned CWG1INPPS5 :1;
};
} CWG1PPSbits_t;
extern volatile CWG1PPSbits_t CWG1PPSbits __at(0x1EB1);

# 16327
extern volatile unsigned char CLCIN0PPS __at(0x1EBB);

asm("CLCIN0PPS equ 01EBBh");


typedef union {
struct {
unsigned CLCIN0PPS :6;
};
struct {
unsigned CLCIN0PPS0 :1;
unsigned CLCIN0PPS1 :1;
unsigned CLCIN0PPS2 :1;
unsigned CLCIN0PPS3 :1;
unsigned CLCIN0PPS4 :1;
unsigned CLCIN0PPS5 :1;
};
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __at(0x1EBB);

# 16385
extern volatile unsigned char CLCIN1PPS __at(0x1EBC);

asm("CLCIN1PPS equ 01EBCh");


typedef union {
struct {
unsigned CLCIN1PPS :6;
};
struct {
unsigned CLCIN1PPS0 :1;
unsigned CLCIN1PPS1 :1;
unsigned CLCIN1PPS2 :1;
unsigned CLCIN1PPS3 :1;
unsigned CLCIN1PPS4 :1;
unsigned CLCIN1PPS5 :1;
};
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __at(0x1EBC);

# 16443
extern volatile unsigned char CLCIN2PPS __at(0x1EBD);

asm("CLCIN2PPS equ 01EBDh");


typedef union {
struct {
unsigned CLCIN2PPS :6;
};
struct {
unsigned CLCIN2PPS0 :1;
unsigned CLCIN2PPS1 :1;
unsigned CLCIN2PPS2 :1;
unsigned CLCIN2PPS3 :1;
unsigned CLCIN2PPS4 :1;
unsigned CLCIN2PPS5 :1;
};
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __at(0x1EBD);

# 16501
extern volatile unsigned char CLCIN3PPS __at(0x1EBE);

asm("CLCIN3PPS equ 01EBEh");


typedef union {
struct {
unsigned CLCIN3PPS :6;
};
struct {
unsigned CLCIN3PPS0 :1;
unsigned CLCIN3PPS1 :1;
unsigned CLCIN3PPS2 :1;
unsigned CLCIN3PPS3 :1;
unsigned CLCIN3PPS4 :1;
unsigned CLCIN3PPS5 :1;
};
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __at(0x1EBE);

# 16559
extern volatile unsigned char ADACTPPS __at(0x1EC3);

asm("ADACTPPS equ 01EC3h");


typedef union {
struct {
unsigned ADACTPPS :6;
};
struct {
unsigned ADACTPPS0 :1;
unsigned ADACTPPS1 :1;
unsigned ADACTPPS2 :1;
unsigned ADACTPPS3 :1;
unsigned ADACTPPS4 :1;
unsigned ADACTPPS5 :1;
};
} ADACTPPSbits_t;
extern volatile ADACTPPSbits_t ADACTPPSbits __at(0x1EC3);

# 16617
extern volatile unsigned char SSP1CLKPPS __at(0x1EC5);

asm("SSP1CLKPPS equ 01EC5h");


typedef union {
struct {
unsigned SSP1CLKPPS :6;
};
struct {
unsigned SSP1CLKPPS0 :1;
unsigned SSP1CLKPPS1 :1;
unsigned SSP1CLKPPS2 :1;
unsigned SSP1CLKPPS3 :1;
unsigned SSP1CLKPPS4 :1;
unsigned SSP1CLKPPS5 :1;
};
} SSP1CLKPPSbits_t;
extern volatile SSP1CLKPPSbits_t SSP1CLKPPSbits __at(0x1EC5);

# 16675
extern volatile unsigned char SSP1DATPPS __at(0x1EC6);

asm("SSP1DATPPS equ 01EC6h");


typedef union {
struct {
unsigned SSP1DATPPS :6;
};
struct {
unsigned SSP1DATPPS0 :1;
unsigned SSP1DATPPS1 :1;
unsigned SSP1DATPPS2 :1;
unsigned SSP1DATPPS3 :1;
unsigned SSP1DATPPS4 :1;
unsigned SSP1DATPPS5 :1;
};
} SSP1DATPPSbits_t;
extern volatile SSP1DATPPSbits_t SSP1DATPPSbits __at(0x1EC6);

# 16733
extern volatile unsigned char SSP1SSPPS __at(0x1EC7);

asm("SSP1SSPPS equ 01EC7h");


typedef union {
struct {
unsigned SSP1SSPPS :6;
};
struct {
unsigned SSP1SSPPS0 :1;
unsigned SSP1SSPPS1 :1;
unsigned SSP1SSPPS2 :1;
unsigned SSP1SSPPS3 :1;
unsigned SSP1SSPPS4 :1;
unsigned SSP1SSPPS5 :1;
};
} SSP1SSPPSbits_t;
extern volatile SSP1SSPPSbits_t SSP1SSPPSbits __at(0x1EC7);

# 16791
extern volatile unsigned char RX1DTPPS __at(0x1ECB);

asm("RX1DTPPS equ 01ECBh");


typedef union {
struct {
unsigned RX1DTPPS :6;
};
struct {
unsigned RX1DTPPS0 :1;
unsigned RX1DTPPS1 :1;
unsigned RX1DTPPS2 :1;
unsigned RX1DTPPS3 :1;
unsigned RX1DTPPS4 :1;
unsigned RX1DTPPS5 :1;
};
} RX1DTPPSbits_t;
extern volatile RX1DTPPSbits_t RX1DTPPSbits __at(0x1ECB);

# 16849
extern volatile unsigned char TX1CKPPS __at(0x1ECC);

asm("TX1CKPPS equ 01ECCh");


typedef union {
struct {
unsigned TX1CKPPS :6;
};
struct {
unsigned TX1CKPPS0 :1;
unsigned TX1CKPPS1 :1;
unsigned TX1CKPPS2 :1;
unsigned TX1CKPPS3 :1;
unsigned TX1CKPPS4 :1;
unsigned TX1CKPPS5 :1;
};
} TX1CKPPSbits_t;
extern volatile TX1CKPPSbits_t TX1CKPPSbits __at(0x1ECC);

# 16907
extern volatile unsigned char RX2DTPPS __at(0x1ECD);

asm("RX2DTPPS equ 01ECDh");


typedef union {
struct {
unsigned RX2DTPPS :6;
};
struct {
unsigned RX2DTPPS0 :1;
unsigned RX2DTPPS1 :1;
unsigned RX2DTPPS2 :1;
unsigned RX2DTPPS3 :1;
unsigned RX2DTPPS4 :1;
unsigned RX2DTPPS5 :1;
};
} RX2DTPPSbits_t;
extern volatile RX2DTPPSbits_t RX2DTPPSbits __at(0x1ECD);

# 16965
extern volatile unsigned char TX2CKPPS __at(0x1ECE);

asm("TX2CKPPS equ 01ECEh");


typedef union {
struct {
unsigned TX2CKPPS :6;
};
struct {
unsigned TX2CKPPS0 :1;
unsigned TX2CKPPS1 :1;
unsigned TX2CKPPS2 :1;
unsigned TX2CKPPS3 :1;
unsigned TX2CKPPS4 :1;
unsigned TX2CKPPS5 :1;
};
} TX2CKPPSbits_t;
extern volatile TX2CKPPSbits_t TX2CKPPSbits __at(0x1ECE);

# 17023
extern volatile unsigned char RA0PPS __at(0x1F10);

asm("RA0PPS equ 01F10h");


typedef union {
struct {
unsigned RA0PPS0 :1;
unsigned RA0PPS1 :1;
unsigned RA0PPS2 :1;
unsigned RA0PPS3 :1;
unsigned RA0PPS4 :1;
};
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __at(0x1F10);

# 17067
extern volatile unsigned char RA1PPS __at(0x1F11);

asm("RA1PPS equ 01F11h");


typedef union {
struct {
unsigned RA1PPS0 :1;
unsigned RA1PPS1 :1;
unsigned RA1PPS2 :1;
unsigned RA1PPS3 :1;
unsigned RA1PPS4 :1;
};
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __at(0x1F11);

# 17111
extern volatile unsigned char RA2PPS __at(0x1F12);

asm("RA2PPS equ 01F12h");


typedef union {
struct {
unsigned RA2PPS0 :1;
unsigned RA2PPS1 :1;
unsigned RA2PPS2 :1;
unsigned RA2PPS3 :1;
unsigned RA2PPS4 :1;
};
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __at(0x1F12);

# 17155
extern volatile unsigned char RA3PPS __at(0x1F13);

asm("RA3PPS equ 01F13h");


typedef union {
struct {
unsigned RA3PPS0 :1;
unsigned RA3PPS1 :1;
unsigned RA3PPS2 :1;
unsigned RA3PPS3 :1;
unsigned RA3PPS4 :1;
};
} RA3PPSbits_t;
extern volatile RA3PPSbits_t RA3PPSbits __at(0x1F13);

# 17199
extern volatile unsigned char RA4PPS __at(0x1F14);

asm("RA4PPS equ 01F14h");


typedef union {
struct {
unsigned RA4PPS0 :1;
unsigned RA4PPS1 :1;
unsigned RA4PPS2 :1;
unsigned RA4PPS3 :1;
unsigned RA4PPS4 :1;
};
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __at(0x1F14);

# 17243
extern volatile unsigned char RA5PPS __at(0x1F15);

asm("RA5PPS equ 01F15h");


typedef union {
struct {
unsigned RA5PPS0 :1;
unsigned RA5PPS1 :1;
unsigned RA5PPS2 :1;
unsigned RA5PPS3 :1;
unsigned RA5PPS4 :1;
};
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __at(0x1F15);

# 17287
extern volatile unsigned char RC0PPS __at(0x1F20);

asm("RC0PPS equ 01F20h");


typedef union {
struct {
unsigned RC0PPS0 :1;
unsigned RC0PPS1 :1;
unsigned RC0PPS2 :1;
unsigned RC0PPS3 :1;
unsigned RC0PPS4 :1;
};
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __at(0x1F20);

# 17331
extern volatile unsigned char RC1PPS __at(0x1F21);

asm("RC1PPS equ 01F21h");


typedef union {
struct {
unsigned RC1PPS0 :1;
unsigned RC1PPS1 :1;
unsigned RC1PPS2 :1;
unsigned RC1PPS3 :1;
unsigned RC1PPS4 :1;
};
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __at(0x1F21);

# 17375
extern volatile unsigned char RC2PPS __at(0x1F22);

asm("RC2PPS equ 01F22h");


typedef union {
struct {
unsigned RC2PPS0 :1;
unsigned RC2PPS1 :1;
unsigned RC2PPS2 :1;
unsigned RC2PPS3 :1;
unsigned RC2PPS4 :1;
};
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __at(0x1F22);

# 17419
extern volatile unsigned char RC3PPS __at(0x1F23);

asm("RC3PPS equ 01F23h");


typedef union {
struct {
unsigned RC3PPS0 :1;
unsigned RC3PPS1 :1;
unsigned RC3PPS2 :1;
unsigned RC3PPS3 :1;
unsigned RC3PPS4 :1;
};
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __at(0x1F23);

# 17463
extern volatile unsigned char RC4PPS __at(0x1F24);

asm("RC4PPS equ 01F24h");


typedef union {
struct {
unsigned RC4PPS0 :1;
unsigned RC4PPS1 :1;
unsigned RC4PPS2 :1;
unsigned RC4PPS3 :1;
unsigned RC4PPS4 :1;
};
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __at(0x1F24);

# 17507
extern volatile unsigned char RC5PPS __at(0x1F25);

asm("RC5PPS equ 01F25h");


typedef union {
struct {
unsigned RC5PPS0 :1;
unsigned RC5PPS1 :1;
unsigned RC5PPS2 :1;
unsigned RC5PPS3 :1;
unsigned RC5PPS4 :1;
};
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __at(0x1F25);

# 17551
extern volatile unsigned char ANSELA __at(0x1F38);

asm("ANSELA equ 01F38h");


typedef union {
struct {
unsigned ANSA0 :1;
unsigned ANSA1 :1;
unsigned ANSA2 :1;
unsigned :1;
unsigned ANSA4 :1;
unsigned ANSA5 :1;
};
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __at(0x1F38);

# 17596
extern volatile unsigned char WPUA __at(0x1F39);

asm("WPUA equ 01F39h");


typedef union {
struct {
unsigned WPUA0 :1;
unsigned WPUA1 :1;
unsigned WPUA2 :1;
unsigned WPUA3 :1;
unsigned WPUA4 :1;
unsigned WPUA5 :1;
};
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __at(0x1F39);

# 17646
extern volatile unsigned char ODCONA __at(0x1F3A);

asm("ODCONA equ 01F3Ah");


typedef union {
struct {
unsigned ODCA0 :1;
unsigned ODCA1 :1;
unsigned ODCA2 :1;
unsigned :1;
unsigned ODCA4 :1;
unsigned ODCA5 :1;
};
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __at(0x1F3A);

# 17691
extern volatile unsigned char SLRCONA __at(0x1F3B);

asm("SLRCONA equ 01F3Bh");


typedef union {
struct {
unsigned SLRA0 :1;
unsigned SLRA1 :1;
unsigned SLRA2 :1;
unsigned :1;
unsigned SLRA4 :1;
unsigned SLRA5 :1;
};
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __at(0x1F3B);

# 17736
extern volatile unsigned char INLVLA __at(0x1F3C);

asm("INLVLA equ 01F3Ch");


typedef union {
struct {
unsigned INLVLA0 :1;
unsigned INLVLA1 :1;
unsigned INLVLA2 :1;
unsigned INLVLA3 :1;
unsigned INLVLA4 :1;
unsigned INLVLA5 :1;
};
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __at(0x1F3C);

# 17786
extern volatile unsigned char IOCAP __at(0x1F3D);

asm("IOCAP equ 01F3Dh");


typedef union {
struct {
unsigned IOCAP0 :1;
unsigned IOCAP1 :1;
unsigned IOCAP2 :1;
unsigned IOCAP3 :1;
unsigned IOCAP4 :1;
unsigned IOCAP5 :1;
};
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __at(0x1F3D);

# 17836
extern volatile unsigned char IOCAN __at(0x1F3E);

asm("IOCAN equ 01F3Eh");


typedef union {
struct {
unsigned IOCAN0 :1;
unsigned IOCAN1 :1;
unsigned IOCAN2 :1;
unsigned IOCAN3 :1;
unsigned IOCAN4 :1;
unsigned IOCAN5 :1;
};
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __at(0x1F3E);

# 17886
extern volatile unsigned char IOCAF __at(0x1F3F);

asm("IOCAF equ 01F3Fh");


typedef union {
struct {
unsigned IOCAF0 :1;
unsigned IOCAF1 :1;
unsigned IOCAF2 :1;
unsigned IOCAF3 :1;
unsigned IOCAF4 :1;
unsigned IOCAF5 :1;
};
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __at(0x1F3F);

# 17936
extern volatile unsigned char ANSELC __at(0x1F4E);

asm("ANSELC equ 01F4Eh");


typedef union {
struct {
unsigned ANSC0 :1;
unsigned ANSC1 :1;
unsigned ANSC2 :1;
unsigned ANSC3 :1;
unsigned ANSC4 :1;
unsigned ANSC5 :1;
};
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __at(0x1F4E);

# 17986
extern volatile unsigned char WPUC __at(0x1F4F);

asm("WPUC equ 01F4Fh");


typedef union {
struct {
unsigned WPUC0 :1;
unsigned WPUC1 :1;
unsigned WPUC2 :1;
unsigned WPUC3 :1;
unsigned WPUC4 :1;
unsigned WPUC5 :1;
};
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __at(0x1F4F);

# 18036
extern volatile unsigned char ODCONC __at(0x1F50);

asm("ODCONC equ 01F50h");


typedef union {
struct {
unsigned ODCC0 :1;
unsigned ODCC1 :1;
unsigned ODCC2 :1;
unsigned ODCC3 :1;
unsigned ODCC4 :1;
unsigned ODCC5 :1;
};
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __at(0x1F50);

# 18086
extern volatile unsigned char SLRCONC __at(0x1F51);

asm("SLRCONC equ 01F51h");


typedef union {
struct {
unsigned SLRC0 :1;
unsigned SLRC1 :1;
unsigned SLRC2 :1;
unsigned SLRC3 :1;
unsigned SLRC4 :1;
unsigned SLRC5 :1;
};
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __at(0x1F51);

# 18136
extern volatile unsigned char INLVLC __at(0x1F52);

asm("INLVLC equ 01F52h");


typedef union {
struct {
unsigned INLVLC0 :1;
unsigned INLVLC1 :1;
unsigned INLVLC2 :1;
unsigned INLVLC3 :1;
unsigned INLVLC4 :1;
unsigned INLVLC5 :1;
};
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __at(0x1F52);

# 18186
extern volatile unsigned char IOCCP __at(0x1F53);

asm("IOCCP equ 01F53h");


typedef union {
struct {
unsigned IOCCP0 :1;
unsigned IOCCP1 :1;
unsigned IOCCP2 :1;
unsigned IOCCP3 :1;
unsigned IOCCP4 :1;
unsigned IOCCP5 :1;
};
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __at(0x1F53);

# 18236
extern volatile unsigned char IOCCN __at(0x1F54);

asm("IOCCN equ 01F54h");


typedef union {
struct {
unsigned IOCCN0 :1;
unsigned IOCCN1 :1;
unsigned IOCCN2 :1;
unsigned IOCCN3 :1;
unsigned IOCCN4 :1;
unsigned IOCCN5 :1;
};
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __at(0x1F54);

# 18286
extern volatile unsigned char IOCCF __at(0x1F55);

asm("IOCCF equ 01F55h");


typedef union {
struct {
unsigned IOCCF0 :1;
unsigned IOCCF1 :1;
unsigned IOCCF2 :1;
unsigned IOCCF3 :1;
unsigned IOCCF4 :1;
unsigned IOCCF5 :1;
};
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __at(0x1F55);

# 18336
extern volatile unsigned char STATUS_SHAD __at(0x1FE4);

asm("STATUS_SHAD equ 01FE4h");


typedef union {
struct {
unsigned STATUS_SHAD :3;
};
struct {
unsigned STATUS_SHAD0 :1;
unsigned STATUS_SHAD1 :1;
unsigned STATUS_SHAD2 :1;
};
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __at(0x1FE4);

# 18376
extern volatile unsigned char WREG_SHAD __at(0x1FE5);

asm("WREG_SHAD equ 01FE5h");


typedef union {
struct {
unsigned WREG_SHAD :8;
};
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __at(0x1FE5);

# 18396
extern volatile unsigned char BSR_SHAD __at(0x1FE6);

asm("BSR_SHAD equ 01FE6h");


typedef union {
struct {
unsigned BSR_SHAD :8;
};
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __at(0x1FE6);

# 18416
extern volatile unsigned char PCLATH_SHAD __at(0x1FE7);

asm("PCLATH_SHAD equ 01FE7h");


typedef union {
struct {
unsigned PCLATH_SHAD :8;
};
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __at(0x1FE7);

# 18436
extern volatile unsigned short FSR0_SHAD __at(0x1FE8);

asm("FSR0_SHAD equ 01FE8h");




extern volatile unsigned char FSR0L_SHAD __at(0x1FE8);

asm("FSR0L_SHAD equ 01FE8h");


typedef union {
struct {
unsigned FSR0L_SHAD :8;
};
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __at(0x1FE8);

# 18463
extern volatile unsigned char FSR0H_SHAD __at(0x1FE9);

asm("FSR0H_SHAD equ 01FE9h");


typedef union {
struct {
unsigned FSR0H_SHAD :8;
};
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __at(0x1FE9);

# 18483
extern volatile unsigned short FSR1_SHAD __at(0x1FEA);

asm("FSR1_SHAD equ 01FEAh");




extern volatile unsigned char FSR1L_SHAD __at(0x1FEA);

asm("FSR1L_SHAD equ 01FEAh");


typedef union {
struct {
unsigned FSR1L_SHAD :8;
};
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __at(0x1FEA);

# 18510
extern volatile unsigned char FSR1H_SHAD __at(0x1FEB);

asm("FSR1H_SHAD equ 01FEBh");


typedef union {
struct {
unsigned FSR1H_SHAD :8;
};
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __at(0x1FEB);

# 18530
extern volatile unsigned char STKPTR __at(0x1FED);

asm("STKPTR equ 01FEDh");


typedef union {
struct {
unsigned STKPTR0 :1;
unsigned STKPTR1 :1;
unsigned STKPTR2 :1;
unsigned STKPTR3 :1;
unsigned STKPTR4 :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0x1FED);

# 18574
extern volatile unsigned char TOSL __at(0x1FEE);

asm("TOSL equ 01FEEh");


typedef union {
struct {
unsigned TOSL :8;
};
struct {
unsigned TOSL0 :1;
unsigned TOSL1 :1;
unsigned TOSL2 :1;
unsigned TOSL3 :1;
unsigned TOSL4 :1;
unsigned TOSL5 :1;
unsigned TOSL6 :1;
unsigned TOSL7 :1;
};
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __at(0x1FEE);

# 18644
extern volatile unsigned char TOSH __at(0x1FEF);

asm("TOSH equ 01FEFh");


typedef union {
struct {
unsigned TOSH :8;
};
struct {
unsigned TOSH0 :1;
unsigned TOSH1 :1;
unsigned TOSH2 :1;
unsigned TOSH3 :1;
unsigned TOSH4 :1;
unsigned TOSH5 :1;
unsigned TOSH6 :1;
unsigned TOSH7 :1;
};
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __at(0x1FEF);

# 18720
extern volatile __bit ACKDT __at(0xC8D);


extern volatile __bit ACKDT1 __at(0xC8D);


extern volatile __bit ACKEN __at(0xC8C);


extern volatile __bit ACKEN1 __at(0xC8C);


extern volatile __bit ACKSTAT __at(0xC8E);


extern volatile __bit ACKSTAT1 __at(0xC8E);


extern volatile __bit ACKTIM __at(0xC97);


extern volatile __bit ADACT0 __at(0x4F8);


extern volatile __bit ADACT1 __at(0x4F9);


extern volatile __bit ADACT2 __at(0x4FA);


extern volatile __bit ADACT3 __at(0x4FB);


extern volatile __bit ADACT4 __at(0x4FC);


extern volatile __bit ADACTPPS0 __at(0xF618);


extern volatile __bit ADACTPPS1 __at(0xF619);


extern volatile __bit ADACTPPS2 __at(0xF61A);


extern volatile __bit ADACTPPS3 __at(0xF61B);


extern volatile __bit ADACTPPS4 __at(0xF61C);


extern volatile __bit ADACTPPS5 __at(0xF61D);


extern volatile __bit ADCMD __at(0x3CC5);


extern volatile __bit ADCS0 __at(0x4F4);


extern volatile __bit ADCS1 __at(0x4F5);


extern volatile __bit ADCS2 __at(0x4F6);


extern volatile __bit ADFM __at(0x4F7);


extern volatile __bit ADFVR0 __at(0x4860);


extern volatile __bit ADFVR1 __at(0x4861);


extern volatile __bit ADIE __at(0x38B8);


extern volatile __bit ADIF __at(0x3868);


extern volatile __bit ADMSK1 __at(0xC89);


extern volatile __bit ADMSK11 __at(0xC89);


extern volatile __bit ADMSK2 __at(0xC8A);


extern volatile __bit ADMSK21 __at(0xC8A);


extern volatile __bit ADMSK3 __at(0xC8B);


extern volatile __bit ADMSK31 __at(0xC8B);


extern volatile __bit ADMSK4 __at(0xC8C);


extern volatile __bit ADMSK41 __at(0xC8C);


extern volatile __bit ADMSK5 __at(0xC8D);


extern volatile __bit ADMSK51 __at(0xC8D);


extern volatile __bit ADOEN __at(0x448A);


extern volatile __bit ADON __at(0x4E8);


extern volatile __bit ADOR __at(0x4482);


extern volatile __bit ADPREF0 __at(0x4F0);


extern volatile __bit ADPREF1 __at(0x4F1);


extern volatile __bit ADRESH0 __at(0x4E0);


extern volatile __bit ADRESH1 __at(0x4E1);


extern volatile __bit ADRESH2 __at(0x4E2);


extern volatile __bit ADRESH3 __at(0x4E3);


extern volatile __bit ADRESH4 __at(0x4E4);


extern volatile __bit ADRESH5 __at(0x4E5);


extern volatile __bit ADRESH6 __at(0x4E6);


extern volatile __bit ADRESH7 __at(0x4E7);


extern volatile __bit ADRESL0 __at(0x4D8);


extern volatile __bit ADRESL1 __at(0x4D9);


extern volatile __bit ADRESL2 __at(0x4DA);


extern volatile __bit ADRESL3 __at(0x4DB);


extern volatile __bit ADRESL4 __at(0x4DC);


extern volatile __bit ADRESL5 __at(0x4DD);


extern volatile __bit ADRESL6 __at(0x4DE);


extern volatile __bit ADRESL7 __at(0x4DF);


extern volatile __bit ADTIF __at(0x3869);


extern volatile __bit AHEN __at(0xC91);


extern volatile __bit ANSA0 __at(0xF9C0);


extern volatile __bit ANSA1 __at(0xF9C1);


extern volatile __bit ANSA2 __at(0xF9C2);


extern volatile __bit ANSA4 __at(0xF9C4);


extern volatile __bit ANSA5 __at(0xF9C5);


extern volatile __bit ANSC0 __at(0xFA70);


extern volatile __bit ANSC1 __at(0xFA71);


extern volatile __bit ANSC2 __at(0xFA72);


extern volatile __bit ANSC3 __at(0xFA73);


extern volatile __bit ANSC4 __at(0xFA74);


extern volatile __bit ANSC5 __at(0xFA75);


extern volatile __bit AS0E __at(0x3098);


extern volatile __bit AS1E __at(0x3099);


extern volatile __bit AS2E __at(0x309A);


extern volatile __bit AS3E __at(0x309B);


extern volatile __bit AS4E __at(0x309C);


extern volatile __bit BCL1IE __at(0x38C9);


extern volatile __bit BCL1IF __at(0x3879);


extern volatile __bit BF __at(0xC78);


extern volatile __bit BF1 __at(0xC78);


extern volatile __bit BOEN __at(0xC94);


extern volatile __bit BORRDY __at(0x4088);


extern volatile __bit BSR0 __at(0x40);


extern volatile __bit BSR1 __at(0x41);


extern volatile __bit BSR2 __at(0x42);


extern volatile __bit BSR3 __at(0x43);


extern volatile __bit BSR4 __at(0x44);


extern volatile __bit BSR5 __at(0x45);


extern volatile __bit C1EN __at(0x4C87);


extern volatile __bit C1HYS __at(0x4C81);


extern volatile __bit C1IE __at(0x38C0);


extern volatile __bit C1IF __at(0x3870);


extern volatile __bit C1INTN __at(0x4C88);


extern volatile __bit C1INTP __at(0x4C89);


extern volatile __bit C1NCH0 __at(0x4C90);


extern volatile __bit C1NCH1 __at(0x4C91);


extern volatile __bit C1NCH2 __at(0x4C92);


extern volatile __bit C1PCH0 __at(0x4C98);


extern volatile __bit C1PCH1 __at(0x4C99);


extern volatile __bit C1PCH2 __at(0x4C9A);


extern volatile __bit C1POL __at(0x4C84);


extern volatile __bit C1SYNC __at(0x4C80);


extern volatile __bit C2EN __at(0x4CA7);


extern volatile __bit C2HYS __at(0x4CA1);


extern volatile __bit C2IE __at(0x38C1);


extern volatile __bit C2IF __at(0x3871);


extern volatile __bit C2INTN __at(0x4CA8);


extern volatile __bit C2INTP __at(0x4CA9);


extern volatile __bit C2NCH0 __at(0x4CB0);


extern volatile __bit C2NCH1 __at(0x4CB1);


extern volatile __bit C2NCH2 __at(0x4CB2);


extern volatile __bit C2PCH0 __at(0x4CB8);


extern volatile __bit C2PCH1 __at(0x4CB9);


extern volatile __bit C2PCH2 __at(0x4CBA);


extern volatile __bit C2POL __at(0x4CA4);


extern volatile __bit C2SYNC __at(0x4CA0);


extern volatile __bit CAL01 __at(0x1060);


extern volatile __bit CAL11 __at(0x1061);


extern volatile __bit CAL21 __at(0x1062);


extern volatile __bit CAL31 __at(0x1063);


extern volatile __bit CAL41 __at(0x1064);


extern volatile __bit CAL51 __at(0x1065);


extern volatile __bit CAL61 __at(0x1066);


extern volatile __bit CAL71 __at(0x1067);


extern volatile __bit CARRY __at(0x18);


extern volatile __bit CCP1CTS0 __at(0x1878);


extern volatile __bit CCP1CTS1 __at(0x1879);


extern volatile __bit CCP1CTS2 __at(0x187A);


extern volatile __bit CCP1EN __at(0x1877);


extern volatile __bit CCP1FMT __at(0x1874);


extern volatile __bit CCP1IE __at(0x38E0);


extern volatile __bit CCP1IF __at(0x3890);


extern volatile __bit CCP1MD __at(0x3CC8);


extern volatile __bit CCP1MODE0 __at(0x1870);


extern volatile __bit CCP1MODE1 __at(0x1871);


extern volatile __bit CCP1MODE2 __at(0x1872);


extern volatile __bit CCP1MODE3 __at(0x1873);


extern volatile __bit CCP1OUT __at(0x1875);


extern volatile __bit CCP1PPS0 __at(0xF508);


extern volatile __bit CCP1PPS1 __at(0xF509);


extern volatile __bit CCP1PPS2 __at(0xF50A);


extern volatile __bit CCP1PPS3 __at(0xF50B);


extern volatile __bit CCP1PPS4 __at(0xF50C);


extern volatile __bit CCP1PPS5 __at(0xF50D);


extern volatile __bit CCP2CTS0 __at(0x1898);


extern volatile __bit CCP2CTS1 __at(0x1899);


extern volatile __bit CCP2CTS2 __at(0x189A);


extern volatile __bit CCP2EN __at(0x1897);


extern volatile __bit CCP2FMT __at(0x1894);


extern volatile __bit CCP2IE __at(0x38E1);


extern volatile __bit CCP2IF __at(0x3891);


extern volatile __bit CCP2MD __at(0x3CC9);


extern volatile __bit CCP2MODE0 __at(0x1890);


extern volatile __bit CCP2MODE1 __at(0x1891);


extern volatile __bit CCP2MODE2 __at(0x1892);


extern volatile __bit CCP2MODE3 __at(0x1893);


extern volatile __bit CCP2OUT __at(0x1895);


extern volatile __bit CCP2PPS0 __at(0xF510);


extern volatile __bit CCP2PPS1 __at(0xF511);


extern volatile __bit CCP2PPS2 __at(0xF512);


extern volatile __bit CCP2PPS3 __at(0xF513);


extern volatile __bit CCP2PPS4 __at(0xF514);


extern volatile __bit CCP2PPS5 __at(0xF515);


extern volatile __bit CDAFVR0 __at(0x4862);


extern volatile __bit CDAFVR1 __at(0x4863);


extern volatile __bit CDIV0 __at(0x4470);


extern volatile __bit CDIV1 __at(0x4471);


extern volatile __bit CDIV2 __at(0x4472);


extern volatile __bit CDIV3 __at(0x4473);


extern volatile __bit CHS0 __at(0x4EA);


extern volatile __bit CHS1 __at(0x4EB);


extern volatile __bit CHS2 __at(0x4EC);


extern volatile __bit CHS3 __at(0x4ED);


extern volatile __bit CHS4 __at(0x4EE);


extern volatile __bit CHS5 __at(0x4EF);


extern volatile __bit CKE __at(0xC7E);


extern volatile __bit CKE1 __at(0xC7E);


extern volatile __bit CKP __at(0xC84);


extern volatile __bit CKP1 __at(0xC84);


extern volatile __bit CKPOL __at(0x147E);


extern volatile __bit CKPS2 __at(0x1476);


extern volatile __bit CKSYNC __at(0x147D);


extern volatile __bit CLC1IE __at(0x38DC);


extern volatile __bit CLC1IF __at(0x388C);


extern volatile __bit CLC1MD __at(0x3CD9);


extern volatile __bit CLC2IE __at(0x38DD);


extern volatile __bit CLC2IF __at(0x388D);


extern volatile __bit CLC2MD __at(0x3CDA);


extern volatile __bit CLC3IE __at(0x38DE);


extern volatile __bit CLC3IF __at(0x388E);


extern volatile __bit CLC3MD __at(0x3CDB);


extern volatile __bit CLC4IE __at(0x38DF);


extern volatile __bit CLC4IF __at(0x388F);


extern volatile __bit CLC4MD __at(0x3CDC);


extern volatile __bit CLCIN0PPS0 __at(0xF5D8);


extern volatile __bit CLCIN0PPS1 __at(0xF5D9);


extern volatile __bit CLCIN0PPS2 __at(0xF5DA);


extern volatile __bit CLCIN0PPS3 __at(0xF5DB);


extern volatile __bit CLCIN0PPS4 __at(0xF5DC);


extern volatile __bit CLCIN0PPS5 __at(0xF5DD);


extern volatile __bit CLCIN1PPS0 __at(0xF5E0);


extern volatile __bit CLCIN1PPS1 __at(0xF5E1);


extern volatile __bit CLCIN1PPS2 __at(0xF5E2);


extern volatile __bit CLCIN1PPS3 __at(0xF5E3);


extern volatile __bit CLCIN1PPS4 __at(0xF5E4);


extern volatile __bit CLCIN1PPS5 __at(0xF5E5);


extern volatile __bit CLCIN2PPS0 __at(0xF5E8);


extern volatile __bit CLCIN2PPS1 __at(0xF5E9);


extern volatile __bit CLCIN2PPS2 __at(0xF5EA);


extern volatile __bit CLCIN2PPS3 __at(0xF5EB);


extern volatile __bit CLCIN2PPS4 __at(0xF5EC);


extern volatile __bit CLCIN2PPS5 __at(0xF5ED);


extern volatile __bit CLCIN3PPS0 __at(0xF5F0);


extern volatile __bit CLCIN3PPS1 __at(0xF5F1);


extern volatile __bit CLCIN3PPS2 __at(0xF5F2);


extern volatile __bit CLCIN3PPS3 __at(0xF5F3);


extern volatile __bit CLCIN3PPS4 __at(0xF5F4);


extern volatile __bit CLCIN3PPS5 __at(0xF5F5);


extern volatile __bit CLKRCLK0 __at(0x44B0);


extern volatile __bit CLKRCLK1 __at(0x44B1);


extern volatile __bit CLKRCLK2 __at(0x44B2);


extern volatile __bit CLKRCLK3 __at(0x44B3);


extern volatile __bit CLKRDC0 __at(0x44AB);


extern volatile __bit CLKRDC1 __at(0x44AC);


extern volatile __bit CLKRDIV0 __at(0x44A8);


extern volatile __bit CLKRDIV1 __at(0x44A9);


extern volatile __bit CLKRDIV2 __at(0x44AA);


extern volatile __bit CLKREN __at(0x44AF);


extern volatile __bit CLKRMD __at(0x3CB1);


extern volatile __bit CMP1MD __at(0x3CC1);


extern volatile __bit CMP2MD __at(0x3CC2);


extern volatile __bit COSC0 __at(0x4474);


extern volatile __bit COSC1 __at(0x4475);


extern volatile __bit COSC2 __at(0x4476);


extern volatile __bit CS __at(0x3060);


extern volatile __bit CSWHOLD __at(0x447F);


extern volatile __bit CSWIE __at(0x38BE);


extern volatile __bit CSWIF __at(0x386E);


extern volatile __bit CWG1CS __at(0x3060);


extern volatile __bit CWG1DAT0 __at(0x3068);


extern volatile __bit CWG1DAT1 __at(0x3069);


extern volatile __bit CWG1DAT2 __at(0x306A);


extern volatile __bit CWG1DAT3 __at(0x306B);


extern volatile __bit CWG1DBF0 __at(0x3078);


extern volatile __bit CWG1DBF1 __at(0x3079);


extern volatile __bit CWG1DBF2 __at(0x307A);


extern volatile __bit CWG1DBF3 __at(0x307B);


extern volatile __bit CWG1DBF4 __at(0x307C);


extern volatile __bit CWG1DBF5 __at(0x307D);


extern volatile __bit CWG1DBR0 __at(0x3070);


extern volatile __bit CWG1DBR1 __at(0x3071);


extern volatile __bit CWG1DBR2 __at(0x3072);


extern volatile __bit CWG1DBR3 __at(0x3073);


extern volatile __bit CWG1DBR4 __at(0x3074);


extern volatile __bit CWG1DBR5 __at(0x3075);


extern volatile __bit CWG1EN __at(0x3087);


extern volatile __bit CWG1IE __at(0x38E8);


extern volatile __bit CWG1IF __at(0x3898);


extern volatile __bit CWG1IN __at(0x308D);


extern volatile __bit CWG1INPPS0 __at(0xF588);


extern volatile __bit CWG1INPPS1 __at(0xF589);


extern volatile __bit CWG1INPPS2 __at(0xF58A);


extern volatile __bit CWG1INPPS3 __at(0xF58B);


extern volatile __bit CWG1INPPS4 __at(0xF58C);


extern volatile __bit CWG1INPPS5 __at(0xF58D);


extern volatile __bit CWG1LD __at(0x3086);


extern volatile __bit CWG1LSAC0 __at(0x3092);


extern volatile __bit CWG1LSAC1 __at(0x3093);


extern volatile __bit CWG1LSBD0 __at(0x3094);


extern volatile __bit CWG1LSBD1 __at(0x3095);


extern volatile __bit CWG1MD __at(0x3CD0);


extern volatile __bit CWG1MODE0 __at(0x3080);


extern volatile __bit CWG1MODE1 __at(0x3081);


extern volatile __bit CWG1MODE2 __at(0x3082);


extern volatile __bit CWG1OVRA __at(0x30A4);


extern volatile __bit CWG1OVRB __at(0x30A5);


extern volatile __bit CWG1OVRC __at(0x30A6);


extern volatile __bit CWG1OVRD __at(0x30A7);


extern volatile __bit CWG1POLA __at(0x3088);


extern volatile __bit CWG1POLB __at(0x3089);


extern volatile __bit CWG1POLC __at(0x308A);


extern volatile __bit CWG1POLD __at(0x308B);


extern volatile __bit CWG1PPS0 __at(0xF588);


extern volatile __bit CWG1PPS1 __at(0xF589);


extern volatile __bit CWG1PPS2 __at(0xF58A);


extern volatile __bit CWG1PPS3 __at(0xF58B);


extern volatile __bit CWG1PPS4 __at(0xF58C);


extern volatile __bit CWG1PPS5 __at(0xF58D);


extern volatile __bit CWG1REN __at(0x3096);


extern volatile __bit CWG1SHUTDOWN __at(0x3097);


extern volatile __bit CWG1STRA __at(0x30A0);


extern volatile __bit CWG1STRB __at(0x30A1);


extern volatile __bit CWG1STRC __at(0x30A2);


extern volatile __bit CWG1STRD __at(0x30A3);


extern volatile __bit DA __at(0xC7D);


extern volatile __bit DA1 __at(0xC7D);


extern volatile __bit DAC1EN __at(0x4877);


extern volatile __bit DAC1MD __at(0x3CC6);


extern volatile __bit DAC1NSS __at(0x4870);


extern volatile __bit DAC1OE1 __at(0x4875);


extern volatile __bit DAC1OE2 __at(0x4874);


extern volatile __bit DAC1PSS0 __at(0x4872);


extern volatile __bit DAC1PSS1 __at(0x4873);


extern volatile __bit DAC1R0 __at(0x4878);


extern volatile __bit DAC1R1 __at(0x4879);


extern volatile __bit DAC1R2 __at(0x487A);


extern volatile __bit DAC1R3 __at(0x487B);


extern volatile __bit DAC1R4 __at(0x487C);


extern volatile __bit DATA_ADDRESS __at(0xC7D);


extern volatile __bit DATA_ADDRESS1 __at(0xC7D);


extern volatile __bit DBF0 __at(0x3078);


extern volatile __bit DBF1 __at(0x3079);


extern volatile __bit DBF2 __at(0x307A);


extern volatile __bit DBF3 __at(0x307B);


extern volatile __bit DBF4 __at(0x307C);


extern volatile __bit DBF5 __at(0x307D);


extern volatile __bit DBR0 __at(0x3070);


extern volatile __bit DBR1 __at(0x3071);


extern volatile __bit DBR2 __at(0x3072);


extern volatile __bit DBR3 __at(0x3073);


extern volatile __bit DBR4 __at(0x3074);


extern volatile __bit DBR5 __at(0x3075);


extern volatile __bit DC __at(0x19);


extern volatile __bit DDS1MD __at(0x3CBF);


extern volatile __bit DHEN __at(0xC90);


extern volatile __bit DOE __at(0x4464);


extern volatile __bit DOZE0 __at(0x4460);


extern volatile __bit DOZE1 __at(0x4461);


extern volatile __bit DOZE2 __at(0x4462);


extern volatile __bit DOZEN __at(0x4466);


extern volatile __bit D_A __at(0xC7D);


extern volatile __bit D_A1 __at(0xC7D);


extern volatile __bit D_nA __at(0xC7D);


extern volatile __bit D_nA1 __at(0xC7D);


extern volatile __bit EXTOEN __at(0x448F);


extern volatile __bit EXTOR __at(0x4487);


extern volatile __bit FREE __at(0x40F4);


extern volatile __bit FVREN __at(0x4867);


extern volatile __bit FVRMD __at(0x3CB6);


extern volatile __bit FVRRDY __at(0x4866);


extern volatile __bit G1EN __at(0x3087);


extern volatile __bit GCEN __at(0xC8F);


extern volatile __bit GCEN1 __at(0xC8F);


extern volatile __bit GE __at(0x107F);


extern volatile __bit GGO_nDONE __at(0x107B);


extern volatile __bit GIE __at(0x5F);


extern volatile __bit GOnDONE __at(0x4E9);


extern volatile __bit GPOL __at(0x107E);


extern volatile __bit GSPM __at(0x107C);


extern volatile __bit GSS0 __at(0x1080);


extern volatile __bit GSS1 __at(0x1081);


extern volatile __bit GSS2 __at(0x1082);


extern volatile __bit GSS3 __at(0x1083);


extern volatile __bit GSS4 __at(0x1084);


extern volatile __bit GTM __at(0x107D);


extern volatile __bit GVAL __at(0x107A);


extern volatile __bit HFFRQ0 __at(0x4498);


extern volatile __bit HFFRQ1 __at(0x4499);


extern volatile __bit HFFRQ2 __at(0x449A);


extern volatile __bit HFOEN __at(0x448E);


extern volatile __bit HFOR __at(0x4486);


extern volatile __bit HFTUN0 __at(0x4490);


extern volatile __bit HFTUN1 __at(0x4491);


extern volatile __bit HFTUN2 __at(0x4492);


extern volatile __bit HFTUN3 __at(0x4493);


extern volatile __bit HFTUN4 __at(0x4494);


extern volatile __bit HFTUN5 __at(0x4495);


extern volatile __bit I2C_DAT __at(0xC7D);


extern volatile __bit I2C_DAT1 __at(0xC7D);


extern volatile __bit I2C_READ __at(0xC7A);


extern volatile __bit I2C_READ1 __at(0xC7A);


extern volatile __bit I2C_START __at(0xC7B);


extern volatile __bit I2C_START1 __at(0xC7B);


extern volatile __bit I2C_STOP __at(0xC7C);


extern volatile __bit I2C_STOP2 __at(0xC7C);


extern volatile __bit IDLEN __at(0x4467);


extern volatile __bit IN __at(0x308D);


extern volatile __bit INLVLA0 __at(0xF9E0);


extern volatile __bit INLVLA1 __at(0xF9E1);


extern volatile __bit INLVLA2 __at(0xF9E2);


extern volatile __bit INLVLA3 __at(0xF9E3);


extern volatile __bit INLVLA4 __at(0xF9E4);


extern volatile __bit INLVLA5 __at(0xF9E5);


extern volatile __bit INLVLC0 __at(0xFA90);


extern volatile __bit INLVLC1 __at(0xFA91);


extern volatile __bit INLVLC2 __at(0xFA92);


extern volatile __bit INLVLC3 __at(0xFA93);


extern volatile __bit INLVLC4 __at(0xFA94);


extern volatile __bit INLVLC5 __at(0xFA95);


extern volatile __bit INTE __at(0x38B0);


extern volatile __bit INTEDG __at(0x58);


extern volatile __bit INTF __at(0x3860);


extern volatile __bit INTPPS0 __at(0xF480);


extern volatile __bit INTPPS1 __at(0xF481);


extern volatile __bit INTPPS2 __at(0xF482);


extern volatile __bit INTPPS3 __at(0xF483);


extern volatile __bit INTPPS4 __at(0xF484);


extern volatile __bit INTPPS5 __at(0xF485);


extern volatile __bit IOCAF0 __at(0xF9F8);


extern volatile __bit IOCAF1 __at(0xF9F9);


extern volatile __bit IOCAF2 __at(0xF9FA);


extern volatile __bit IOCAF3 __at(0xF9FB);


extern volatile __bit IOCAF4 __at(0xF9FC);


extern volatile __bit IOCAF5 __at(0xF9FD);


extern volatile __bit IOCAN0 __at(0xF9F0);


extern volatile __bit IOCAN1 __at(0xF9F1);


extern volatile __bit IOCAN2 __at(0xF9F2);


extern volatile __bit IOCAN3 __at(0xF9F3);


extern volatile __bit IOCAN4 __at(0xF9F4);


extern volatile __bit IOCAN5 __at(0xF9F5);


extern volatile __bit IOCAP0 __at(0xF9E8);


extern volatile __bit IOCAP1 __at(0xF9E9);


extern volatile __bit IOCAP2 __at(0xF9EA);


extern volatile __bit IOCAP3 __at(0xF9EB);


extern volatile __bit IOCAP4 __at(0xF9EC);


extern volatile __bit IOCAP5 __at(0xF9ED);


extern volatile __bit IOCCF0 __at(0xFAA8);


extern volatile __bit IOCCF1 __at(0xFAA9);


extern volatile __bit IOCCF2 __at(0xFAAA);


extern volatile __bit IOCCF3 __at(0xFAAB);


extern volatile __bit IOCCF4 __at(0xFAAC);


extern volatile __bit IOCCF5 __at(0xFAAD);


extern volatile __bit IOCCN0 __at(0xFAA0);


extern volatile __bit IOCCN1 __at(0xFAA1);


extern volatile __bit IOCCN2 __at(0xFAA2);


extern volatile __bit IOCCN3 __at(0xFAA3);


extern volatile __bit IOCCN4 __at(0xFAA4);


extern volatile __bit IOCCN5 __at(0xFAA5);


extern volatile __bit IOCCP0 __at(0xFA98);


extern volatile __bit IOCCP1 __at(0xFA99);


extern volatile __bit IOCCP2 __at(0xFA9A);


extern volatile __bit IOCCP3 __at(0xFA9B);


extern volatile __bit IOCCP4 __at(0xFA9C);


extern volatile __bit IOCCP5 __at(0xFA9D);


extern volatile __bit IOCIE __at(0x38B4);


extern volatile __bit IOCIF __at(0x3864);


extern volatile __bit IOCMD __at(0x3CB0);


extern volatile __bit LATA0 __at(0xC0);


extern volatile __bit LATA1 __at(0xC1);


extern volatile __bit LATA2 __at(0xC2);


extern volatile __bit LATA4 __at(0xC4);


extern volatile __bit LATA5 __at(0xC5);


extern volatile __bit LATC0 __at(0xD0);


extern volatile __bit LATC1 __at(0xD1);


extern volatile __bit LATC2 __at(0xD2);


extern volatile __bit LATC3 __at(0xD3);


extern volatile __bit LATC4 __at(0xD4);


extern volatile __bit LATC5 __at(0xD5);


extern volatile __bit LC1D1S0 __at(0xF090);


extern volatile __bit LC1D1S1 __at(0xF091);


extern volatile __bit LC1D1S2 __at(0xF092);


extern volatile __bit LC1D1S3 __at(0xF093);


extern volatile __bit LC1D1S4 __at(0xF094);


extern volatile __bit LC1D1S5 __at(0xF095);


extern volatile __bit LC1D2S0 __at(0xF098);


extern volatile __bit LC1D2S1 __at(0xF099);


extern volatile __bit LC1D2S2 __at(0xF09A);


extern volatile __bit LC1D2S3 __at(0xF09B);


extern volatile __bit LC1D2S4 __at(0xF09C);


extern volatile __bit LC1D2S5 __at(0xF09D);


extern volatile __bit LC1D3S0 __at(0xF0A0);


extern volatile __bit LC1D3S1 __at(0xF0A1);


extern volatile __bit LC1D3S2 __at(0xF0A2);


extern volatile __bit LC1D3S3 __at(0xF0A3);


extern volatile __bit LC1D3S4 __at(0xF0A4);


extern volatile __bit LC1D3S5 __at(0xF0A5);


extern volatile __bit LC1D4S0 __at(0xF0A8);


extern volatile __bit LC1D4S1 __at(0xF0A9);


extern volatile __bit LC1D4S2 __at(0xF0AA);


extern volatile __bit LC1D4S3 __at(0xF0AB);


extern volatile __bit LC1D4S4 __at(0xF0AC);


extern volatile __bit LC1D4S5 __at(0xF0AD);


extern volatile __bit LC1EN __at(0xF087);


extern volatile __bit LC1G1D1N __at(0xF0B0);


extern volatile __bit LC1G1D1T __at(0xF0B1);


extern volatile __bit LC1G1D2N __at(0xF0B2);


extern volatile __bit LC1G1D2T __at(0xF0B3);


extern volatile __bit LC1G1D3N __at(0xF0B4);


extern volatile __bit LC1G1D3T __at(0xF0B5);


extern volatile __bit LC1G1D4N __at(0xF0B6);


extern volatile __bit LC1G1D4T __at(0xF0B7);


extern volatile __bit LC1G1POL __at(0xF088);


extern volatile __bit LC1G2D1N __at(0xF0B8);


extern volatile __bit LC1G2D1T __at(0xF0B9);


extern volatile __bit LC1G2D2N __at(0xF0BA);


extern volatile __bit LC1G2D2T __at(0xF0BB);


extern volatile __bit LC1G2D3N __at(0xF0BC);


extern volatile __bit LC1G2D3T __at(0xF0BD);


extern volatile __bit LC1G2D4N __at(0xF0BE);


extern volatile __bit LC1G2D4T __at(0xF0BF);


extern volatile __bit LC1G2POL __at(0xF089);


extern volatile __bit LC1G3D1N __at(0xF0C0);


extern volatile __bit LC1G3D1T __at(0xF0C1);


extern volatile __bit LC1G3D2N __at(0xF0C2);


extern volatile __bit LC1G3D2T __at(0xF0C3);


extern volatile __bit LC1G3D3N __at(0xF0C4);


extern volatile __bit LC1G3D3T __at(0xF0C5);


extern volatile __bit LC1G3D4N __at(0xF0C6);


extern volatile __bit LC1G3D4T __at(0xF0C7);


extern volatile __bit LC1G3POL __at(0xF08A);


extern volatile __bit LC1G4D1N __at(0xF0C8);


extern volatile __bit LC1G4D1T __at(0xF0C9);


extern volatile __bit LC1G4D2N __at(0xF0CA);


extern volatile __bit LC1G4D2T __at(0xF0CB);


extern volatile __bit LC1G4D3N __at(0xF0CC);


extern volatile __bit LC1G4D3T __at(0xF0CD);


extern volatile __bit LC1G4D4N __at(0xF0CE);


extern volatile __bit LC1G4D4T __at(0xF0CF);


extern volatile __bit LC1G4POL __at(0xF08B);


extern volatile __bit LC1INTN __at(0xF083);


extern volatile __bit LC1INTP __at(0xF084);


extern volatile __bit LC1MODE0 __at(0xF080);


extern volatile __bit LC1MODE1 __at(0xF081);


extern volatile __bit LC1MODE2 __at(0xF082);


extern volatile __bit LC1OUT __at(0xF085);


extern volatile __bit LC1POL __at(0xF08F);


extern volatile __bit LC2D1S0 __at(0xF0E0);


extern volatile __bit LC2D1S1 __at(0xF0E1);


extern volatile __bit LC2D1S2 __at(0xF0E2);


extern volatile __bit LC2D1S3 __at(0xF0E3);


extern volatile __bit LC2D1S4 __at(0xF0E4);


extern volatile __bit LC2D1S5 __at(0xF0E5);


extern volatile __bit LC2D2S0 __at(0xF0E8);


extern volatile __bit LC2D2S1 __at(0xF0E9);


extern volatile __bit LC2D2S2 __at(0xF0EA);


extern volatile __bit LC2D2S3 __at(0xF0EB);


extern volatile __bit LC2D2S4 __at(0xF0EC);


extern volatile __bit LC2D2S5 __at(0xF0ED);


extern volatile __bit LC2D3S0 __at(0xF0F0);


extern volatile __bit LC2D3S1 __at(0xF0F1);


extern volatile __bit LC2D3S2 __at(0xF0F2);


extern volatile __bit LC2D3S3 __at(0xF0F3);


extern volatile __bit LC2D3S4 __at(0xF0F4);


extern volatile __bit LC2D3S5 __at(0xF0F5);


extern volatile __bit LC2D4S0 __at(0xF0F8);


extern volatile __bit LC2D4S1 __at(0xF0F9);


extern volatile __bit LC2D4S2 __at(0xF0FA);


extern volatile __bit LC2D4S3 __at(0xF0FB);


extern volatile __bit LC2D4S4 __at(0xF0FC);


extern volatile __bit LC2D4S5 __at(0xF0FD);


extern volatile __bit LC2EN __at(0xF0D7);


extern volatile __bit LC2G1D1N __at(0xF100);


extern volatile __bit LC2G1D1T __at(0xF101);


extern volatile __bit LC2G1D2N __at(0xF102);


extern volatile __bit LC2G1D2T __at(0xF103);


extern volatile __bit LC2G1D3N __at(0xF104);


extern volatile __bit LC2G1D3T __at(0xF105);


extern volatile __bit LC2G1D4N __at(0xF106);


extern volatile __bit LC2G1D4T __at(0xF107);


extern volatile __bit LC2G1POL __at(0xF0D8);


extern volatile __bit LC2G2D1N __at(0xF108);


extern volatile __bit LC2G2D1T __at(0xF109);


extern volatile __bit LC2G2D2N __at(0xF10A);


extern volatile __bit LC2G2D2T __at(0xF10B);


extern volatile __bit LC2G2D3N __at(0xF10C);


extern volatile __bit LC2G2D3T __at(0xF10D);


extern volatile __bit LC2G2D4N __at(0xF10E);


extern volatile __bit LC2G2D4T __at(0xF10F);


extern volatile __bit LC2G2POL __at(0xF0D9);


extern volatile __bit LC2G3D1N __at(0xF110);


extern volatile __bit LC2G3D1T __at(0xF111);


extern volatile __bit LC2G3D2N __at(0xF112);


extern volatile __bit LC2G3D2T __at(0xF113);


extern volatile __bit LC2G3D3N __at(0xF114);


extern volatile __bit LC2G3D3T __at(0xF115);


extern volatile __bit LC2G3D4N __at(0xF116);


extern volatile __bit LC2G3D4T __at(0xF117);


extern volatile __bit LC2G3POL __at(0xF0DA);


extern volatile __bit LC2G4D1N __at(0xF118);


extern volatile __bit LC2G4D1T __at(0xF119);


extern volatile __bit LC2G4D2N __at(0xF11A);


extern volatile __bit LC2G4D2T __at(0xF11B);


extern volatile __bit LC2G4D3N __at(0xF11C);


extern volatile __bit LC2G4D3T __at(0xF11D);


extern volatile __bit LC2G4D4N __at(0xF11E);


extern volatile __bit LC2G4D4T __at(0xF11F);


extern volatile __bit LC2G4POL __at(0xF0DB);


extern volatile __bit LC2INTN __at(0xF0D3);


extern volatile __bit LC2INTP __at(0xF0D4);


extern volatile __bit LC2MODE0 __at(0xF0D0);


extern volatile __bit LC2MODE1 __at(0xF0D1);


extern volatile __bit LC2MODE2 __at(0xF0D2);


extern volatile __bit LC2OUT __at(0xF0D5);


extern volatile __bit LC2POL __at(0xF0DF);


extern volatile __bit LC3D1S0 __at(0xF130);


extern volatile __bit LC3D1S1 __at(0xF131);


extern volatile __bit LC3D1S2 __at(0xF132);


extern volatile __bit LC3D1S3 __at(0xF133);


extern volatile __bit LC3D1S4 __at(0xF134);


extern volatile __bit LC3D1S5 __at(0xF135);


extern volatile __bit LC3D2S0 __at(0xF138);


extern volatile __bit LC3D2S1 __at(0xF139);


extern volatile __bit LC3D2S2 __at(0xF13A);


extern volatile __bit LC3D2S3 __at(0xF13B);


extern volatile __bit LC3D2S4 __at(0xF13C);


extern volatile __bit LC3D2S5 __at(0xF13D);


extern volatile __bit LC3D3S0 __at(0xF140);


extern volatile __bit LC3D3S1 __at(0xF141);


extern volatile __bit LC3D3S2 __at(0xF142);


extern volatile __bit LC3D3S3 __at(0xF143);


extern volatile __bit LC3D3S4 __at(0xF144);


extern volatile __bit LC3D3S5 __at(0xF145);


extern volatile __bit LC3D4S0 __at(0xF148);


extern volatile __bit LC3D4S1 __at(0xF149);


extern volatile __bit LC3D4S2 __at(0xF14A);


extern volatile __bit LC3D4S3 __at(0xF14B);


extern volatile __bit LC3D4S4 __at(0xF14C);


extern volatile __bit LC3D4S5 __at(0xF14D);


extern volatile __bit LC3EN __at(0xF127);


extern volatile __bit LC3G1D1N __at(0xF150);


extern volatile __bit LC3G1D1T __at(0xF151);


extern volatile __bit LC3G1D2N __at(0xF152);


extern volatile __bit LC3G1D2T __at(0xF153);


extern volatile __bit LC3G1D3N __at(0xF154);


extern volatile __bit LC3G1D3T __at(0xF155);


extern volatile __bit LC3G1D4N __at(0xF156);


extern volatile __bit LC3G1D4T __at(0xF157);


extern volatile __bit LC3G1POL __at(0xF128);


extern volatile __bit LC3G2D1N __at(0xF158);


extern volatile __bit LC3G2D1T __at(0xF159);


extern volatile __bit LC3G2D2N __at(0xF15A);


extern volatile __bit LC3G2D2T __at(0xF15B);


extern volatile __bit LC3G2D3N __at(0xF15C);


extern volatile __bit LC3G2D3T __at(0xF15D);


extern volatile __bit LC3G2D4N __at(0xF15E);


extern volatile __bit LC3G2D4T __at(0xF15F);


extern volatile __bit LC3G2POL __at(0xF129);


extern volatile __bit LC3G3D1N __at(0xF160);


extern volatile __bit LC3G3D1T __at(0xF161);


extern volatile __bit LC3G3D2N __at(0xF162);


extern volatile __bit LC3G3D2T __at(0xF163);


extern volatile __bit LC3G3D3N __at(0xF164);


extern volatile __bit LC3G3D3T __at(0xF165);


extern volatile __bit LC3G3D4N __at(0xF166);


extern volatile __bit LC3G3D4T __at(0xF167);


extern volatile __bit LC3G3POL __at(0xF12A);


extern volatile __bit LC3G4D1N __at(0xF168);


extern volatile __bit LC3G4D1T __at(0xF169);


extern volatile __bit LC3G4D2N __at(0xF16A);


extern volatile __bit LC3G4D2T __at(0xF16B);


extern volatile __bit LC3G4D3N __at(0xF16C);


extern volatile __bit LC3G4D3T __at(0xF16D);


extern volatile __bit LC3G4D4N __at(0xF16E);


extern volatile __bit LC3G4D4T __at(0xF16F);


extern volatile __bit LC3G4POL __at(0xF12B);


extern volatile __bit LC3INTN __at(0xF123);


extern volatile __bit LC3INTP __at(0xF124);


extern volatile __bit LC3MODE0 __at(0xF120);


extern volatile __bit LC3MODE1 __at(0xF121);


extern volatile __bit LC3MODE2 __at(0xF122);


extern volatile __bit LC3OUT __at(0xF125);


extern volatile __bit LC3POL __at(0xF12F);


extern volatile __bit LC4D1S0 __at(0xF180);


extern volatile __bit LC4D1S1 __at(0xF181);


extern volatile __bit LC4D1S2 __at(0xF182);


extern volatile __bit LC4D1S3 __at(0xF183);


extern volatile __bit LC4D1S4 __at(0xF184);


extern volatile __bit LC4D1S5 __at(0xF185);


extern volatile __bit LC4D2S0 __at(0xF188);


extern volatile __bit LC4D2S1 __at(0xF189);


extern volatile __bit LC4D2S2 __at(0xF18A);


extern volatile __bit LC4D2S3 __at(0xF18B);


extern volatile __bit LC4D2S4 __at(0xF18C);


extern volatile __bit LC4D2S5 __at(0xF18D);


extern volatile __bit LC4D3S0 __at(0xF190);


extern volatile __bit LC4D3S1 __at(0xF191);


extern volatile __bit LC4D3S2 __at(0xF192);


extern volatile __bit LC4D3S3 __at(0xF193);


extern volatile __bit LC4D3S4 __at(0xF194);


extern volatile __bit LC4D3S5 __at(0xF195);


extern volatile __bit LC4D4S0 __at(0xF198);


extern volatile __bit LC4D4S1 __at(0xF199);


extern volatile __bit LC4D4S2 __at(0xF19A);


extern volatile __bit LC4D4S3 __at(0xF19B);


extern volatile __bit LC4D4S4 __at(0xF19C);


extern volatile __bit LC4D4S5 __at(0xF19D);


extern volatile __bit LC4EN __at(0xF177);


extern volatile __bit LC4G1D1N __at(0xF1A0);


extern volatile __bit LC4G1D1T __at(0xF1A1);


extern volatile __bit LC4G1D2N __at(0xF1A2);


extern volatile __bit LC4G1D2T __at(0xF1A3);


extern volatile __bit LC4G1D3N __at(0xF1A4);


extern volatile __bit LC4G1D3T __at(0xF1A5);


extern volatile __bit LC4G1D4N __at(0xF1A6);


extern volatile __bit LC4G1D4T __at(0xF1A7);


extern volatile __bit LC4G1POL __at(0xF178);


extern volatile __bit LC4G2D1N __at(0xF1A8);


extern volatile __bit LC4G2D1T __at(0xF1A9);


extern volatile __bit LC4G2D2N __at(0xF1AA);


extern volatile __bit LC4G2D2T __at(0xF1AB);


extern volatile __bit LC4G2D3N __at(0xF1AC);


extern volatile __bit LC4G2D3T __at(0xF1AD);


extern volatile __bit LC4G2D4N __at(0xF1AE);


extern volatile __bit LC4G2D4T __at(0xF1AF);


extern volatile __bit LC4G2POL __at(0xF179);


extern volatile __bit LC4G3D1N __at(0xF1B0);


extern volatile __bit LC4G3D1T __at(0xF1B1);


extern volatile __bit LC4G3D2N __at(0xF1B2);


extern volatile __bit LC4G3D2T __at(0xF1B3);


extern volatile __bit LC4G3D3N __at(0xF1B4);


extern volatile __bit LC4G3D3T __at(0xF1B5);


extern volatile __bit LC4G3D4N __at(0xF1B6);


extern volatile __bit LC4G3D4T __at(0xF1B7);


extern volatile __bit LC4G3POL __at(0xF17A);


extern volatile __bit LC4G4D1N __at(0xF1B8);


extern volatile __bit LC4G4D1T __at(0xF1B9);


extern volatile __bit LC4G4D2N __at(0xF1BA);


extern volatile __bit LC4G4D2T __at(0xF1BB);


extern volatile __bit LC4G4D3N __at(0xF1BC);


extern volatile __bit LC4G4D3T __at(0xF1BD);


extern volatile __bit LC4G4D4N __at(0xF1BE);


extern volatile __bit LC4G4D4T __at(0xF1BF);


extern volatile __bit LC4G4POL __at(0xF17B);


extern volatile __bit LC4INTN __at(0xF173);


extern volatile __bit LC4INTP __at(0xF174);


extern volatile __bit LC4MODE0 __at(0xF170);


extern volatile __bit LC4MODE1 __at(0xF171);


extern volatile __bit LC4MODE2 __at(0xF172);


extern volatile __bit LC4OUT __at(0xF175);


extern volatile __bit LC4POL __at(0xF17F);


extern volatile __bit LD __at(0x3086);


extern volatile __bit LFOEN __at(0x448C);


extern volatile __bit LFOR __at(0x4484);


extern volatile __bit LSAC0 __at(0x3092);


extern volatile __bit LSAC1 __at(0x3093);


extern volatile __bit LSBD0 __at(0x3094);


extern volatile __bit LSBD1 __at(0x3095);


extern volatile __bit LWLO __at(0x40F5);


extern volatile __bit MC1OUT __at(0x4C78);


extern volatile __bit MC2OUT __at(0x4C79);


extern volatile __bit MFOEN __at(0x448D);


extern volatile __bit MFOR __at(0x4485);


extern volatile __bit MLC1OUT __at(0xF078);


extern volatile __bit MLC2OUT __at(0xF079);


extern volatile __bit MLC3OUT __at(0xF07A);


extern volatile __bit MLC4OUT __at(0xF07B);


extern volatile __bit MODE4 __at(0x147C);


extern volatile __bit MSK01 __at(0xC68);


extern volatile __bit MSK11 __at(0xC69);


extern volatile __bit MSK21 __at(0xC6A);


extern volatile __bit MSK31 __at(0xC6B);


extern volatile __bit MSK41 __at(0xC6C);


extern volatile __bit MSK51 __at(0xC6D);


extern volatile __bit MSK61 __at(0xC6E);


extern volatile __bit MSK71 __at(0xC6F);


extern volatile __bit MSSP1MD __at(0x3CD4);


extern volatile __bit N1CKS0 __at(0x2C98);


extern volatile __bit N1CKS1 __at(0x2C99);


extern volatile __bit N1CKS2 __at(0x2C9A);


extern volatile __bit N1CKS3 __at(0x2C9B);


extern volatile __bit N1EN __at(0x2C97);


extern volatile __bit N1OUT __at(0x2C95);


extern volatile __bit N1PFM __at(0x2C90);


extern volatile __bit N1POL __at(0x2C94);


extern volatile __bit N1PWS0 __at(0x2C9D);


extern volatile __bit N1PWS1 __at(0x2C9E);


extern volatile __bit N1PWS2 __at(0x2C9F);


extern volatile __bit NCO1ACC0 __at(0x2C60);


extern volatile __bit NCO1ACC1 __at(0x2C61);


extern volatile __bit NCO1ACC10 __at(0x2C6A);


extern volatile __bit NCO1ACC11 __at(0x2C6B);


extern volatile __bit NCO1ACC12 __at(0x2C6C);


extern volatile __bit NCO1ACC13 __at(0x2C6D);


extern volatile __bit NCO1ACC14 __at(0x2C6E);


extern volatile __bit NCO1ACC15 __at(0x2C6F);


extern volatile __bit NCO1ACC16 __at(0x2C70);


extern volatile __bit NCO1ACC17 __at(0x2C71);


extern volatile __bit NCO1ACC18 __at(0x2C72);


extern volatile __bit NCO1ACC19 __at(0x2C73);


extern volatile __bit NCO1ACC2 __at(0x2C62);


extern volatile __bit NCO1ACC3 __at(0x2C63);


extern volatile __bit NCO1ACC4 __at(0x2C64);


extern volatile __bit NCO1ACC5 __at(0x2C65);


extern volatile __bit NCO1ACC6 __at(0x2C66);


extern volatile __bit NCO1ACC7 __at(0x2C67);


extern volatile __bit NCO1ACC8 __at(0x2C68);


extern volatile __bit NCO1ACC9 __at(0x2C69);


extern volatile __bit NCO1IE __at(0x38EC);


extern volatile __bit NCO1IF __at(0x389C);


extern volatile __bit NCO1INC0 __at(0x2C78);


extern volatile __bit NCO1INC1 __at(0x2C79);


extern volatile __bit NCO1INC10 __at(0x2C82);


extern volatile __bit NCO1INC11 __at(0x2C83);


extern volatile __bit NCO1INC12 __at(0x2C84);


extern volatile __bit NCO1INC13 __at(0x2C85);


extern volatile __bit NCO1INC14 __at(0x2C86);


extern volatile __bit NCO1INC15 __at(0x2C87);


extern volatile __bit NCO1INC16 __at(0x2C88);


extern volatile __bit NCO1INC17 __at(0x2C89);


extern volatile __bit NCO1INC18 __at(0x2C8A);


extern volatile __bit NCO1INC19 __at(0x2C8B);


extern volatile __bit NCO1INC2 __at(0x2C7A);


extern volatile __bit NCO1INC3 __at(0x2C7B);


extern volatile __bit NCO1INC4 __at(0x2C7C);


extern volatile __bit NCO1INC5 __at(0x2C7D);


extern volatile __bit NCO1INC6 __at(0x2C7E);


extern volatile __bit NCO1INC7 __at(0x2C7F);


extern volatile __bit NCO1INC8 __at(0x2C80);


extern volatile __bit NCO1INC9 __at(0x2C81);


extern volatile __bit NCOIE __at(0x38EC);


extern volatile __bit NCOIF __at(0x389C);


extern volatile __bit NCOMD __at(0x3CBF);


extern volatile __bit NDIV0 __at(0x4468);


extern volatile __bit NDIV1 __at(0x4469);


extern volatile __bit NDIV2 __at(0x446A);


extern volatile __bit NDIV3 __at(0x446B);


extern volatile __bit NOSC0 __at(0x446C);


extern volatile __bit NOSC1 __at(0x446D);


extern volatile __bit NOSC2 __at(0x446E);


extern volatile __bit NOSCR __at(0x447B);


extern volatile __bit NSS __at(0x4870);


extern volatile __bit NVMADRH0 __at(0x40D8);


extern volatile __bit NVMADRH1 __at(0x40D9);


extern volatile __bit NVMADRH2 __at(0x40DA);


extern volatile __bit NVMADRH3 __at(0x40DB);


extern volatile __bit NVMADRH4 __at(0x40DC);


extern volatile __bit NVMADRH5 __at(0x40DD);


extern volatile __bit NVMADRH6 __at(0x40DE);


extern volatile __bit NVMADRL0 __at(0x40D0);


extern volatile __bit NVMADRL1 __at(0x40D1);


extern volatile __bit NVMADRL2 __at(0x40D2);


extern volatile __bit NVMADRL3 __at(0x40D3);


extern volatile __bit NVMADRL4 __at(0x40D4);


extern volatile __bit NVMADRL5 __at(0x40D5);


extern volatile __bit NVMADRL6 __at(0x40D6);


extern volatile __bit NVMADRL7 __at(0x40D7);


extern volatile __bit NVMDATH0 __at(0x40E8);


extern volatile __bit NVMDATH1 __at(0x40E9);


extern volatile __bit NVMDATH2 __at(0x40EA);


extern volatile __bit NVMDATH3 __at(0x40EB);


extern volatile __bit NVMDATH4 __at(0x40EC);


extern volatile __bit NVMDATH5 __at(0x40ED);


extern volatile __bit NVMDATL0 __at(0x40E0);


extern volatile __bit NVMDATL1 __at(0x40E1);


extern volatile __bit NVMDATL2 __at(0x40E2);


extern volatile __bit NVMDATL3 __at(0x40E3);


extern volatile __bit NVMDATL4 __at(0x40E4);


extern volatile __bit NVMDATL5 __at(0x40E5);


extern volatile __bit NVMDATL6 __at(0x40E6);


extern volatile __bit NVMDATL7 __at(0x40E7);


extern volatile __bit NVMIE __at(0x38ED);


extern volatile __bit NVMIF __at(0x389D);


extern volatile __bit NVMMD __at(0x3CB2);


extern volatile __bit NVMREGS __at(0x40F6);


extern volatile __bit ODCA0 __at(0xF9D0);


extern volatile __bit ODCA1 __at(0xF9D1);


extern volatile __bit ODCA2 __at(0xF9D2);


extern volatile __bit ODCA4 __at(0xF9D4);


extern volatile __bit ODCA5 __at(0xF9D5);


extern volatile __bit ODCC0 __at(0xFA80);


extern volatile __bit ODCC1 __at(0xFA81);


extern volatile __bit ODCC2 __at(0xFA82);


extern volatile __bit ODCC3 __at(0xFA83);


extern volatile __bit ODCC4 __at(0xFA84);


extern volatile __bit ODCC5 __at(0xFA85);


extern volatile __bit OE1 __at(0x4875);


extern volatile __bit OE2 __at(0x4874);


extern volatile __bit ORDY __at(0x447C);


extern volatile __bit OSFIE __at(0x38BF);


extern volatile __bit OSFIF __at(0x386F);


extern volatile __bit OUTPS0 __at(0x1470);


extern volatile __bit OUTPS1 __at(0x1471);


extern volatile __bit OUTPS2 __at(0x1472);


extern volatile __bit OUTPS3 __at(0x1473);


extern volatile __bit OVRA __at(0x30A4);


extern volatile __bit OVRB __at(0x30A5);


extern volatile __bit OVRC __at(0x30A6);


extern volatile __bit OVRD __at(0x30A7);


extern volatile __bit P1M1 __at(0x1877);


extern volatile __bit P2 __at(0xC7C);


extern volatile __bit P2M1 __at(0x1897);


extern volatile __bit PCIE __at(0xC96);


extern volatile __bit PEIE __at(0x5E);


extern volatile __bit PEN __at(0xC8A);


extern volatile __bit PEN1 __at(0xC8A);


extern volatile __bit PLLR __at(0x4480);


extern volatile __bit POLA __at(0x3088);


extern volatile __bit POLB __at(0x3089);


extern volatile __bit POLC __at(0x308A);


extern volatile __bit POLD __at(0x308B);


extern volatile __bit PPSLOCKED __at(0xF478);


extern volatile __bit PSCNT0 __at(0x4070);


extern volatile __bit PSCNT1 __at(0x4071);


extern volatile __bit PSCNT10 __at(0x407A);


extern volatile __bit PSCNT11 __at(0x407B);


extern volatile __bit PSCNT12 __at(0x407C);


extern volatile __bit PSCNT13 __at(0x407D);


extern volatile __bit PSCNT14 __at(0x407E);


extern volatile __bit PSCNT15 __at(0x407F);


extern volatile __bit PSCNT16 __at(0x4080);


extern volatile __bit PSCNT17 __at(0x4081);


extern volatile __bit PSCNT2 __at(0x4072);


extern volatile __bit PSCNT3 __at(0x4073);


extern volatile __bit PSCNT4 __at(0x4074);


extern volatile __bit PSCNT5 __at(0x4075);


extern volatile __bit PSCNT6 __at(0x4076);


extern volatile __bit PSCNT7 __at(0x4077);


extern volatile __bit PSCNT8 __at(0x4078);


extern volatile __bit PSCNT9 __at(0x4079);


extern volatile __bit PSS0 __at(0x4872);


extern volatile __bit PSS1 __at(0x4873);


extern volatile __bit PSYNC __at(0x147F);


extern volatile __bit PWM3DC0 __at(0x18A6);


extern volatile __bit PWM3DC1 __at(0x18A7);


extern volatile __bit PWM3DC2 __at(0x18A8);


extern volatile __bit PWM3DC3 __at(0x18A9);


extern volatile __bit PWM3DC4 __at(0x18AA);


extern volatile __bit PWM3DC5 __at(0x18AB);


extern volatile __bit PWM3DC6 __at(0x18AC);


extern volatile __bit PWM3DC7 __at(0x18AD);


extern volatile __bit PWM3DC8 __at(0x18AE);


extern volatile __bit PWM3DC9 __at(0x18AF);


extern volatile __bit PWM3EN __at(0x18B7);


extern volatile __bit PWM3MD __at(0x3CCA);


extern volatile __bit PWM3OUT __at(0x18B5);


extern volatile __bit PWM3POL __at(0x18B4);


extern volatile __bit PWM4DC0 __at(0x18C6);


extern volatile __bit PWM4DC1 __at(0x18C7);


extern volatile __bit PWM4DC2 __at(0x18C8);


extern volatile __bit PWM4DC3 __at(0x18C9);


extern volatile __bit PWM4DC4 __at(0x18CA);


extern volatile __bit PWM4DC5 __at(0x18CB);


extern volatile __bit PWM4DC6 __at(0x18CC);


extern volatile __bit PWM4DC7 __at(0x18CD);


extern volatile __bit PWM4DC8 __at(0x18CE);


extern volatile __bit PWM4DC9 __at(0x18CF);


extern volatile __bit PWM4EN __at(0x18D7);


extern volatile __bit PWM4MD __at(0x3CCB);


extern volatile __bit PWM4OUT __at(0x18D5);


extern volatile __bit PWM4POL __at(0x18D4);


extern volatile __bit PWM5DC0 __at(0x18E6);


extern volatile __bit PWM5DC1 __at(0x18E7);


extern volatile __bit PWM5DC2 __at(0x18E8);


extern volatile __bit PWM5DC3 __at(0x18E9);


extern volatile __bit PWM5DC4 __at(0x18EA);


extern volatile __bit PWM5DC5 __at(0x18EB);


extern volatile __bit PWM5DC6 __at(0x18EC);


extern volatile __bit PWM5DC7 __at(0x18ED);


extern volatile __bit PWM5DC8 __at(0x18EE);


extern volatile __bit PWM5DC9 __at(0x18EF);


extern volatile __bit PWM5EN __at(0x18F7);


extern volatile __bit PWM5MD __at(0x3CCC);


extern volatile __bit PWM5OUT __at(0x18F5);


extern volatile __bit PWM5POL __at(0x18F4);


extern volatile __bit PWM6DC0 __at(0x1C66);


extern volatile __bit PWM6DC1 __at(0x1C67);


extern volatile __bit PWM6DC2 __at(0x1C68);


extern volatile __bit PWM6DC3 __at(0x1C69);


extern volatile __bit PWM6DC4 __at(0x1C6A);


extern volatile __bit PWM6DC5 __at(0x1C6B);


extern volatile __bit PWM6DC6 __at(0x1C6C);


extern volatile __bit PWM6DC7 __at(0x1C6D);


extern volatile __bit PWM6DC8 __at(0x1C6E);


extern volatile __bit PWM6DC9 __at(0x1C6F);


extern volatile __bit PWM6EN __at(0x1C77);


extern volatile __bit PWM6MD __at(0x3CCD);


extern volatile __bit PWM6OUT __at(0x1C75);


extern volatile __bit PWM6POL __at(0x1C74);


extern volatile __bit RA0 __at(0x60);


extern volatile __bit RA0PPS0 __at(0xF880);


extern volatile __bit RA0PPS1 __at(0xF881);


extern volatile __bit RA0PPS2 __at(0xF882);


extern volatile __bit RA0PPS3 __at(0xF883);


extern volatile __bit RA0PPS4 __at(0xF884);


extern volatile __bit RA1 __at(0x61);


extern volatile __bit RA1PPS0 __at(0xF888);


extern volatile __bit RA1PPS1 __at(0xF889);


extern volatile __bit RA1PPS2 __at(0xF88A);


extern volatile __bit RA1PPS3 __at(0xF88B);


extern volatile __bit RA1PPS4 __at(0xF88C);


extern volatile __bit RA2 __at(0x62);


extern volatile __bit RA2PPS0 __at(0xF890);


extern volatile __bit RA2PPS1 __at(0xF891);


extern volatile __bit RA2PPS2 __at(0xF892);


extern volatile __bit RA2PPS3 __at(0xF893);


extern volatile __bit RA2PPS4 __at(0xF894);


extern volatile __bit RA3 __at(0x63);


extern volatile __bit RA3PPS0 __at(0xF898);


extern volatile __bit RA3PPS1 __at(0xF899);


extern volatile __bit RA3PPS2 __at(0xF89A);


extern volatile __bit RA3PPS3 __at(0xF89B);


extern volatile __bit RA3PPS4 __at(0xF89C);


extern volatile __bit RA4 __at(0x64);


extern volatile __bit RA4PPS0 __at(0xF8A0);


extern volatile __bit RA4PPS1 __at(0xF8A1);


extern volatile __bit RA4PPS2 __at(0xF8A2);


extern volatile __bit RA4PPS3 __at(0xF8A3);


extern volatile __bit RA4PPS4 __at(0xF8A4);


extern volatile __bit RA5 __at(0x65);


extern volatile __bit RA5PPS0 __at(0xF8A8);


extern volatile __bit RA5PPS1 __at(0xF8A9);


extern volatile __bit RA5PPS2 __at(0xF8AA);


extern volatile __bit RA5PPS3 __at(0xF8AB);


extern volatile __bit RA5PPS4 __at(0xF8AC);


extern volatile __bit RC0 __at(0x70);


extern volatile __bit RC0PPS0 __at(0xF900);


extern volatile __bit RC0PPS1 __at(0xF901);


extern volatile __bit RC0PPS2 __at(0xF902);


extern volatile __bit RC0PPS3 __at(0xF903);


extern volatile __bit RC0PPS4 __at(0xF904);


extern volatile __bit RC1 __at(0x71);


extern volatile __bit RC1IE __at(0x38CD);


extern volatile __bit RC1IF __at(0x387D);


extern volatile __bit RC1PPS0 __at(0xF908);


extern volatile __bit RC1PPS1 __at(0xF909);


extern volatile __bit RC1PPS2 __at(0xF90A);


extern volatile __bit RC1PPS3 __at(0xF90B);


extern volatile __bit RC1PPS4 __at(0xF90C);


extern volatile __bit RC2 __at(0x72);


extern volatile __bit RC2IE __at(0x38CF);


extern volatile __bit RC2IF __at(0x387F);


extern volatile __bit RC2PPS0 __at(0xF910);


extern volatile __bit RC2PPS1 __at(0xF911);


extern volatile __bit RC2PPS2 __at(0xF912);


extern volatile __bit RC2PPS3 __at(0xF913);


extern volatile __bit RC2PPS4 __at(0xF914);


extern volatile __bit RC3 __at(0x73);


extern volatile __bit RC3PPS0 __at(0xF918);


extern volatile __bit RC3PPS1 __at(0xF919);


extern volatile __bit RC3PPS2 __at(0xF91A);


extern volatile __bit RC3PPS3 __at(0xF91B);


extern volatile __bit RC3PPS4 __at(0xF91C);


extern volatile __bit RC4 __at(0x74);


extern volatile __bit RC4PPS0 __at(0xF920);


extern volatile __bit RC4PPS1 __at(0xF921);


extern volatile __bit RC4PPS2 __at(0xF922);


extern volatile __bit RC4PPS3 __at(0xF923);


extern volatile __bit RC4PPS4 __at(0xF924);


extern volatile __bit RC5 __at(0x75);


extern volatile __bit RC5PPS0 __at(0xF928);


extern volatile __bit RC5PPS1 __at(0xF929);


extern volatile __bit RC5PPS2 __at(0xF92A);


extern volatile __bit RC5PPS3 __at(0xF92B);


extern volatile __bit RC5PPS4 __at(0xF92C);


extern volatile __bit RCEN __at(0xC8B);


extern volatile __bit RCEN1 __at(0xC8B);


extern volatile __bit RD __at(0x40F0);


extern volatile __bit RD16 __at(0x1071);


extern volatile __bit RD161 __at(0x1071);


extern volatile __bit READ_WRITE __at(0xC7A);


extern volatile __bit READ_WRITE1 __at(0xC7A);


extern volatile __bit REN __at(0x3096);


extern volatile __bit ROI __at(0x4465);


extern volatile __bit RSEL0 __at(0x1488);


extern volatile __bit RSEL1 __at(0x1489);


extern volatile __bit RSEL2 __at(0x148A);


extern volatile __bit RSEL3 __at(0x148B);


extern volatile __bit RSEN __at(0xC89);


extern volatile __bit RSEN1 __at(0xC89);


extern volatile __bit RW __at(0xC7A);


extern volatile __bit RW1 __at(0xC7A);


extern volatile __bit RX1DTPPS0 __at(0xF658);


extern volatile __bit RX1DTPPS1 __at(0xF659);


extern volatile __bit RX1DTPPS2 __at(0xF65A);


extern volatile __bit RX1DTPPS3 __at(0xF65B);


extern volatile __bit RX1DTPPS4 __at(0xF65C);


extern volatile __bit RX1DTPPS5 __at(0xF65D);


extern volatile __bit RX2DTPPS0 __at(0xF668);


extern volatile __bit RX2DTPPS1 __at(0xF669);


extern volatile __bit RX2DTPPS2 __at(0xF66A);


extern volatile __bit RX2DTPPS3 __at(0xF66B);


extern volatile __bit RX2DTPPS4 __at(0xF66C);


extern volatile __bit RX2DTPPS5 __at(0xF66D);


extern volatile __bit R_W __at(0xC7A);


extern volatile __bit R_W1 __at(0xC7A);


extern volatile __bit R_nW __at(0xC7A);


extern volatile __bit R_nW1 __at(0xC7A);


extern volatile __bit S2 __at(0xC7B);


extern volatile __bit SBCDE __at(0xC92);


extern volatile __bit SBOREN __at(0x408F);


extern volatile __bit SCIE __at(0xC95);


extern volatile __bit SDAHT __at(0xC93);


extern volatile __bit SEN1 __at(0xC88);


extern volatile __bit SHUTDOWN __at(0x3097);


extern volatile __bit SLRA0 __at(0xF9D8);


extern volatile __bit SLRA1 __at(0xF9D9);


extern volatile __bit SLRA2 __at(0xF9DA);


extern volatile __bit SLRA4 __at(0xF9DC);


extern volatile __bit SLRA5 __at(0xF9DD);


extern volatile __bit SLRC0 __at(0xFA88);


extern volatile __bit SLRC1 __at(0xFA89);


extern volatile __bit SLRC2 __at(0xFA8A);


extern volatile __bit SLRC3 __at(0xFA8B);


extern volatile __bit SLRC4 __at(0xFA8C);


extern volatile __bit SLRC5 __at(0xFA8D);


extern volatile __bit SMP __at(0xC7F);


extern volatile __bit SMP1 __at(0xC7F);


extern volatile __bit SSP1CLKPPS0 __at(0xF628);


extern volatile __bit SSP1CLKPPS1 __at(0xF629);


extern volatile __bit SSP1CLKPPS2 __at(0xF62A);


extern volatile __bit SSP1CLKPPS3 __at(0xF62B);


extern volatile __bit SSP1CLKPPS4 __at(0xF62C);


extern volatile __bit SSP1CLKPPS5 __at(0xF62D);


extern volatile __bit SSP1DATPPS0 __at(0xF630);


extern volatile __bit SSP1DATPPS1 __at(0xF631);


extern volatile __bit SSP1DATPPS2 __at(0xF632);


extern volatile __bit SSP1DATPPS3 __at(0xF633);


extern volatile __bit SSP1DATPPS4 __at(0xF634);


extern volatile __bit SSP1DATPPS5 __at(0xF635);


extern volatile __bit SSP1IE __at(0x38C8);


extern volatile __bit SSP1IF __at(0x3878);


extern volatile __bit SSP1SSPPS0 __at(0xF638);


extern volatile __bit SSP1SSPPS1 __at(0xF639);


extern volatile __bit SSP1SSPPS2 __at(0xF63A);


extern volatile __bit SSP1SSPPS3 __at(0xF63B);


extern volatile __bit SSP1SSPPS4 __at(0xF63C);


extern volatile __bit SSP1SSPPS5 __at(0xF63D);


extern volatile __bit SSPEN __at(0xC85);


extern volatile __bit SSPEN1 __at(0xC85);


extern volatile __bit SSPM0 __at(0xC80);


extern volatile __bit SSPM01 __at(0xC80);


extern volatile __bit SSPM1 __at(0xC81);


extern volatile __bit SSPM11 __at(0xC81);


extern volatile __bit SSPM2 __at(0xC82);


extern volatile __bit SSPM21 __at(0xC82);


extern volatile __bit SSPM3 __at(0xC83);


extern volatile __bit SSPM31 __at(0xC83);


extern volatile __bit SSPOV __at(0xC86);


extern volatile __bit SSPOV1 __at(0xC86);


extern volatile __bit START __at(0xC7B);


extern volatile __bit START1 __at(0xC7B);


extern volatile __bit STATE __at(0x4082);


extern volatile __bit STATUS_SHAD0 __at(0xFF20);


extern volatile __bit STATUS_SHAD1 __at(0xFF21);


extern volatile __bit STATUS_SHAD2 __at(0xFF22);


extern volatile __bit STKOVF __at(0x409F);


extern volatile __bit STKPTR0 __at(0xFF68);


extern volatile __bit STKPTR1 __at(0xFF69);


extern volatile __bit STKPTR2 __at(0xFF6A);


extern volatile __bit STKPTR3 __at(0xFF6B);


extern volatile __bit STKPTR4 __at(0xFF6C);


extern volatile __bit STKUNF __at(0x409E);


extern volatile __bit STOP __at(0xC7C);


extern volatile __bit STOP1 __at(0xC7C);


extern volatile __bit STRA __at(0x30A0);


extern volatile __bit STRB __at(0x30A1);


extern volatile __bit STRC __at(0x30A2);


extern volatile __bit STRD __at(0x30A3);


extern volatile __bit SWDTEN __at(0x4060);


extern volatile __bit SYSCMD __at(0x3CB7);


extern volatile __bit T016BIT __at(0x2CF4);


extern volatile __bit T0ASYNC __at(0x2CFC);


extern volatile __bit T0CKIPPS0 __at(0xF488);


extern volatile __bit T0CKIPPS1 __at(0xF489);


extern volatile __bit T0CKIPPS2 __at(0xF48A);


extern volatile __bit T0CKIPPS3 __at(0xF48B);


extern volatile __bit T0CKIPPS4 __at(0xF48C);


extern volatile __bit T0CKIPPS5 __at(0xF48D);


extern volatile __bit T0CKPS0 __at(0x2CF8);


extern volatile __bit T0CKPS1 __at(0x2CF9);


extern volatile __bit T0CKPS2 __at(0x2CFA);


extern volatile __bit T0CKPS3 __at(0x2CFB);


extern volatile __bit T0CS0 __at(0x2CFD);


extern volatile __bit T0CS1 __at(0x2CFE);


extern volatile __bit T0CS2 __at(0x2CFF);


extern volatile __bit T0EN __at(0x2CF7);


extern volatile __bit T0OUT __at(0x2CF5);


extern volatile __bit T0OUTPS0 __at(0x2CF0);


extern volatile __bit T0OUTPS1 __at(0x2CF1);


extern volatile __bit T0OUTPS2 __at(0x2CF2);


extern volatile __bit T0OUTPS3 __at(0x2CF3);


extern volatile __bit T0PR0 __at(0x2CE8);


extern volatile __bit T0PR1 __at(0x2CE9);


extern volatile __bit T0PR2 __at(0x2CEA);


extern volatile __bit T0PR3 __at(0x2CEB);


extern volatile __bit T0PR4 __at(0x2CEC);


extern volatile __bit T0PR5 __at(0x2CED);


extern volatile __bit T0PR6 __at(0x2CEE);


extern volatile __bit T0PR7 __at(0x2CEF);


extern volatile __bit T0PS0 __at(0x2CF8);


extern volatile __bit T0PS1 __at(0x2CF9);


extern volatile __bit T0PS2 __at(0x2CFA);


extern volatile __bit T0PS3 __at(0x2CFB);


extern volatile __bit T1CKIPPS0 __at(0xF490);


extern volatile __bit T1CKIPPS1 __at(0xF491);


extern volatile __bit T1CKIPPS2 __at(0xF492);


extern volatile __bit T1CKIPPS3 __at(0xF493);


extern volatile __bit T1CKIPPS4 __at(0xF494);


extern volatile __bit T1CKIPPS5 __at(0xF495);


extern volatile __bit T1CKPS0 __at(0x1074);


extern volatile __bit T1CKPS1 __at(0x1075);


extern volatile __bit T1CS0 __at(0x1088);


extern volatile __bit T1CS1 __at(0x1089);


extern volatile __bit T1CS2 __at(0x108A);


extern volatile __bit T1CS3 __at(0x108B);


extern volatile __bit T1GE __at(0x107F);


extern volatile __bit T1GGO __at(0x107B);


extern volatile __bit T1GGO_nDONE __at(0x107B);


extern volatile __bit T1GPOL __at(0x107E);


extern volatile __bit T1GPPS0 __at(0xF498);


extern volatile __bit T1GPPS1 __at(0xF499);


extern volatile __bit T1GPPS2 __at(0xF49A);


extern volatile __bit T1GPPS3 __at(0xF49B);


extern volatile __bit T1GPPS4 __at(0xF49C);


extern volatile __bit T1GPPS5 __at(0xF49D);


extern volatile __bit T1GSPM __at(0x107C);


extern volatile __bit T1GSS0 __at(0x1080);


extern volatile __bit T1GSS1 __at(0x1081);


extern volatile __bit T1GSS2 __at(0x1082);


extern volatile __bit T1GSS3 __at(0x1083);


extern volatile __bit T1GSS4 __at(0x1084);


extern volatile __bit T1GTM __at(0x107D);


extern volatile __bit T1GVAL __at(0x107A);


extern volatile __bit T1RD16 __at(0x1071);


extern volatile __bit T2CKPOL __at(0x147E);


extern volatile __bit T2CKPS0 __at(0x1474);


extern volatile __bit T2CKPS1 __at(0x1475);


extern volatile __bit T2CKPS2 __at(0x1476);


extern volatile __bit T2CKSYNC __at(0x147D);


extern volatile __bit T2CS0 __at(0x1480);


extern volatile __bit T2CS1 __at(0x1481);


extern volatile __bit T2CS2 __at(0x1482);


extern volatile __bit T2CS3 __at(0x1483);


extern volatile __bit T2INPPS0 __at(0xF4E0);


extern volatile __bit T2INPPS1 __at(0xF4E1);


extern volatile __bit T2INPPS2 __at(0xF4E2);


extern volatile __bit T2INPPS3 __at(0xF4E3);


extern volatile __bit T2INPPS4 __at(0xF4E4);


extern volatile __bit T2INPPS5 __at(0xF4E5);


extern volatile __bit T2MODE0 __at(0x1478);


extern volatile __bit T2MODE1 __at(0x1479);


extern volatile __bit T2MODE2 __at(0x147A);


extern volatile __bit T2MODE3 __at(0x147B);


extern volatile __bit T2MODE4 __at(0x147C);


extern volatile __bit T2ON __at(0x1477);


extern volatile __bit T2OUTPS0 __at(0x1470);


extern volatile __bit T2OUTPS1 __at(0x1471);


extern volatile __bit T2OUTPS2 __at(0x1472);


extern volatile __bit T2OUTPS3 __at(0x1473);


extern volatile __bit T2PSYNC __at(0x147F);


extern volatile __bit T2RSEL0 __at(0x1488);


extern volatile __bit T2RSEL1 __at(0x1489);


extern volatile __bit T2RSEL2 __at(0x148A);


extern volatile __bit T2RSEL3 __at(0x148B);


extern volatile __bit TMR0H0 __at(0x2CE8);


extern volatile __bit TMR0H1 __at(0x2CE9);


extern volatile __bit TMR0H2 __at(0x2CEA);


extern volatile __bit TMR0H3 __at(0x2CEB);


extern volatile __bit TMR0H4 __at(0x2CEC);


extern volatile __bit TMR0H5 __at(0x2CED);


extern volatile __bit TMR0H6 __at(0x2CEE);


extern volatile __bit TMR0H7 __at(0x2CEF);


extern volatile __bit TMR0IE __at(0x38B5);


extern volatile __bit TMR0IF __at(0x3865);


extern volatile __bit TMR0L0 __at(0x2CE0);


extern volatile __bit TMR0L1 __at(0x2CE1);


extern volatile __bit TMR0L2 __at(0x2CE2);


extern volatile __bit TMR0L3 __at(0x2CE3);


extern volatile __bit TMR0L4 __at(0x2CE4);


extern volatile __bit TMR0L5 __at(0x2CE5);


extern volatile __bit TMR0L6 __at(0x2CE6);


extern volatile __bit TMR0L7 __at(0x2CE7);


extern volatile __bit TMR0MD __at(0x3CB8);


extern volatile __bit TMR10 __at(0x1060);


extern volatile __bit TMR11 __at(0x1061);


extern volatile __bit TMR110 __at(0x106A);


extern volatile __bit TMR111 __at(0x106B);


extern volatile __bit TMR112 __at(0x106C);


extern volatile __bit TMR113 __at(0x106D);


extern volatile __bit TMR114 __at(0x106E);


extern volatile __bit TMR115 __at(0x106F);


extern volatile __bit TMR12 __at(0x1062);


extern volatile __bit TMR13 __at(0x1063);


extern volatile __bit TMR14 __at(0x1064);


extern volatile __bit TMR15 __at(0x1065);


extern volatile __bit TMR16 __at(0x1066);


extern volatile __bit TMR17 __at(0x1067);


extern volatile __bit TMR18 __at(0x1068);


extern volatile __bit TMR19 __at(0x1069);


extern volatile __bit TMR1GIE __at(0x38D8);


extern volatile __bit TMR1GIF __at(0x3888);


extern volatile __bit TMR1H0 __at(0x1068);


extern volatile __bit TMR1H1 __at(0x1069);


extern volatile __bit TMR1H2 __at(0x106A);


extern volatile __bit TMR1H3 __at(0x106B);


extern volatile __bit TMR1H4 __at(0x106C);


extern volatile __bit TMR1H5 __at(0x106D);


extern volatile __bit TMR1H6 __at(0x106E);


extern volatile __bit TMR1H7 __at(0x106F);


extern volatile __bit TMR1IE __at(0x38D0);


extern volatile __bit TMR1IF __at(0x3880);


extern volatile __bit TMR1L0 __at(0x1060);


extern volatile __bit TMR1L1 __at(0x1061);


extern volatile __bit TMR1L2 __at(0x1062);


extern volatile __bit TMR1L3 __at(0x1063);


extern volatile __bit TMR1L4 __at(0x1064);


extern volatile __bit TMR1L5 __at(0x1065);


extern volatile __bit TMR1L6 __at(0x1066);


extern volatile __bit TMR1L7 __at(0x1067);


extern volatile __bit TMR1MD __at(0x3CB9);


extern volatile __bit TMR1ON __at(0x1070);


extern volatile __bit TMR2IE __at(0x38D1);


extern volatile __bit TMR2IF __at(0x3881);


extern volatile __bit TMR2MD __at(0x3CBA);


extern volatile __bit TMR2ON __at(0x1477);


extern volatile __bit TOSH0 __at(0xFF78);


extern volatile __bit TOSH1 __at(0xFF79);


extern volatile __bit TOSH2 __at(0xFF7A);


extern volatile __bit TOSH3 __at(0xFF7B);


extern volatile __bit TOSH4 __at(0xFF7C);


extern volatile __bit TOSH5 __at(0xFF7D);


extern volatile __bit TOSH6 __at(0xFF7E);


extern volatile __bit TOSH7 __at(0xFF7F);


extern volatile __bit TOSL0 __at(0xFF70);


extern volatile __bit TOSL1 __at(0xFF71);


extern volatile __bit TOSL2 __at(0xFF72);


extern volatile __bit TOSL3 __at(0xFF73);


extern volatile __bit TOSL4 __at(0xFF74);


extern volatile __bit TOSL5 __at(0xFF75);


extern volatile __bit TOSL6 __at(0xFF76);


extern volatile __bit TOSL7 __at(0xFF77);


extern volatile __bit TRISA0 __at(0x90);


extern volatile __bit TRISA1 __at(0x91);


extern volatile __bit TRISA2 __at(0x92);


extern volatile __bit TRISA4 __at(0x94);


extern volatile __bit TRISA5 __at(0x95);


extern volatile __bit TRISC0 __at(0xA0);


extern volatile __bit TRISC1 __at(0xA1);


extern volatile __bit TRISC2 __at(0xA2);


extern volatile __bit TRISC3 __at(0xA3);


extern volatile __bit TRISC4 __at(0xA4);


extern volatile __bit TRISC5 __at(0xA5);


extern volatile __bit TSEN __at(0x4865);


extern volatile __bit TSRNG __at(0x4864);


extern volatile __bit TX1CKPPS0 __at(0xF660);


extern volatile __bit TX1CKPPS1 __at(0xF661);


extern volatile __bit TX1CKPPS2 __at(0xF662);


extern volatile __bit TX1CKPPS3 __at(0xF663);


extern volatile __bit TX1CKPPS4 __at(0xF664);


extern volatile __bit TX1CKPPS5 __at(0xF665);


extern volatile __bit TX1IE __at(0x38CC);


extern volatile __bit TX1IF __at(0x387C);


extern volatile __bit TX2CKPPS0 __at(0xF670);


extern volatile __bit TX2CKPPS1 __at(0xF671);


extern volatile __bit TX2CKPPS2 __at(0xF672);


extern volatile __bit TX2CKPPS3 __at(0xF673);


extern volatile __bit TX2CKPPS4 __at(0xF674);


extern volatile __bit TX2CKPPS5 __at(0xF675);


extern volatile __bit TX2IE __at(0x38CE);


extern volatile __bit TX2IF __at(0x387E);


extern volatile __bit UA __at(0xC79);


extern volatile __bit UA1 __at(0xC79);


extern volatile __bit UART1MD __at(0x3CD6);


extern volatile __bit UART2MD __at(0x3CD7);


extern volatile __bit VREGPM __at(0x4091);


extern volatile __bit WCOL __at(0xC87);


extern volatile __bit WCOL1 __at(0xC87);


extern volatile __bit WDTCS0 __at(0x406C);


extern volatile __bit WDTCS1 __at(0x406D);


extern volatile __bit WDTCS2 __at(0x406E);


extern volatile __bit WDTPS0 __at(0x4061);


extern volatile __bit WDTPS1 __at(0x4062);


extern volatile __bit WDTPS2 __at(0x4063);


extern volatile __bit WDTPS3 __at(0x4064);


extern volatile __bit WDTPS4 __at(0x4065);


extern volatile __bit WDTPSCNT0 __at(0x4070);


extern volatile __bit WDTPSCNT1 __at(0x4071);


extern volatile __bit WDTPSCNT10 __at(0x407A);


extern volatile __bit WDTPSCNT11 __at(0x407B);


extern volatile __bit WDTPSCNT12 __at(0x407C);


extern volatile __bit WDTPSCNT13 __at(0x407D);


extern volatile __bit WDTPSCNT14 __at(0x407E);


extern volatile __bit WDTPSCNT15 __at(0x407F);


extern volatile __bit WDTPSCNT16 __at(0x4080);


extern volatile __bit WDTPSCNT17 __at(0x4081);


extern volatile __bit WDTPSCNT2 __at(0x4072);


extern volatile __bit WDTPSCNT3 __at(0x4073);


extern volatile __bit WDTPSCNT4 __at(0x4074);


extern volatile __bit WDTPSCNT5 __at(0x4075);


extern volatile __bit WDTPSCNT6 __at(0x4076);


extern volatile __bit WDTPSCNT7 __at(0x4077);


extern volatile __bit WDTPSCNT8 __at(0x4078);


extern volatile __bit WDTPSCNT9 __at(0x4079);


extern volatile __bit WDTSEN __at(0x4060);


extern volatile __bit WDTSTATE __at(0x4082);


extern volatile __bit WDTTMR0 __at(0x4083);


extern volatile __bit WDTTMR1 __at(0x4084);


extern volatile __bit WDTTMR2 __at(0x4085);


extern volatile __bit WDTTMR3 __at(0x4086);


extern volatile __bit WDTWINDOW0 __at(0x4068);


extern volatile __bit WDTWINDOW1 __at(0x4069);


extern volatile __bit WDTWINDOW2 __at(0x406A);


extern volatile __bit WINDOW0 __at(0x4068);


extern volatile __bit WINDOW1 __at(0x4069);


extern volatile __bit WINDOW2 __at(0x406A);


extern volatile __bit WPUA0 __at(0xF9C8);


extern volatile __bit WPUA1 __at(0xF9C9);


extern volatile __bit WPUA2 __at(0xF9CA);


extern volatile __bit WPUA3 __at(0xF9CB);


extern volatile __bit WPUA4 __at(0xF9CC);


extern volatile __bit WPUA5 __at(0xF9CD);


extern volatile __bit WPUC0 __at(0xFA78);


extern volatile __bit WPUC1 __at(0xFA79);


extern volatile __bit WPUC2 __at(0xFA7A);


extern volatile __bit WPUC3 __at(0xFA7B);


extern volatile __bit WPUC4 __at(0xFA7C);


extern volatile __bit WPUC5 __at(0xFA7D);


extern volatile __bit WR __at(0x40F1);


extern volatile __bit WREN __at(0x40F2);


extern volatile __bit WRERR __at(0x40F3);


extern volatile __bit ZCDIE __at(0x38C6);


extern volatile __bit ZCDIF __at(0x3876);


extern volatile __bit ZCDINTN __at(0x48F8);


extern volatile __bit ZCDINTP __at(0x48F9);


extern volatile __bit ZCDMD __at(0x3CC0);


extern volatile __bit ZCDOUT __at(0x48FD);


extern volatile __bit ZCDPOL __at(0x48FC);


extern volatile __bit ZCDSEN __at(0x48FF);


extern volatile __bit ZERO __at(0x1A);


extern volatile __bit nA __at(0xC7D);


extern volatile __bit nA2 __at(0xC7D);


extern volatile __bit nADDRESS __at(0xC7D);


extern volatile __bit nADDRESS1 __at(0xC7D);


extern volatile __bit nBOR __at(0x4098);


extern volatile __bit nMEMV __at(0x40A1);


extern volatile __bit nPD __at(0x1B);


extern volatile __bit nPOR __at(0x4099);


extern volatile __bit nRI __at(0x409A);


extern volatile __bit nRMCLR __at(0x409B);


extern volatile __bit nRWDT __at(0x409C);


extern volatile __bit nSYNC __at(0x1072);


extern volatile __bit nT1SYNC __at(0x1072);


extern volatile __bit nTO __at(0x1C);


extern volatile __bit nW __at(0xC7A);


extern volatile __bit nW2 __at(0xC7A);


extern volatile __bit nWDTWV __at(0x409D);


extern volatile __bit nWRITE __at(0xC7A);


extern volatile __bit nWRITE1 __at(0xC7A);


# 30 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);

# 78
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);


# 91
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);

# 137
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;

# 11 "PPS.c"
void PPS_unlock() {
PPSLOCK = 0x55;
PPSLOCK = 0xAA;
PPSLOCK = 0;
}

void PPS_lock() {
PPSLOCK = 0x55;
PPSLOCK = 0xAA;
PPSLOCK = 1;
}
