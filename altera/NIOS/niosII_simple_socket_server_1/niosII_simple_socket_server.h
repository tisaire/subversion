/******************************************************************************
* Copyright (c) 2010 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************
* Date - March 2, 2010                                                        *
* Module - niosII_simple_socket_server.h                                      *
*                                                                             *
******************************************************************************/

/*
 * Nios II Simple Socket Server (SSS) example.
 *
 * Please refer to the Nichestack Tutorial documentation for details on this
 * software example, as well as details on how to configure the TCP/IP
 * networking stack and MicroC/OS-II Real-Time Operating System.  The
 * Nichestack Tutorial, along with the rest of the Nios II documentation is published
 * on the Altera web-site.  See:
 * Start Menu -> All Programs -> Altera -> Nios II EDS 9.1 -> Nios II 9.1 Documentation.
 * Where "9.1" represents the installed Altera software version.
 * In particular, the Nios II Software Developer's Handbook
 * describes Ethernet & Network stack.
 *
 * Software Design Methodology Note:
 *
 * The naming convention used in the Nios II Simple Socket Server Tutorial employs
 * capitalized software module references as prefixes to variables to identify
 * public resources for each software module, while lower-case
 * variables with underscores indicate a private resource used strictly
 * internally to a software module.
 *
 * The software modules are named and have capitalized variable identifiers as
 * follows:
 *
 * SSS     Nios II Simple Socket Server software module
 * LED      Light Emitting Diode Management software module
 *
 * OS       Micrium MicroC/OS-II Real-Time Operating System software component
 */

 /* Validate supported Software components specified on system library properties page.
  */
#ifndef __NIOSII_SIMPLE_SOCKET_SERVER_H__
#define __NIOSII_SIMPLE_SOCKET_SERVER_H__

#if !defined (ALT_INICHE)
  #error The Nios II Simple Socket Server example requires the
  #error NicheStack TCP/IP Stack Software Component. Please see the Nichestack
  #error Tutorial for details on Nichestack TCP/IP Stack - Nios II Edition,
#endif

#ifndef __ucosii__
  #error This Nios II Simple Socket Server example requires
  #error the MicroC/OS-II Software Component.
#endif

/*
 * Task Prototypes:
 *
 *    LEDManagementTask() - Manages the LEDBlinkTask,
 * driven by commands received via a MicroC/OS-II queue, named SSSLEDCommmandQ.
 * Blink frequency values are passed to the LEDBlinkTask via the MicroC/OS-II
 * mailbox, named SSSLEDFreqMailbox.
 *
 *    LEDBlinkTask() - Blinks an LED on a Nios II Embedded Evaluation Kit (NEEK),
 * based on frequencies received via MicroC/OS-II mailbox, named SSSLEDFreqMailbox.
 *
 *    SSSNiosIISimpleSocketServerTask() - Manages the socket server connection and
 * calls relevant subroutines to manage the socket connection.
 *
 *    SSSInitialTask() instantiates all of the MicroC/OS-II resources.
 *
 */
void LEDManagementTask();
void LEDBlinkTask();

void SSSNiosIISimpleSocketServerTask();

void SSSCreateOSDataStructs();
void SSSCreateTasks();

/*
 *  Task Priorities:
 *
 *  MicroC/OS-II only allows one task (thread) per priority number.
 */
#define LED_MANAGEMENT_TASK_PRIORITY            7
#define LED_BLINK_TASK_PRIORITY            			11
#define SSS_INITIAL_TASK_PRIORITY               5
#define SSS_MONITOR_PHY_TASK_PRIORITY           9
#define SSS_NIOS_II_SIMPLE_SOCKET_SERVER_TASK_PRIORITY	10

/*
 * The IP, gateway, and subnet mask address below are used as a last resort
 * if no network settings can be found, and DHCP (if enabled) fails. You can
 * edit these as a quick-and-dirty way of changing network settings if desired.
 *
 * Default IP addresses are set to all zeros so that DHCP server packets will
 * penetrate secure routers.  If DHCP will not be used, select valid static
 * IP addresses here, for example:
 *           IP: 192.168.1.234
 *      Gateway: 192.168.1.1
 *  Subnet Mask: 255.255.255.0
 */
#define IPADDR0   192
#define IPADDR1   168
#define IPADDR2   1
#define IPADDR3   30

#define GWADDR0   192
#define GWADDR1   168
#define GWADDR2   1
#define GWADDR3   1

#define MSKADDR0  255
#define MSKADDR1  255
#define MSKADDR2  255
#define MSKADDR3  0

/*
 * IP Port(s) for our application(s)
 */
#define SSS_PORT 30

/* Definition of Task Stack size for tasks not using Nichestack */
#define   TASK_STACKSIZE       32768

/*
 * TX & RX buffer sizes for all socket sends & receives in our SSS app
 */
#define SSS_RX_BUF_SIZE  1500
#define SSS_TX_BUF_SIZE  1500

/*
 * The maximum time that an ethernet cable can be "down" before sending a disconnect msg.
 */
#define   MAX_CABLE_DOWN        1

/*
 * Here we structure to manage SSS communication for a single connection.
 */
typedef struct SSS_SOCKET { 
	enum { READY, COMPLETE, CLOSE } state; 
	int fd; 
	int       close; 
	INT8U     rx_buffer[SSS_RX_BUF_SIZE]; 
	INT8U 		*rx_rd_pos; /* position we've read up to */ 
	INT8U     *rx_wr_pos; /* position we've written up to */
} SSSConn;

/*
 * Handles to our MicroC/OS-II resources. All of the resources beginning with
 * "SSS" are declared in file "niosII_simple_socket_server.c".
 */

/*
 * Handle to our MicroC/OS-II Command Queue for sending commands received
 * on the TCP-IP socket from the SSSNiosIISimpleSocketServerTask to the 
 * LEDManagementTask.
 */
extern OS_EVENT *SSSLEDCommandQ;

/*
 * Handle to our MicroC/OS-II Mailbox for passing frequency values from
 * LEDManagementTask to the LEDBlinkTask.
 */
extern OS_EVENT *SSSLEDFreqMailbox;

#endif /* __NIOSII_SIMPLE_SOCKET_SERVER_H__ */

/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2010 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
* Altera does not recommend, suggest or require that this reference design    *
* file be used in conjunction or combination with any other product.          *
******************************************************************************/
