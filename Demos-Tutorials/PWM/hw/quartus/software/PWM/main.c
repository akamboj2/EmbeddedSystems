/*
 * main.c
 *
 *  Created on: Nov 15, 2019
 *      Author: Abhi Kamboj
 */

#include <stdio.h>
#include <inttypes.h>
#include "system.h"
#include "io.h"
#include "altera_avalon_pio_regs.h"

void generate_pwm(int period, int dc, uint8_t polarity){
	uint32_t set_period = period*50000000;
	uint32_t set_dc = period*dc;

	IOWR_32DIRECT(PIO_0_BASE,0,set_period);
	IOWR_32DIRECT(PIO_1_BASE,0,set_dc);
	IOWR_8DIRECT(PIO_2_BASE,0,polarity);

}

int main()
{
	//int period = 1000;
	//printf("Hello from Nios II!\n");
	//IOWR_8DIRECT(PIO_0_BASE,0,period);

	generate_pwm(.001, .5, 1);

	return 0;
}



