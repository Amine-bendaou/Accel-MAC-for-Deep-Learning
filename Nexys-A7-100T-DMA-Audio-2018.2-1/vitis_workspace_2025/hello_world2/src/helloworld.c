/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */


// Code qui permet d'allumer la led[i] si le switch[i] est activé //

/*
#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"

int main(void) {
    XGpio gpio_in, gpio_out;
    XStatus Status;

    xil_printf("----------------------------------------\r\n");
    xil_printf("Entering main\r\n");

    // Initialisation GPIO_IN
    Status = XGpio_Initialize(&gpio_in, XPAR_GPIO_IN_BASEADDR);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Initialisation GPIO_OUT
    Status = XGpio_Initialize(&gpio_out, XPAR_GPIO_OUT_BASEADDR);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Configuration des directions
    // GPIO_IN channel 2 = entrée pour dip switches
    XGpio_SetDataDirection(&gpio_in, 2, 0xFFFF);

    // GPIO_OUT channel 2 = sortie pour LEDs 16 bits
    XGpio_SetDataDirection(&gpio_out, 2, 0x0000);

    // Test périphériques
    if (XGpio_SelfTest(&gpio_in) != XST_SUCCESS || XGpio_SelfTest(&gpio_out) != XST_SUCCESS) {
        return XST_FAILURE;
    }

    xil_printf("GPIO ready\r\n");

    while (1) {
        u32 switches = XGpio_DiscreteRead(&gpio_in, 2); // Lire les 16 bits des dip switches
        XGpio_DiscreteWrite(&gpio_out, 2, switches);    // Écrire la valeur sur les LEDs correspondantes
    }

    return 0;
}

*/

// test FPMult avec AXI //



#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xuartlite_l.h"
#include "xil_types.h"   // fournit u32, u16, u8
#include "sleep.h"
#include <stdlib.h>

// === Base address of your IP ===
#define FP_MULT_BASE XPAR_FP_MULT_0_BASEADDR

// === AXI register offsets ===
#define REG_STATUS   0x00  // slv_reg0 : done
#define REG_CONTROL  0x04  // slv_reg1 : start/reset
#define REG_INPUT    0x08  // slv_reg2 : X et Y
#define REG_RESULT   0x0C  // slv_reg3 : R

//-------------------------------------------
// Conversion float32 -> float16 (IEEE754)
//-------------------------------------------
u16 float32_to_float16_bits(float f) {
    union { float f; u32 u; } un;
    un.f = f;

    u32 f32 = un.u;
    u32 sign = (f32 >> 31) & 0x1;
    u32 exp  = (f32 >> 23) & 0xFF;
    u32 mant = f32 & 0x7FFFFF;

    u16 f16;

    if (exp == 0) {
        f16 = (u16)(sign << 15);
    } else if (exp == 0xFF) {
        f16 = (u16)((sign << 15) | 0x7C00);
    } else {
        int new_exp = (int)exp - 127 + 15;
        if (new_exp <= 0) {
            f16 = (u16)(sign << 15);
        } else if (new_exp >= 31) {
            f16 = (u16)((sign << 15) | 0x7C00);
        } else {
            f16 = (u16)((sign << 15) | (new_exp << 10) | (mant >> 13));
        }
    }

    return f16;
}

//-------------------------------------------
// Lecture d’un entier via UART
//-------------------------------------------
int read_int_from_uart(const char *prompt) {
    char buf[32];
    int idx = 0;
    u8 c;

    xil_printf("%s", prompt);

    while (1) {
        if (!XUartLite_IsReceiveEmpty(XPAR_XUARTLITE_0_BASEADDR)) {
            c = XUartLite_ReadReg(XPAR_XUARTLITE_0_BASEADDR, XUL_RX_FIFO_OFFSET);

            if (c == '\r' || c == '\n') {
                buf[idx] = '\0';
                xil_printf("\r\n");
                break;
            } else if (c == 8 && idx > 0) { // backspace
                idx--;
                xil_printf("\b \b");
            } else if (idx < (int)sizeof(buf) - 1) {
                buf[idx++] = c;
                xil_printf("%c", c);
            }
        }
    }
    return atoi(buf);
}

