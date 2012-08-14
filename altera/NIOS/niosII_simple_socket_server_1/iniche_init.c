/******************************************************************************
* Copyright (c) 2010 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************                                                                             *
* Date - March 2, 2010                                                        *
* Module - iniche_init.c                                                      *
*                                                                             *                                                                             *
******************************************************************************/

/******************************************************************************
 * NicheStack TCP/IP stack initialization and Operating System Start in main()
 * for Nios II Simple Socket Server (SSS) example.
 *
 * This example demonstrates the use of MicroC/OS-II running on NIOS II.
 * In addition it is to serve as a good starting point for designs using
 * MicroC/OS-II and Altera NicheStack TCP/IP Stack - NIOS II Edition.
 *
 * Please refer to the Altera NicheStack Tutorial documentation for details on
 * this software example, as well as details on how to configure the NicheStack
 * TCP/IP networking stack and MicroC/OS-II Real-Time Operating System.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include <alt_iniche_dev.h>
#include <sys/param.h>
#include <sys/fcntl.h>
#include <unistd.h>
#include "io.h"

#include "sys/alt_alarm.h"
#include "alt_types.h"

#include "alt_eeprom/alt_2_wire.h"
#include "alt_eeprom/alt_eeprom.h"

/* MicroC/OS-II definitions */
#include "includes.h"

/* Nichestack definitions */
#include "includes.h"
#include "ipport.h"
#include "libport.h"
#include "osport.h"
#include "tcpport.h"
#include "net.h"
#include "dhcpclnt.h"
#include "icmp.h"

/* Low-level network */
#include "triple_speed_ethernet_regs.h"
#include "iniche/triple_speed_ethernet_iniche.h"
#include "iniche/ins_tse_mac.h"

/* Nios II Simple Socket Server definitions */
#include "niosII_simple_socket_server.h"
#include "alt_error_handler.h"

#include "SSS_DE2_115.h"

#define IP4_ADDR(ipaddr, a,b,c,d) ipaddr = \
    htonl(((alt_u32)(a & 0xff) << 24) | ((alt_u32)(b & 0xff) << 16) | \
          ((alt_u32)(c & 0xff) << 8) | (alt_u32)(d & 0xff))


struct device devices[] = {
    { 0,    0x10,   0xA0,   0xA1    },
    { 8,    0x400,  0xA0,   0xA1    },
    { 16,   0x800,  0xA0,   0xA1    },
};

struct device *device = &(devices[0]);

/* Need the following for detecting the state of the ethernet PHY, after
 * networking is initialized.
 */
extern ins_tse_info tse;

/*
 * dhc_set_state
 */
extern int dhc_set_state( int iface, int state );

/*
 * Reference to hostname global.
 */
char * system_dhcp_hostname;


/* Definition of task stack for the initial task which will initialize the NicheStack
 * TCP/IP Stack and then initialize the rest of the Nios II Simple Socket Server example tasks.
 */
OS_STK    SSSInitialTaskStk[TASK_STACKSIZE];

/* Definition of task stack for the task which will monitor the status of a single network phy
 */
OS_STK    SSSMonitorPhyTaskStk[TASK_STACKSIZE];


/* Declarations for creating tasks with TK_NEWTASK.
 * All tasks which use NicheStack (those that use sockets) must be created this way.
 * TK_OBJECT macro creates the static task object used by NicheStack during operation.
 * TK_ENTRY macro corresponds to the entry point, or defined function name, of the task.
 * inet_taskinfo is the structure used by TK_NEWTASK to create the task.
 */
TK_OBJECT(to_ssstask);
TK_ENTRY(SSSNiosIISimpleSocketServerTask);

struct inet_taskinfo ssstask = {
      &to_ssstask,
      "Nios II Simple Socket Server",
      SSSNiosIISimpleSocketServerTask,
      SSS_NIOS_II_SIMPLE_SOCKET_SERVER_TASK_PRIORITY,
      APP_STACK_SIZE,
};

TK_OBJECT(to_sssphytask);
TK_ENTRY(SSSMonitorPhyTask);

struct inet_taskinfo sssphytask = {
      &to_sssphytask,
      "monitor_phy",
      SSSMonitorPhyTask,
      SSS_MONITOR_PHY_TASK_PRIORITY,
      APP_STACK_SIZE,
};



/* Callback function for when the Interniche DHCP subsystem acquires
 * an IP address.  This overrides dhc_main_ipset().
 */
