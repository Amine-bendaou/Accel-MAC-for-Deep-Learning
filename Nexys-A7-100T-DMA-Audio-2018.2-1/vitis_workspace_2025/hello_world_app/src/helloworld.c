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



// code de base du tuto : https://github.com/Digilent/Nexys-A7-100T-DMA-Audio/blob/master/README.md

/*
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"


int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}

*/

/*
#include "xil_printf.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xstatus.h"
#include "sleep.h"
#include "xgpio.h"
#include "xil_cache.h"
#include "xuartlite.h"
#define VERBOSE 0

#define DDR_BASE_ADDR		XPAR_MIG7SERIES_0_BASEADDR
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)

typedef enum DemoMode {
	DEMO_MODE_PAUSED = 0,
	DEMO_MODE_HW_TONE_GEN,
	DEMO_MODE_SW_TONE_GEN,
	DEMO_MODE_RECV_WAV_FILE,
	DEMO_MODE_PLAY_WAV_FILE
} DemoMode;

typedef struct Demo {
	XAxiDma dma_inst;
	XGpio gpio_out_inst;
	XGpio gpio_in_inst;
	XUartLite uart_inst;
	DemoMode mode;
} Demo;

typedef struct GpioIn_Data {
	u8 buttons;
	u16 switches;
	u8 button_pe;
	u8 button_ne;
	u16 switch_pe;
	u16 switch_ne;
} GpioIn_Data;

XStatus init_dma (XAxiDma *p_dma_inst, u32 dma_baseaddr) {
// Local variables
	XStatus status = 0;
	XAxiDma_Config* cfg_ptr;

	// Look up hardware configuration for device
	cfg_ptr = XAxiDma_LookupConfig(dma_baseaddr);
	if (!cfg_ptr)
	{
		xil_printf("ERROR! No hardware configuration found for AXI DMA at baseaddr 0x%08x.\r\n", dma_baseaddr);
		return XST_FAILURE;
	}

	// Initialize driver
	status = XAxiDma_CfgInitialize(p_dma_inst, cfg_ptr);
	if (status != XST_SUCCESS)
	{
		xil_printf("ERROR! Initialization of AXI DMA failed with %d\r\n", status);
		return XST_FAILURE;
	}

	// Test for Scatter Gather
	if (XAxiDma_HasSg(p_dma_inst))
	{
		xil_printf("ERROR! Device configured as SG mode.\r\n");
		return XST_FAILURE;
	}

	// Disable all interrupts for both channels
	XAxiDma_IntrDisable(p_dma_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(p_dma_inst, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	// Reset DMA
	XAxiDma_Reset(p_dma_inst);
	while (!XAxiDma_ResetIsDone(p_dma_inst));

	xil_printf("Note: MaxTransferLen=%d\r\n", p_dma_inst->TxBdRing.MaxTransferLen);

	return XST_SUCCESS;
}

XStatus init(Demo *p_demo_inst) {
	XStatus status;

	status = XGpio_Initialize(&(p_demo_inst->gpio_out_inst), XPAR_GPIO_OUT_BASEADDR);
	if (status != XST_SUCCESS) return XST_FAILURE;
	XGpio_SetDataDirection(&(p_demo_inst->gpio_out_inst), 1, 0x00); // RGB LED
	XGpio_SetDataDirection(&(p_demo_inst->gpio_out_inst), 2, 0x0000); // LED
	xil_printf("%08x %08x\r\n",
			XGpio_GetDataDirection(&(p_demo_inst->gpio_out_inst), 1),
			XGpio_GetDataDirection(&(p_demo_inst->gpio_out_inst), 2)
	);

	status = XGpio_Initialize(&(p_demo_inst->gpio_in_inst), XPAR_GPIO_IN_BASEADDR);
	if (status != XST_SUCCESS) return XST_FAILURE;
	XGpio_SetDataDirection(&(p_demo_inst->gpio_in_inst), 1, 0x00); // BUTTON
	XGpio_SetDataDirection(&(p_demo_inst->gpio_in_inst), 2, 0xFFFF); // SWITCH
	xil_printf("%08x %08x\r\n",
			XGpio_GetDataDirection(&(p_demo_inst->gpio_in_inst), 1),
			XGpio_GetDataDirection(&(p_demo_inst->gpio_in_inst), 2)
	);

	XUartLite_Initialize(&(p_demo_inst->uart_inst), XPAR_AXI_UARTLITE_0_BASEADDR);
	XUartLite_DisableInterrupt(&(p_demo_inst->uart_inst));

	status = init_dma(&(p_demo_inst->dma_inst), XPAR_XAXIDMA_0_BASEADDR);
	if (status != XST_SUCCESS) return XST_FAILURE;
	return XST_SUCCESS;
}
GpioIn_Data get_gpio_data(Demo *p_demo_inst) {
	static GpioIn_Data last = {0,0,0,0,0,0};
	GpioIn_Data data;
	data.buttons = XGpio_DiscreteRead(&(p_demo_inst->gpio_in_inst), 1);
	data.switches = XGpio_DiscreteRead(&(p_demo_inst->gpio_in_inst), 2);
	data.button_pe = (data.buttons) & (~last.buttons);
	data.button_ne = (~data.buttons) & (last.buttons);
	data.switch_pe = (data.switches) & (~last.switches);
	data.switch_ne = (~data.switches) & (last.switches);
	last = data;
	return data;
}

XStatus dma_receive(Demo *p_demo_inst, UINTPTR buffer, u32 length) {
	XStatus status;

	Xil_DCacheFlushRange(buffer, length);

	status = XAxiDma_SimpleTransfer(&(p_demo_inst->dma_inst), buffer, length, XAXIDMA_DEVICE_TO_DMA);
	if (status != XST_SUCCESS) {
		xil_printf("ERROR: failed to kick off S2MM transfer\r\n");
		return XST_FAILURE;
	}

	u32 busy = 0;
	do {
		busy = XAxiDma_Busy(&(p_demo_inst->dma_inst), XAXIDMA_DEVICE_TO_DMA);
	} while (busy);

	if ((XAxiDma_ReadReg(p_demo_inst->dma_inst.RegBase, XAXIDMA_RX_OFFSET+XAXIDMA_SR_OFFSET) & XAXIDMA_IRQ_ERROR_MASK) != 0) {
		xil_printf("ERROR: AXI DMA returned an error during the S2MM transfer\r\n");
		return XST_FAILURE;
	}

	Xil_DCacheFlushRange(buffer, length);

	return XST_SUCCESS;
}
XStatus dma_send(Demo *p_demo_inst, UINTPTR buffer, u32 length) {
	XStatus status;

	Xil_DCacheFlushRange(buffer, length);

	status = XAxiDma_SimpleTransfer(&(p_demo_inst->dma_inst), buffer, length, XAXIDMA_DMA_TO_DEVICE);

	if (status != XST_SUCCESS)
		xil_printf("ERROR: failed to kick off MM2S transfer\r\n");

	while (XAxiDma_Busy(&(p_demo_inst->dma_inst), XAXIDMA_DMA_TO_DEVICE));

	if ((XAxiDma_ReadReg(p_demo_inst->dma_inst.RegBase, XAXIDMA_TX_OFFSET+XAXIDMA_SR_OFFSET) & XAXIDMA_IRQ_ERROR_MASK) != 0) {
		xil_printf("ERROR: AXI DMA returned an error during the MM2S transfer\r\n");
		return XST_FAILURE;
	}

	Xil_DCacheFlushRange((UINTPTR)buffer, length);

	return XST_SUCCESS;
}
void dma_reset(Demo *p_demo_inst) {
	XAxiDma_Reset(&(p_demo_inst->dma_inst));
	while (!XAxiDma_ResetIsDone(&(p_demo_inst->dma_inst)));
}

void dma_forward(Demo *p_demo_inst) {
	// TODO: modify tone_generator.v to support 8 bit audio...
	static const u32 BUFFER_SIZE_WORDS = 256;
	static const u32 BUFFER_SIZE_BYTES = 1024; //BUFFER_SIZE_WORDS * sizeof(u32));
	xil_printf("entered dma_forward\r\n");
	u8 *buffer = malloc(BUFFER_SIZE_BYTES);
	memset(buffer, 0, BUFFER_SIZE_BYTES);
	xil_printf("  1.\r\n");

	for (int i=0; i<BUFFER_SIZE_WORDS; i++) {
		dma_receive(p_demo_inst, (UINTPTR)((u32)buffer + sizeof(u32) * i), 4);
	}

	xil_printf("  2.\r\n");

	if (VERBOSE) {
		xil_printf("data received:\r\n");
		for (u32 word = 0; word < BUFFER_SIZE_WORDS; word++) {
			xil_printf("    %08x\r\n", ((u32*)buffer)[word]);
		}
	}

	dma_send(p_demo_inst, (UINTPTR)buffer, BUFFER_SIZE_BYTES);

	xil_printf("  3.\r\n");

	free(buffer);
}

void dma_sw_tone_gen(Demo *p_demo_inst) {
	static const u32 buffer_size = 128;
	u32 accum = 0;
	UINTPTR buffer = (UINTPTR)malloc(buffer_size * sizeof(u8));
	memset((u32*)buffer, 0, buffer_size * sizeof(u8));
	XStatus status;

	usleep(10000);

	while (1) {
		for (u32 i=0; i<buffer_size; i++) {
			accum += 0x00B22D0E;
			((u8*)buffer)[i] = accum>>24;
		}

		status = dma_send(p_demo_inst, (UINTPTR)buffer, buffer_size);

		GpioIn_Data gpio = get_gpio_data(p_demo_inst);
		if (gpio.button_pe != 0) break;
	}

	p_demo_inst->mode = DEMO_MODE_PAUSED;
	free((u32*)buffer);

	xil_printf("Exiting SW tone gen mode\r\n");

	dma_reset(p_demo_inst);
}

typedef struct {
	u8 riff[4];
	u8 overall_size[4]; // u32
	u8 wave[4];
} Wav_HeaderRaw;
typedef struct {
	u8 fmt_chunk_marker[4];
	u8 fmt_chunk_size[4]; // u32
	u8 format_type[2]; // u16
	u8 channels[2]; // u16
	u8 sample_rate[4]; // u32
	u8 byte_rate[4]; // u32
	u8 block_align[2]; // u16
	u8 bits_per_sample[2]; // u16
} Wav_FormatRaw;
typedef struct {
	u8 data_chunk_header[4];
	u8 data_chunk_size[4]; // u32
} Wav_DataRaw;

u32 uart_recv (Demo *p_demo_inst, u8 *buffer, int length) {
	u32 received_count = 0;
	while (received_count < length) {
		received_count += XUartLite_Recv(&(p_demo_inst->uart_inst), (u8*)((u32)buffer + received_count), 1);
	}
	return received_count;
}
u8 *buf2str(u8 buffer[], u8 str[], int length) {
	memcpy(str, buffer, length);
	str[length] = 0;
	return str;
}
u32 buf2u32(u8 buffer[4]) {
	return ((u32)buffer[3] << 24) | ((u32)buffer[2] << 16) | ((u32)buffer[1] << 8) | ((u32)buffer[0]);
}
u16 buf2u16(u8 buffer[2]) {
	return ((u16)buffer[1] << 8) | ((u16)buffer[0]);
}

void play_wav(Demo *p_demo_inst, u32 file_size, u8 *file) {
	u8 str[5];
	u8 *ptr = file;
	Wav_HeaderRaw *p_header = (Wav_HeaderRaw*)(ptr);
	ptr += 12;
	Wav_FormatRaw *p_format = (Wav_FormatRaw*)(ptr);
	ptr += 8 + buf2u32(p_format->fmt_chunk_size);
	Wav_DataRaw *p_data = (Wav_DataRaw*)(ptr);
	ptr += 8;
	u16 *wav_data = (u16*)ptr;

	xil_printf("preparing for playback\r\n");

	// create dma buffer, downscale audio depth to 8bit.
	u32 dma_data_length = buf2u32(p_data->data_chunk_size) * sizeof(u8) / sizeof(u16);
	u8 *dma_data = (u8*)malloc(dma_data_length);
	for (int i=0; i<dma_data_length; i++) {
//		dma_data[i] = wav_data[i] >> 8;
		dma_data[i] = (u8)((u16)(wav_data[i] + 32768) >> 8);
	}
	dma_send(p_demo_inst, (UINTPTR)dma_data, dma_data_length);
	// wait for dma transfer to complete...

	xil_printf("sleep for a while\r\n");
	sleep(10);

	free(dma_data);
}

void recv_wav (Demo *p_demo_inst) {
	const u32 max_file_size = 0x7FFFFF; // 16.777 MB
	u8 *file = malloc(max_file_size); // this will take most of the heap haha
	u8  str[5];

	xil_printf("Demo waiting for a WAV file...\r\n");

	uart_recv(p_demo_inst, file, sizeof(Wav_HeaderRaw));
	xil_printf("header received\r\n");

	u8 *ptr = file;
	Wav_HeaderRaw *p_header = (Wav_HeaderRaw*)(ptr);

	uart_recv(p_demo_inst, file + sizeof(Wav_HeaderRaw), buf2u32(p_header->overall_size) - 4);

	ptr += 12;
	Wav_FormatRaw *p_format = (Wav_FormatRaw*)(ptr);
	ptr += 8 + buf2u32(p_format->fmt_chunk_size);
	Wav_DataRaw *p_data = (Wav_DataRaw*)(ptr);
	ptr += 8;
	u16 *wav_data = (u16*)ptr;

	xil_printf("file info:\r\n");
	xil_printf("  header:\r\n");
	xil_printf("    riff: '%s'\r\n", buf2str(p_header->riff, str, 4));
	xil_printf("    overall_size: %d\r\n", buf2u32(p_header->overall_size));
	xil_printf("    wave: '%s'\r\n", buf2str(p_header->wave, str, 4));
	xil_printf("  format:\r\n");
	xil_printf("    fmt_chunk_marker: '%s'\r\n", buf2str(p_format->fmt_chunk_marker, str, 4));
	xil_printf("    fmt_chunk_size: %d\r\n", buf2u32(p_format->fmt_chunk_size));
	xil_printf("    format_type: %d\r\n", buf2u16(p_format->format_type));
	xil_printf("    channels: %d\r\n", buf2u16(p_format->channels));
	xil_printf("    sample_rate: %d\r\n", buf2u32(p_format->sample_rate));
	xil_printf("    byte_rate: %d\r\n", buf2u32(p_format->byte_rate));
	xil_printf("    block_align: %d\r\n", buf2u16(p_format->block_align));
	xil_printf("    bits_per_sample: %d\r\n", buf2u16(p_format->bits_per_sample));
	xil_printf("  data:\r\n");
	xil_printf("    fmt_chunk_marker: '%s'\r\n", buf2str(p_data->data_chunk_header, str, 4));
	xil_printf("    data_chunk_size: %d\r\n", buf2u32(p_data->data_chunk_size));

	play_wav(p_demo_inst, buf2u32(p_header->overall_size) + 8, file);

	free(file);
	file = 0;

	p_demo_inst->mode = DEMO_MODE_PAUSED;
	xil_printf("Exiting receive mode\r\n");
}

int main() {
	Demo device;
	XStatus status;

#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_0_USE_ICACHE
	Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_0_USE_DCACHE
	Xil_DCacheEnable();
#endif
#endif

	xil_printf("----------------------------------------\r\n");
	xil_printf("entering main\r\n");
	status = init(&device);
	if (status != XST_SUCCESS) {
		xil_printf("ERROR: Demo not initialized correctly\r\n");
		sleep(1);
	} else
		xil_printf("Demo started\r\n");

	device.mode = DEMO_MODE_SW_TONE_GEN;

	while (1) {
//		u32 d = XGpio_DiscreteRead(&(device.gpio_in_inst), 2);
//		XGpio_DiscreteWrite(&(device.gpio_out_inst), 2, d);
		GpioIn_Data data = get_gpio_data(&device);

//		// buttons: 0b00000 = DRLUC
		switch (data.button_pe) {
		case 0x01: device.mode = DEMO_MODE_PAUSED;        xil_printf("Demo paused\r\n");                       break; // BUTTON C
		case 0x02: device.mode = DEMO_MODE_HW_TONE_GEN;   xil_printf("Demo generating 261 Hz tone in HW\r\n"); break; // BUTTON U
		case 0x04: device.mode = DEMO_MODE_RECV_WAV_FILE; xil_printf("Demo prepared to receive wav file\r\n"); break; // BUTTON L
		case 0x08: device.mode = DEMO_MODE_PLAY_WAV_FILE; xil_printf("Demo playing back wav file\r\n");        break; // BUTTON R
		case 0x10: device.mode = DEMO_MODE_SW_TONE_GEN;   xil_printf("Demo generating 261 Hz tone in SW\r\n"); break; // BUTTON D
		}
		switch (device.mode) {
		case DEMO_MODE_PAUSED:        break;
		case DEMO_MODE_HW_TONE_GEN:   break;//dma_forward(&device); break;
		case DEMO_MODE_RECV_WAV_FILE: recv_wav(&device);        break;
		case DEMO_MODE_PLAY_WAV_FILE: break;
		case DEMO_MODE_SW_TONE_GEN:   dma_sw_tone_gen(&device); break;
		}
	}

	xil_printf("exiting main\r\n");
	return 0;
}


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

// test fpmult avec AXI //

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
// Conversion float32 -> float16 (IEEE754 half)
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
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x1); // reset = 1
        usleep(10);
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0); // reset = 0
        xil_printf(">> Reset effectue avec succes.\r\n");

        // ---- Lire X et Y en decimal ----
        int x_dec = read_int_from_uart("Entrez X (decimal): ");
        int y_dec = read_int_from_uart("Entrez Y (decimal): ");

        float fx = (float)x_dec;
        float fy = (float)y_dec;

        u16 x_f16 = float32_to_float16_bits(fx);
        u16 y_f16 = float32_to_float16_bits(fy);

        xil_printf("Conversion en float16: X=0x%04X , Y=0x%04X\r\n", x_f16, y_f16);

        // ---- Lancer le calcul ----
        xil_printf(">> Calcul en cours...\r\n");

        // écrire X et Y (concaténés en 32 bits : [Y | X])
        u32 xy = ((u32)y_f16 << 16) | x_f16;
        Xil_Out32(FP_MULT_BASE + REG_INPUT, xy);

        // start = 1
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x1);

        // Petit délai pour créer le front
        usleep(10);

        // Remettre start à 0
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0);

        // attendre done
        while ((Xil_In32(FP_MULT_BASE + REG_STATUS) & 0x1) == 0);

        // ---- Lire le résultat ----
        u32 res = Xil_In32(FP_MULT_BASE + REG_RESULT);
        u16 r_f16 = (u16)(res & 0xFFFF);

        xil_printf(">> Resultat (float16) = 0x%04X\r\n\r\n", r_f16);
    }

    return 0;
}

*/


// debug du code fpmult avec AXI //

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
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0000); // reset = 1
        usleep(10);
        Xil_Out32(FP_MULT_BASE + REG_CONTROL, 0x0001); // reset = 0
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


#include "xparameters.h"
#include "platform.h"
// #include "xil_io.h"
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
