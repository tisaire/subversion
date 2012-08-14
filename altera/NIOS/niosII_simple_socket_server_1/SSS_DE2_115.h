/*
 * SSS_DE2_115.h
 *
 *  Created on: 04/04/2011
 *      Author: Adam
 */

#ifndef SSS_DE2_115_H_
#define SSS_DE2_115_H_

#include "sys/alt_flash.h"
#include "sys/alt_flash_dev.h"
#include <errno.h>
#include <alt_iniche_dev.h>
#include "io.h"
#include "sys/alt_alarm.h"
#include "alt_types.h"

alt_u32 last_flash_sector_offset;
alt_u32 last_flash_sector;

int FindLastFlashSectorOffset(alt_u32 *pLastFlashSectorOffset);
error_t get_DE2_115_mac_addr(unsigned char mac_addr[6]);

#endif /* SSS_DE2_115_H_ */
