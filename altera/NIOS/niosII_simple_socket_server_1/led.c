/******************************************************************************
* Copyright (c) 2010 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************                                                                           *
* Date - March 2, 2010                                                        *
* Module - led.c                                                              *
*                                                                             *
******************************************************************************/


/*
 * Nios II Simple Socket Server (SSS) example.
 *
 * Please refer to the Altera Multiprocessor Tutorial documentation for details on this
 * software example.  See the Altera Nichestack Tutorial for details on how to configure
 * the NicheStack TCP/IP networking stack and MicroC/OS-II Real-Time Operating System.
 */

/*
 * Include files:
 *
 * <stdlib.h>: Contains C "rand()" function.
 * <stdio.h>: Contains C "printf()" function.
 * includes.h: This is the default MicroC/OS-II include file.
 * niosII_simple_socket_server.h: Our simple socket server app's declarations.
 * altera_avalon_pio_regs.h: Defines register-access macros for PIO peripheral.
 * alt_error_handler.h: Altera Error Handler suite of development error
 * handling functions.
 */


/* <stdlib.h>: Contains C "rand()" function. */
#include <stdlib.h>

/* <stdio.h>: Contains C "printf()" function. */
#include <stdio.h>

/* MicroC/OS-II definitions */
#include "includes.h"

#include <string.h>
#include "sys/alt_alarm.h"
#include "system.h"
#include "nios2.h"

/*
 * Device driver accessor macros for peripherial I/O component
 * (used for leds).)
 */
#include "altera_avalon_pio_regs.h"

/* Simple Socket Server definitions */
#include "niosII_simple_socket_server.h"

/* Altera Error Handler suite of development error
 * handling functions. */
#include "alt_error_handler.h"

/*
 * The LedBlinkTask() is a simple MicroC/OS-II task that blinks
 * a Nios II Embedded Evaluation Kit LED based on frequencies sent
 * by LEDManagementTask in a MicroC/OS-II mailbox, named SSSLEDFreqMailbox.
 *
 */

void LEDBlinkTask()
{
   /* Inverse rate for blinking LED in tenths of a second. */
   INT32U pulse_rate, new_pulse_rate;

   /* Initialize pulse rate. */
   pulse_rate = 1;

/*zzAG DE2-115 replaced LED_PIO_BASE with LEDG_BASE
 * This example requires a pio component for an led called LED_PIO.
 */
#ifdef LEDG_BASE
   /* Set all led_pio bits to output */
   IOWR_ALTERA_AVALON_PIO_DIRECTION(LEDG_BASE, 0xFF);

   while (1)
   {

      if ((new_pulse_rate = (INT32U)OSMboxAccept (SSSLEDFreqMailbox)))
      {
    	 pulse_rate = new_pulse_rate;
      } /* OSMboxAccept */

      // Blink LED ON then OFF at desired pulse rate ( 1 to 10 times per second).
      OSTimeDlyHMSM(0,0,0,(1000/(pulse_rate + 1)));
      IOWR_ALTERA_AVALON_PIO_DATA(LEDG_BASE, 0x1);

      OSTimeDlyHMSM(0,0,0,(1000/(pulse_rate + 1)));
      IOWR_ALTERA_AVALON_PIO_DATA(LEDG_BASE, 0x0);

   } /* while */
#endif /* LED_PIO_BASE */

 /*
  * Error: This system is missing a pio component for an led called LED_PIO.
  * Report the missing LED_PIO component, then spin Forever.
  */
   alt_SSSErrorHandler(EXPANDED_DIAGNOSIS_CODE,
     "Missing LED_PIO SOPC Builder hardware component required by this software example.\n");
   /* Spin Forever */
   while (1);
}

/*
 * The LedManagementTask() is a simple MicroC/OS-II task that controls the
 * LEDBlinkTask based on commands received by the
 * SSSimpleSocketServerTask in the SSSLEDCommandQ.
 *
 * The task will read the SSSLedCommandQ for an
 * in-coming message command from the SSSimpleSocketServerTask, convert the
 * command to an led frequency, and post the frequency to the
 * SSSLEDFreqMailbox mailbox for the LEDBlinkTask.
 */

void LEDManagementTask()
{
   INT32U led_freq;
   INT8U error_code = 0;

   while(1)
   {
      /*
       * Pend on the SSSLEDCommandQ to wait for commands posted by the
       * SSSimpleSocketServerTask.
       */
      led_freq = (INT32U)OSQPend(SSSLEDCommandQ, 0, &error_code);
      alt_uCOSIIErrorHandler(error_code, 0);

      /*
       * Convert character command entered to an LED frequency number.
       */
      led_freq -= '0';
      printf ("LED Frequency set to %d.\n\r", (int)led_freq);

      /*
       * Post the new led frequency to the MicroC/OS-II SSSLEDFreqMailbox mailbox
       * for handling by the LEDBlinkTask.
       */

      if ((error_code = OSMboxPost(SSSLEDFreqMailbox, (void *)led_freq)))
      {
         alt_uCOSIIErrorHandler(error_code, 0);
      }

   } /* while(1) */
}

/*
 * SPO: Complete readme.txt and template.xml for the new SSS software
 *      for use as SBT4E template example.
 */


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