//-------------------------------------------
// MAIN
//-------------------------------------------
int main() {
    xil_printf("=== Menu Interactive Multiplicateur FLOPOCO ===\r\n");

    while (1) {
        // ---- Reset IP ----
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0000); // reset = 0 (actif à l'état bas)
        usleep(10);
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0001); // reset = 1 
        xil_printf(">> Reset effectue avec succes.\r\n");

        // ---- Lire X et Y en decimal ----
        int x_dec = read_int_from_uart("Entrez X (decimal): ");
        int y_dec = read_int_from_uart("Entrez Y (decimal): ");

        float fx = (float)x_dec;
        float fy = (float)y_dec;

        u16 x_f16 = float32_to_float16_bits(fx);   // convertir le décimal en float 16
        u16 y_f16 = float32_to_float16_bits(fy);

        xil_printf("Conversion en float16: X=0x%04X , Y=0x%04X\r\n", x_f16, y_f16);

        // ---- Lancer le calcul ----
        xil_printf(">> Calcul en cours...\r\n");

        // écrire X et Y au bon endroit (concaténés en 32 bits : [Y | X]) 
        u32 xy = ((u32)y_f16 << 16) | x_f16;
        Xil_Out32(FP_MULT_BASE + REG_INPUT, xy);

        // start = 1
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x1);

        // Petit délai pour créer le front
        usleep(10);

        // Remettre start à 0
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0);

        // attendre done (bit 0 de reg_status) passe à 1
        while ((Xil_In32(FP_MULT_BASE + REG_STATUS) & 0x1) == 1);

        // ---- Lire le résultat ----
        u32 res = Xil_In32(FP_MULT_BASE + REG_RESULT);   // lit 32 bits (donc tous le bus) depuis l’adresse FP_MULT_BASE + REG_RESULT.
        u16 r_f16 = (u16)(res & 0xFFFF);  // stocker dans r_f16 le résultat disponible dans les 16 bits de poids faible (bits 0 à 15).

        xil_printf(">> Resultat (float16) = 0x%04X\r\n\r\n", r_f16);
    }

    return 0;
}




// Debug du code FPMult avec AXI //

/*

#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xuartlite_l.h"
#include "xil_types.h"   // fournit u32, u16, u8
#include "sleep.h"
#include <stdlib.h>

// === Base address of your IP ===

#define FP_MULT_BASE XPAR_FP_MULT_0_BASEADDR


// === AXI register offsets ===
#define REG_STATUS   0x00  // slv_reg0 : done
#define REG_CONTROL  0x04  // slv_reg1 : start/reset
#define REG_INPUT    0x08  // slv_reg2 : X et Y
#define REG_RESULT   0x0C  // slv_reg3 : R

//-------------------------------------------
// Conversion float32 -> float16 (IEEE754 )
//-------------------------------------------
u16 float32_to_float16_bits(float f) {
    union { float f; u32 u; } un;
    un.f = f;

    u32 f32 = un.u;
    u32 sign = (f32 >> 31) & 0x1;
    u32 exp  = (f32 >> 23) & 0xFF;
    u32 mant = f32 & 0x7FFFFF;

    u16 f16;

    if (exp == 0) {
        f16 = (u16)(sign << 15);
    } else if (exp == 0xFF) {
        f16 = (u16)((sign << 15) | 0x7C00);
    } else {
        int new_exp = (int)exp - 127 + 15;
        if (new_exp <= 0) {
            f16 = (u16)(sign << 15);
        } else if (new_exp >= 31) {
            f16 = (u16)((sign << 15) | 0x7C00);
        } else {
            f16 = (u16)((sign << 15) | (new_exp << 10) | (mant >> 13));
        }
    }

    return f16;
}

//-------------------------------------------
// Lecture d’un entier via UART
//-------------------------------------------
int read_int_from_uart(const char *prompt) {
    char buf[32];
    int idx = 0;
    u8 c;

    xil_printf("%s", prompt);

    while (1) {
        if (!XUartLite_IsReceiveEmpty(XPAR_XUARTLITE_0_BASEADDR)) {
            c = XUartLite_ReadReg(XPAR_XUARTLITE_0_BASEADDR, XUL_RX_FIFO_OFFSET);

            if (c == '\r' || c == '\n') {
                buf[idx] = '\0';
                xil_printf("\r\n");
                break;
            } else if (c == 8 && idx > 0) { // backspace
                idx--;
                xil_printf("\b \b");
            } else if (idx < (int)sizeof(buf) - 1) {
                buf[idx++] = c;
                xil_printf("%c", c);
            }
        }
    }
    return atoi(buf);
}

int main() {
    xil_printf("=== Menu Interactive Multiplicateur FLOPOCO (DEBUG) ===\r\n");

    while (1) {
        // ---- Reset IP ----
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0000); // reset = 0
        usleep(10);
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0001); // reset = 1
        xil_printf(">> Reset effectue.\r\n");

        // ---- Lire X et Y en decimal ----
        int x_dec = read_int_from_uart("Entrez X (decimal): ");
        int y_dec = read_int_from_uart("Entrez Y (decimal): ");

        float fx = (float)x_dec;
        float fy = (float)y_dec;

        u16 x_f16 = float32_to_float16_bits(fx);
        u16 y_f16 = float32_to_float16_bits(fy);

        xil_printf("Conversion en float16: X=0x%04X , Y=0x%04X\r\n", x_f16, y_f16);

        // ---- Debug : lecture initiale des registres ----
        u32 reg_control_before = Xil_In32(FP_MULT_BASE + REG_CONTROL);
        u32 reg_status_before  = Xil_In32(FP_MULT_BASE + REG_STATUS);
        u32 reg_input_before   = Xil_In32(FP_MULT_BASE + REG_INPUT);
        u32 reg_result_before  = Xil_In32(FP_MULT_BASE + REG_RESULT);
        xil_printf("DEBUG Initial: REG_CONTROL=0x%08X, REG_STATUS=0x%08X, REG_INPUT=0x%08X, REG_RESULT=0x%08X\n",
                   reg_control_before, reg_status_before, reg_input_before, reg_result_before);

        // ---- Écrire X et Y (concaténés) ----
        u32 xy = ((u32)y_f16 << 16) | x_f16;
        Xil_Out32(FP_MULT_BASE + REG_INPUT, xy);

        // ---- Vérifier l’écriture ----
        u32 reg_input_after_write = Xil_In32(FP_MULT_BASE + REG_INPUT);
        xil_printf("DEBUG Test ecriture REG_INPUT=0x%08X\n", reg_input_after_write);

        // ---- Écrire start = 1 ----
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x1);

        // ---- Vérifier l’écriture de start ----
        u32 reg_control_after_start = Xil_In32(FP_MULT_BASE + REG_CONTROL);
        u32 reg_status_after_start  = Xil_In32(FP_MULT_BASE + REG_STATUS);
        xil_printf("DEBUG Apres start: REG_CONTROL=0x%08X, REG_STATUS=0x%08X\n",
                   reg_control_after_start, reg_status_after_start);

        // ---- Petit délai ----
        usleep(10);

        // ---- Remettre start = 0 ----
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0);
        u32 reg_control_after_reset = Xil_In32(FP_MULT_BASE + REG_CONTROL);
        xil_printf("DEBUG Apres reset start: REG_CONTROL=0x%08X\n", reg_control_after_reset);

        // ---- Attendre done ----
        u32 status_val = Xil_In32(FP_MULT_BASE + REG_STATUS);
        while ((status_val & 0x1) == 0) {
            status_val = Xil_In32(FP_MULT_BASE + REG_STATUS);
        }

        // ---- Lire le résultat ----
        u32 res = Xil_In32(FP_MULT_BASE + REG_RESULT);
        u16 r_f16 = (u16)(res & 0xFFFF);

        xil_printf(">> Resultat (float16) = 0x%04X\r\n\r\n", r_f16);
    }

    return 0;
}

*/

