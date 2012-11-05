/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_qsys' in SOPC Builder design 'Nios1'
 * SOPC Builder design path: C:/Users/Alberto/PartialDischarge/altera/FinalNiosUART_3/Nios1.sopcinfo
 *
 * Generated: Thu Oct 25 23:48:13 CEST 2012
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x40820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x13
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x20020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x13
#define ALT_CPU_NAME "nios2_qsys"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x20000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x40820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x13
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x20020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x13
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x20000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_LCD_16207
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_AVALON_UART
#define __ALTERA_NIOS2_QSYS


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x410f0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x410f0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x410f0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "Nios1"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER_0
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x410f0
#define JTAG_UART_IRQ 8
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * lcd configuration
 *
 */

#define ALT_MODULE_CLASS_lcd altera_avalon_lcd_16207
#define LCD_BASE 0x410c0
#define LCD_IRQ -1
#define LCD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_NAME "/dev/lcd"
#define LCD_SPAN 16
#define LCD_TYPE "altera_avalon_lcd_16207"


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x20000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "Automatic"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "Auto"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 128000u
#define ONCHIP_MEMORY_SPAN 128000
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * pio_Button configuration
 *
 */

#define ALT_MODULE_CLASS_pio_Button altera_avalon_pio
#define PIO_BUTTON_BASE 0x410b0
#define PIO_BUTTON_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_BUTTON_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_BUTTON_CAPTURE 1
#define PIO_BUTTON_DATA_WIDTH 3
#define PIO_BUTTON_DO_TEST_BENCH_WIRING 0
#define PIO_BUTTON_DRIVEN_SIM_VALUE 0x0
#define PIO_BUTTON_EDGE_TYPE "FALLING"
#define PIO_BUTTON_FREQ 50000000u
#define PIO_BUTTON_HAS_IN 1
#define PIO_BUTTON_HAS_OUT 0
#define PIO_BUTTON_HAS_TRI 0
#define PIO_BUTTON_IRQ 3
#define PIO_BUTTON_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PIO_BUTTON_IRQ_TYPE "EDGE"
#define PIO_BUTTON_NAME "/dev/pio_Button"
#define PIO_BUTTON_RESET_VALUE 0x0
#define PIO_BUTTON_SPAN 16
#define PIO_BUTTON_TYPE "altera_avalon_pio"


/*
 * pio_Data configuration
 *
 */

#define ALT_MODULE_CLASS_pio_Data altera_avalon_pio
#define PIO_DATA_BASE 0x410d0
#define PIO_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_DATA_CAPTURE 0
#define PIO_DATA_DATA_WIDTH 12
#define PIO_DATA_DO_TEST_BENCH_WIRING 0
#define PIO_DATA_DRIVEN_SIM_VALUE 0x0
#define PIO_DATA_EDGE_TYPE "NONE"
#define PIO_DATA_FREQ 50000000u
#define PIO_DATA_HAS_IN 1
#define PIO_DATA_HAS_OUT 0
#define PIO_DATA_HAS_TRI 0
#define PIO_DATA_IRQ -1
#define PIO_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_DATA_IRQ_TYPE "NONE"
#define PIO_DATA_NAME "/dev/pio_Data"
#define PIO_DATA_RESET_VALUE 0x0
#define PIO_DATA_SPAN 16
#define PIO_DATA_TYPE "altera_avalon_pio"


/*
 * pio_DataRead configuration
 *
 */

#define ALT_MODULE_CLASS_pio_DataRead altera_avalon_pio
#define PIO_DATAREAD_BASE 0x41080
#define PIO_DATAREAD_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_DATAREAD_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_DATAREAD_CAPTURE 0
#define PIO_DATAREAD_DATA_WIDTH 2
#define PIO_DATAREAD_DO_TEST_BENCH_WIRING 0
#define PIO_DATAREAD_DRIVEN_SIM_VALUE 0x0
#define PIO_DATAREAD_EDGE_TYPE "NONE"
#define PIO_DATAREAD_FREQ 50000000u
#define PIO_DATAREAD_HAS_IN 0
#define PIO_DATAREAD_HAS_OUT 1
#define PIO_DATAREAD_HAS_TRI 0
#define PIO_DATAREAD_IRQ -1
#define PIO_DATAREAD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_DATAREAD_IRQ_TYPE "NONE"
#define PIO_DATAREAD_NAME "/dev/pio_DataRead"
#define PIO_DATAREAD_RESET_VALUE 0x0
#define PIO_DATAREAD_SPAN 32
#define PIO_DATAREAD_TYPE "altera_avalon_pio"


/*
 * pio_LEDG configuration
 *
 */

#define ALT_MODULE_CLASS_pio_LEDG altera_avalon_pio
#define PIO_LEDG_BASE 0x41000
#define PIO_LEDG_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_LEDG_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_LEDG_CAPTURE 0
#define PIO_LEDG_DATA_WIDTH 8
#define PIO_LEDG_DO_TEST_BENCH_WIRING 0
#define PIO_LEDG_DRIVEN_SIM_VALUE 0x0
#define PIO_LEDG_EDGE_TYPE "NONE"
#define PIO_LEDG_FREQ 50000000u
#define PIO_LEDG_HAS_IN 0
#define PIO_LEDG_HAS_OUT 1
#define PIO_LEDG_HAS_TRI 0
#define PIO_LEDG_IRQ -1
#define PIO_LEDG_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_LEDG_IRQ_TYPE "NONE"
#define PIO_LEDG_NAME "/dev/pio_LEDG"
#define PIO_LEDG_RESET_VALUE 0x0
#define PIO_LEDG_SPAN 32
#define PIO_LEDG_TYPE "altera_avalon_pio"