int ws_ipset( int iface, int state )
{
  if ( state == DHCS_BOUND )
  {
    /* print IP address acquired through DHCP Client - for user's benefit */
    printf("Acquired IP address via DHCP client for interface: %s\n",
            nets[iface]->name);

    printf("IP address : %s\n", print_ipad(nets[iface]->n_ipaddr));
    printf("Subnet Mask: %s\n", print_ipad(nets[iface]->snmask));
    printf("Gateway    : %s\n", print_ipad(nets[iface]->n_defgw));
  }
  return 0;
}


/*
* get_board_mac_addr
*
* If EEPROM exist, Read the MAC address from the eeprom.
* If no EEPROM or invalid MAC Address, check EXT_FLASH at offset ETHERNET_OPTION_BITS
*
*/
#define ETHERNET_OPTION_BITS 0x8000
//#define HARD_CODE_MAC
error_t get_board_mac_addr(unsigned char mac_addr[6],struct device *device)
{
    error_t error = 0;
    int valid_mac = 0;
    //alt_u32 signature = 0;
/*zzAG #ifdef EXT_FLASH_BASE
    alt_u32 mac_addr_ptr = EXT_FLASH_BASE + ETHERNET_OPTION_BITS;
#endif zzAG*/

#ifdef HARD_CODE_MAC

    mac_addr[0] = 0x00;
    mac_addr[1] = 0x07;
    mac_addr[2] = 0xED;
    mac_addr[3] = 0xFF;
    mac_addr[4] = 0xFF;
    mac_addr[5] = 0xFF;

    valid_mac = 1;

#else
    //Call DE2-115 Mac address function. Must include SSS_DE2_115.h to use.
    printf("Calling DE2-115 Mac Address Finder\n");
    error = get_DE2_115_mac_addr(mac_addr);
    if(!error)
    {
    	valid_mac = 1;
    }

#endif //HARD_CODE_MAC

       if (valid_mac)
       {
          printf("Your Ethernet MAC address is %02x:%02x:%02x:%02x:%02x:%02x\n",
            mac_addr[0],mac_addr[1],mac_addr[2],mac_addr[3],mac_addr[4],mac_addr[5]);
       }
       else
       {
         printf("\n\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
         printf("Unable to find Valid MAC address.\n");
         printf("Please refer to your Board's User Guide for instructions\n ");
         printf("on restoring the MAC Address for your board.\n");
         printf("--Or--\n");
         printf("Hard Code MAC address in get_mac_addr() of iniche_init.c\n");
         printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\n");
       }

  return error;
}

INT8U suspend_network_tasks()
{
  INT8U err = OS_NO_ERR;

  err = ( OSTaskSuspend( SSS_NIOS_II_SIMPLE_SOCKET_SERVER_TASK_PRIORITY )|
        OSTaskSuspend( TK_NETMAIN_TPRIO )|
        OSTaskSuspend( TK_NETTICK_TPRIO) );
  return( err );
}

INT8U resume_network_tasks()
{
  INT8U err = OS_NO_ERR;
  err = ( OSTaskResume( TK_NETMAIN_TPRIO )|
        OSTaskResume( TK_NETTICK_TPRIO )|
        OSTaskResume( SSS_NIOS_II_SIMPLE_SOCKET_SERVER_TASK_PRIORITY ) );
  return( err );
}


/*
* get_mac_addr
*
* Read the MAC address in a board specific way
*
*/
int get_mac_addr(NET net, unsigned char mac_addr[6])
{
    return (get_board_mac_addr(mac_addr, device));
}

/*
 * get_ip_addr()
 *
 * This routine is called by InterNiche to obtain an IP address for the
 * specified network adapter. Like the MAC address, obtaining an IP address is
 * very system-dependant and therefore this function is exported for the
 * developer to control.
 *
 * In our system, we are either attempting DHCP auto-negotiation of IP address,
 * or we are setting our own static IP, Gateway, and Subnet Mask addresses our
 * self. This routine is where that happens.
 */
int get_ip_addr(alt_iniche_dev *p_dev,
                ip_addr* ipaddr,
                ip_addr* netmask,
                ip_addr* gw,
                int* use_dhcp)
{

    IP4_ADDR(*ipaddr, IPADDR0, IPADDR1, IPADDR2, IPADDR3);
    IP4_ADDR(*gw, GWADDR0, GWADDR1, GWADDR2, GWADDR3);
    IP4_ADDR(*netmask, MSKADDR0, MSKADDR1, MSKADDR2, MSKADDR3);

#ifdef DHCP_CLIENT
    *use_dhcp = 1;
#else /* not DHCP_CLIENT */
    *use_dhcp = 0;

    printf("Static IP Address is %d.%d.%d.%d\n",
        ip4_addr1(*ipaddr),
        ip4_addr2(*ipaddr),
        ip4_addr3(*ipaddr),
        ip4_addr4(*ipaddr));
#endif /* not DHCP_CLIENT */

    /* Non-standard API: return 1 for success */
    return 1;
}

/*
 * "Pre" network initialization PHY detection.
 */

INT8U wait_on_phy()
{
  int phyadd;
  int phyid;
  int phyid2 = 0;
  np_tse_mac* pmac;

/*
 * Initialize the structure necessary for "pmac" to function.
 */

  pmac = (np_tse_mac*) TSE_MAC_BASE;

/*
 * Find phyid...assuming it's National's PHY....for now.
 */
  for( phyadd = 0x00; phyadd < 0xff; phyadd++ )
  {
    IOWR(&pmac->MDIO_ADDR0, 0, phyadd);
    phyid = IORD(&pmac->mdio0.PHY_ID1, 0);
    phyid2 = IORD(&pmac->mdio0.PHY_ID2, 0);

    if( phyid != phyid2 )
    {
      printf("\n\n\nPHY INFO:  [phyid] 0x%x %x %x\n", phyadd, phyid, phyid2);
      phyadd = 0xff;
    }
  }

/*
 * Issue a PHY reset.
 */
  IOWR(&pmac->mdio0.CONTROL, 0, PCS_CTL_an_enable | PCS_CTL_sw_reset);
  if( ( ( IORD(&pmac->mdio0.CONTROL,0) & PCS_CTL_rx_slpbk) != 0 ) ||
      ( ( IORD(&pmac->mdio0.STATUS,0) & PCS_ST_an_done) == 0) )
  {
    IOWR(&pmac->mdio0.CONTROL, 0, PCS_CTL_an_enable | PCS_CTL_sw_reset);
    printf( "PHY INFO:  Issuing PHY Reset\n" );
  }

/*
 * Holding pattern until autonegotiation completes.
 */

  if(( IORD( &pmac->mdio0.STATUS, 0 ) & PCS_ST_an_done ) == 0 )
  {
    printf( "PHY INFO:  waiting on PHY link...\n" );
    while(( IORD( &pmac->mdio0.STATUS, 0 ) & PCS_ST_an_done ) == 0 )
    {
      OSTimeDlyHMSM( 0, 0, 0, 10 );
    }
    printf( "PHY INFO:  PHY link detected, allowing network to start.\n\n\n\n" );
    resume_network_tasks();
    printf( "SSS INFO:  Connecting...\n\n\n\n" );
  }
  TK_SLEEP(3);
  return( 0 );
}

/* SSSMonitorPhyTask monitors the status of a single network PHY every 5 seconds
  (approximately) and acts to maintain a "healthy" network connection.
*/
void SSSMonitorPhyTask(void *task_data)
{
  INT8U status;

/*
 * Counter to allow for a brief network disconnect.
 */
  int disconnect_count;

 /*
  * Populate the local pmac structure upon successful network initialization.
  */
  np_tse_mac* pmac = (np_tse_mac*) tse.mi.base;

 /*
  * Clear counter to allow for a brief network disconnect.
  */
  disconnect_count = 0;

 /*
  * Now, start a loop that monitors the status of a single network PHY every 5 seconds
  * (approximately) and acts to maintain a "healthy" network connection.
  * The possible states are:
  *   Connected
  *   Disconnected
  */
  while(1)
  {
    OSTimeDlyHMSM(0, 0, 1, 0);
    status = IORD( &pmac->mdio1.STATUS, 0 );
    if( !(status & 0x20) )
    {
      disconnect_count++;
      if( disconnect_count == MAX_CABLE_DOWN )
      {
        printf( "\nPHY ERROR:  Ethernet Cable Disconnected!\n" );
        if( suspend_network_tasks() != OS_NO_ERR )
        {
          printf( "SSS INFO:  Error suspending network tasks!\n" );
        }
      }
    }
    else
    {

 /*
  * If the cable was previously disconnected, detect this, reset the PHY and
  * initiate the DHCP discovery process to obtain an IP Address.
  */
      if( disconnect_count > 0 )
      {
 /*
  * Issue a PHY Reset.
  */
        wait_on_phy();
        printf( "PHY INFO:  Cable Reconnected!\n" );
        TK_SLEEP(1);
 /*
  * Force re-acquisition of existing IP Address.
  * If that fails, the Iniche DHCP state machine should fall through to DHCP discovery.
  */
        dhc_set_state( 0, DHCS_INITREBOOT );
      }
/*
 * Reset the disconnect counter.
 */
      disconnect_count = 0;
    }
  }
}

/* SSSInitialTask will initialize the NicheStack
 * TCP/IP Stack and then initialize the rest of the Nios II Simple Socket Server example
 * RTOS structures and tasks.
 */
void SSSInitialTask(void *task_data)
{
  INT8U error_code;

  system_dhcp_hostname = "NEEK_1";

  wait_on_phy();

/*
 * Register new DHCP "IP attained" callback function.
 * If DHCP is acquired, ws_ipset will be called instead of dhc_main_ipset().
 */
  dhc_set_callback( 0, ws_ipset );

  /*
   * Initialize Altera NicheStack TCP/IP Stack - Nios II Edition specific code.
   * NicheStack is initialized from a task, so that RTOS will have started, and
   * I/O drivers are available.  Two tasks are created:
   *    "Inet main"  task with priority 2
   *    "clock tick" task with priority 3
   */
  alt_iniche_init();

  /* Start the Iniche-specific network tasks and initialize the network
   * devices.
   */
  netmain();

  /* Wait for the network stack to be ready before proceeding. */
  while (!iniche_net_ready)
  {
    TK_SLEEP(1);
 /*
  * Allow other tasks to run, while waiting for network.
  */
    OSTimeDlyHMSM(0, 0, 3, 0);
  }

/*
 * Nichestack is ready.
 */

  /* Application Specific Task Launching Code Block Begin */

  printf("\nNios II Simple Socket Server starting up.\n");

  /* Create the phy monitoring task. */
  TK_NEWTASK(&sssphytask);

  /* Create the main Nios II Simple socket server task. */
  TK_NEWTASK(&ssstask);

  /*create os data structures */
  SSSCreateOSDataStructs();

  /* create the other tasks */
  SSSCreateTasks();

  /* Application Specific Task Launching Code Block End */

  /*This task is deleted because there is no need for it to run again */
  error_code = OSTaskDel(OS_PRIO_SELF);
  alt_uCOSIIErrorHandler(error_code, 0);

  while (1); /* Correct Program Flow should never get here */
}

/* Main creates a single task, SSSInitialTask, and starts task scheduler.
 */

int main (int argc, char* argv[], char* envp[])
{

  INT8U error_code;

  /* Clear the RTOS timer */
  OSTimeSet(0);

  /* SSSInitialTask will initialize the NicheStack
   * TCP/IP Stack and then initialize the rest of the Nios II Simple Socket Server example
   * RTOS structures and tasks.
   */
  error_code = OSTaskCreateExt(SSSInitialTask,
                             NULL,
                             (void *)&SSSInitialTaskStk[TASK_STACKSIZE],
                             SSS_INITIAL_TASK_PRIORITY,
                             SSS_INITIAL_TASK_PRIORITY,
                             SSSInitialTaskStk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_uCOSIIErrorHandler(error_code, 0);

  /*
   * As with all MicroC/OS-II designs, once the initial thread(s) and
   * associated RTOS resources are declared, we start the RTOS. That's it!
   */
  OSStart();


  while(1); /* Correct Program Flow never gets here. */

  return -1;
}

/*******************************************************************************
 * zzAG
 * Flash service functions.
 *
 ******************************************************************************/

//#include "sys/alt_flash.h"
//#include "sys/alt_flash_dev.h"

/*
 * FindLastFlashSectorOffset
 *
 *   <-- pLastFlashSectorOffset Offset of last sector in flash.
 *
 *   This function finds the offset to the last sector in flash and returns it
 * in pLastFlashSectorOffset.
 */

/* zzAG int FindLastFlashSectorOffset(
    alt_u32                     *pLastFlashSectorOffset)
{
    alt_flash_fd                *fd;
    flash_region                *regions;
    int                         numRegions;
    flash_region                *pLastRegion;
    int                         lastFlashSectorOffset;
    int                         n;
    int                         error = 0;

    // Open the flash device.
    fd = alt_flash_open_dev(CFI_FLASH_NAME);
    if (fd <= 0)
        error = -1;

    // Get the flash info.
    if (!error)
        error = alt_get_flash_info(fd, &regions, &numRegions);

    // Find the last flash sector.
    if (!error)
    {
        pLastRegion = &(regions[0]);
        for (n = 1; n < numRegions; n++)
        {
            if (regions[n].offset > pLastRegion->offset)
                pLastRegion = &(regions[n]);
        }
        lastFlashSectorOffset =   pLastRegion->offset
                                + pLastRegion->region_size
                                - pLastRegion->block_size;
    }

    // Return results.
    if (!error)
        *pLastFlashSectorOffset = lastFlashSectorOffset;

    return (error);
} zzAG*/

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

