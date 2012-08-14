/*
 * SSS_DE2_115.c
 *
 *  Created on: 03/04/2011
 *      Author: Adam
 *
 *  Description:
 *  	Contains functions specific for the DE2-115 board.
 *  	Altera Simple Socket Server examples are not developed for the DE2-115 and require a different functions for the MAC address.
 *  	These additional functions have been taken from the DE2-115 Webserver Example code.
 */
#include "SSS_DE2_115.h"


/*==============================================================================
 *Get_DE2_115_mac_addr
 * This custom function is created from code taken from DE2-115 web server example file network_utilities.c
 * This function retrieves the DE2-115 mac address and requires the "FindLastFlashSectorOffset" function.
 *
==============================================================================*/
error_t get_DE2_115_mac_addr(unsigned char mac_addr[6])
{
  error_t error = 0;
  alt_u32 signature;

  /* Get the flash sector with the MAC address. */
  error = FindLastFlashSectorOffset(&last_flash_sector_offset);
  if (!error)
    last_flash_sector = CFI_FLASH_BASE + last_flash_sector_offset;
  else
    printf ("Could not locate flash sector with MAC address.\n");

/* This last_flash_sector region of flash is examined to see if
 * valid network settings are present, indicated by a signature of 0x00005afe at
 * the first address of the last flash sector.  This hex value is chosen as the
 * signature since it looks like the english word "SAFE", meaning that it is
 * safe to use these network address values.
*/
  if (!error)
  {
    signature = IORD_32DIRECT(last_flash_sector, 0);
    if (signature != 0x00005afe)
    {
    	printf ("zzAG:Flash doesn't spell safe.\n");
    	// error = generate_and_store_mac_addr();
    }
  }

  if (!error)
  {
    mac_addr[0] = IORD_8DIRECT(last_flash_sector, 4);
    mac_addr[1] = IORD_8DIRECT(last_flash_sector, 5);
    mac_addr[2] = IORD_8DIRECT(last_flash_sector, 6);
    mac_addr[3] = IORD_8DIRECT(last_flash_sector, 7);
    mac_addr[4] = IORD_8DIRECT(last_flash_sector, 8);
    mac_addr[5] = IORD_8DIRECT(last_flash_sector, 9);

    printf("Your DE2-115 Ethernet MAC address is %02x:%02x:%02x:%02x:%02x:%02x\n",
            mac_addr[0],
            mac_addr[1],
            mac_addr[2],
            mac_addr[3],
            mac_addr[4],
            mac_addr[5]);

  }

  return error;
}


 /* FindLastFlashSectorOffset
 * *
 *   <-- pLastFlashSectorOffset Offset of last sector in flash.
 *
 *   This function finds the offset to the last sector in flash and returns it
 * in pLastFlashSectorOffset.
 */
int FindLastFlashSectorOffset(alt_u32 *pLastFlashSectorOffset)
{
    alt_flash_fd                *fd;
    flash_region                *regions;
    int                         numRegions;
    flash_region                *pLastRegion;
    int                         lastFlashSectorOffset;
    int                         n;
    int                         error = 0;

    /* Open the flash device. */
    fd = alt_flash_open_dev(CFI_FLASH_NAME);
    if (fd <= 0)
        error = -1;

    /* Get the flash info. */
    if (!error)
        error = alt_get_flash_info(fd, &regions, &numRegions);

    /* Find the last flash sector. */
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

    /* Return results. */
    if (!error)
        *pLastFlashSectorOffset = lastFlashSectorOffset;

    return (error);
}















