#ifndef STUSB4500_NVM_CONFIG_H
#define STUSB4500_NVM_CONFIG_H

// See Section 5.2 Table 16/17
#define PDO_VOLTAGE(mV) mV / 50
#define PDO_CURRENT(mA) (mA - 250) / 250
#define PDO_CURRENT_FLEX(mA) mA / 10

/* PDO1 Configuration */
// V_SNK_PDO1 fixed to 5V
#define I_SNK_PDO1 PDO_CURRENT(1500) // mA, 25mA increments

/* PDO2 Configuration */
#define V_SNK_PDO2 PDO_VOLTAGE(9000) // mV, 50mV increments
#define I_SNK_PDO2 PDO_CURRENT(3000) // mA, 25mA increments

/* PDO3 Configuration */
#define V_SNK_PDO3 PDO_VOLTAGE(12000) // mV, 50mV increments
#define I_SNK_PDO3 PDO_CURRENT(2000)  // mA, 25mA increments

/* Misc Configuration */
#define I_SNK_PDO_FLEX                                                         \
    PDO_CURRENT_FLEX(2000)    // Global PDO current if I_SNK_PDOX = 0
#define SNK_PDO_NUMB 3        // Number of valid PDOs (1, 2, or 3)
#define REQ_SRC_CURRENT 1     // 1: SRC current, 0: PDO current
#define POWER_ONLY_ABOVE_5V 0 // 1: > 5V negotiation required for output

#endif // STUSB4500_NVM_CONFIG_H