// Debug de l'écriture sur les registres //

/*
#include "xparameters.h"
#include "platform.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xuartlite_l.h"
#include "xil_types.h"   // fournit u32, u16, u8
#include "sleep.h"
#include <stdint.h>
#include <stdlib.h>

// === Base address of your IP ===

#define FP_MULT_BASE XPAR_FP_MULT_0_BASEADDR


// === AXI register offsets ===
#define REG_STATUS   0x00  // slv_reg0 : done
#define REG_CONTROL  0x04  // slv_reg1 : start/reset
#define REG_INPUT    0x08  // slv_reg2 : X et Y
#define REG_RESULT   0x0C  // slv_reg3 : R

//-------------------------------------------
// Conversion float32 -> float16 (IEEE754 )
//-------------------------------------------
u16 float32_to_float16_bits(float f) {
    union { float f; u32 u; } un;
    un.f = f;

    u32 f32 = un.u;
    u32 sign = (f32 >> 31) & 0x1;
    u32 exp  = (f32 >> 23) & 0xFF;
    u32 mant = f32 & 0x7FFFFF;

    u16 f16;

    if (exp == 0) {
        f16 = (u16)(sign << 15);
    } else if (exp == 0xFF) {
        f16 = (u16)((sign << 15) | 0x7C00);
    } else {
        int new_exp = (int)exp - 127 + 15;
        if (new_exp <= 0) {
            f16 = (u16)(sign << 15);
        } else if (new_exp >= 31) {
            f16 = (u16)((sign << 15) | 0x7C00);
        } else {
            f16 = (u16)((sign << 15) | (new_exp << 10) | (mant >> 13));
        }
    }

    return f16;
}

//-------------------------------------------
// Lecture d’un entier via UART
//-------------------------------------------
int read_int_from_uart(const char *prompt) {
    char buf[32];
    int idx = 0;
    u8 c;

    xil_printf("%s", prompt);

    while (1) {
        if (!XUartLite_IsReceiveEmpty(XPAR_XUARTLITE_0_BASEADDR)) {
            c = XUartLite_ReadReg(XPAR_XUARTLITE_0_BASEADDR, XUL_RX_FIFO_OFFSET);

            if (c == '\r' || c == '\n') {
                buf[idx] = '\0';
                xil_printf("\r\n");
                break;
            } else if (c == 8 && idx > 0) { // backspace
                idx--;
                xil_printf("\b \b");
            } else if (idx < (int)sizeof(buf) - 1) {
                buf[idx++] = c;
                xil_printf("%c", c);
            }
        }
    }
    return atoi(buf);
}

int main() {

	init_platform();
    xil_printf("=== Menu Interactive Multiplicateur FLOPOCO (DEBUG) ===\r\n");


        
		Xil_Out32 (FP_MULT_BASE + REG_CONTROL, 0x1234);
		Xil_Out32 (FP_MULT_BASE + REG_INPUT, 0x4321);
		uint32_t a = Xil_In32(FP_MULT_BASE + REG_CONTROL);
		if (a == 0x1234) {
			xil_printf(">> ok.\r\n");

		}
		else {

			xil_printf(">> Valeur lue : 0x%08X\r\n", a); 
		}
			
    return 0;
}


*/