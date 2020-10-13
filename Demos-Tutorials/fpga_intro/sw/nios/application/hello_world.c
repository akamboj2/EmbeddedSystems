/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <inttypes.h>
#include "system.h"
#include "io.h"
#include "altera_avalon_pio_regs.h"

int main()
{
	uint8_t led = 1;
	int i;
	uint32_t pio_data =  IORD_ALTERA_AVALON_PIO_DATA(PIO_0_BASE);

	while(1) {
		for(i=0; i<100000; i++);
		//printf("%d\n",led);
		IOWR_8DIRECT(PIO_0_BASE,0,led);
		led<<=1;
		//if(!led) led=1;
	}

	return 0;
}