/*
 * pio_LEDR configuration
 *
 */

#define ALT_MODULE_CLASS_pio_LEDR altera_avalon_pio
#define PIO_LEDR_BASE 0x41020
#define PIO_LEDR_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_LEDR_BIT_MODIFYING_OUTPUT_REGISTER 1
#define PIO_LEDR_CAPTURE 0
#define PIO_LEDR_DATA_WIDTH 18
#define PIO_LEDR_DO_TEST_BENCH_WIRING 0
#define PIO_LEDR_DRIVEN_SIM_VALUE 0x0
#define PIO_LEDR_EDGE_TYPE "NONE"
#define PIO_LEDR_FREQ 50000000u
#define PIO_LEDR_HAS_IN 0
#define PIO_LEDR_HAS_OUT 1
#define PIO_LEDR_HAS_TRI 0
#define PIO_LEDR_IRQ -1
#define PIO_LEDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_LEDR_IRQ_TYPE "NONE"
#define PIO_LEDR_NAME "/dev/pio_LEDR"
#define PIO_LEDR_RESET_VALUE 0x0
#define PIO_LEDR_SPAN 32
#define PIO_LEDR_TYPE "altera_avalon_pio"


/*
 * pio_RdyData configuration
 *
 */

#define ALT_MODULE_CLASS_pio_RdyData altera_avalon_pio
#define PIO_RDYDATA_BASE 0x410e0
#define PIO_RDYDATA_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_RDYDATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_RDYDATA_CAPTURE 1
#define PIO_RDYDATA_DATA_WIDTH 1
#define PIO_RDYDATA_DO_TEST_BENCH_WIRING 0
#define PIO_RDYDATA_DRIVEN_SIM_VALUE 0x0
#define PIO_RDYDATA_EDGE_TYPE "RISING"
#define PIO_RDYDATA_FREQ 50000000u
#define PIO_RDYDATA_HAS_IN 1
#define PIO_RDYDATA_HAS_OUT 0
#define PIO_RDYDATA_HAS_TRI 0
#define PIO_RDYDATA_IRQ 2
#define PIO_RDYDATA_IRQ_INTERRUPT_CONTROLLER_ID 0
#define PIO_RDYDATA_IRQ_TYPE "EDGE"
#define PIO_RDYDATA_NAME "/dev/pio_RdyData"
#define PIO_RDYDATA_RESET_VALUE 0x0
#define PIO_RDYDATA_SPAN 16
#define PIO_RDYDATA_TYPE "altera_avalon_pio"


/*
 * pio_SW configuration
 *
 */

#define ALT_MODULE_CLASS_pio_SW altera_avalon_pio
#define PIO_SW_BASE 0x410a0
#define PIO_SW_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_SW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_SW_CAPTURE 0
#define PIO_SW_DATA_WIDTH 18
#define PIO_SW_DO_TEST_BENCH_WIRING 0
#define PIO_SW_DRIVEN_SIM_VALUE 0x0
#define PIO_SW_EDGE_TYPE "NONE"
#define PIO_SW_FREQ 50000000u
#define PIO_SW_HAS_IN 1
#define PIO_SW_HAS_OUT 0
#define PIO_SW_HAS_TRI 0
#define PIO_SW_IRQ -1
#define PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_SW_IRQ_TYPE "NONE"
#define PIO_SW_NAME "/dev/pio_SW"
#define PIO_SW_RESET_VALUE 0x0
#define PIO_SW_SPAN 16
#define PIO_SW_TYPE "altera_avalon_pio"


/*
 * sysid_qsys configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys altera_avalon_sysid_qsys
#define SYSID_QSYS_BASE 0x410f8
#define SYSID_QSYS_ID 0
#define SYSID_QSYS_IRQ -1
#define SYSID_QSYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_NAME "/dev/sysid_qsys"
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_TIMESTAMP 1351200875
#define SYSID_QSYS_TYPE "altera_avalon_sysid_qsys"


/*
 * timer_0 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_0 altera_avalon_timer
#define TIMER_0_ALWAYS_RUN 0
#define TIMER_0_BASE 0x41060
#define TIMER_0_COUNTER_SIZE 32
#define TIMER_0_FIXED_PERIOD 0
#define TIMER_0_FREQ 50000000u
#define TIMER_0_IRQ 1
#define TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_0_LOAD_VALUE 49999ull
#define TIMER_0_MULT 0.0010
#define TIMER_0_NAME "/dev/timer_0"
#define TIMER_0_PERIOD 1
#define TIMER_0_PERIOD_UNITS "ms"
#define TIMER_0_RESET_OUTPUT 0
#define TIMER_0_SNAPSHOT 1
#define TIMER_0_SPAN 32
#define TIMER_0_TICKS_PER_SEC 1000u
#define TIMER_0_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_0_TYPE "altera_avalon_timer"


/*
 * uart configuration
 *
 */

#define ALT_MODULE_CLASS_uart altera_avalon_uart
#define UART_BASE 0x41040
#define UART_BAUD 115200
#define UART_DATA_BITS 8
#define UART_FIXED_BAUD 1
#define UART_FREQ 50000000u
#define UART_IRQ 5
#define UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define UART_NAME "/dev/uart"
#define UART_PARITY 'N'
#define UART_SIM_CHAR_STREAM ""
#define UART_SIM_TRUE_BAUD 0
#define UART_SPAN 32
#define UART_STOP_BITS 1
#define UART_SYNC_REG_DEPTH 2
#define UART_TYPE "altera_avalon_uart"
#define UART_USE_CTS_RTS 0
#define UART_USE_EOP_REGISTER 0

#endif /* __SYSTEM_H_ */
