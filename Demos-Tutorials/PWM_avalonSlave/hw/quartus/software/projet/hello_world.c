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

int main()
{
	printf("Hello from Nios II!\n");
	IOWR_32DIRECT(PWM_0_BASE, 0, 0xFFFFFFFF);
	printf("%x\n",IORD_32DIRECT(PWM_0_BASE, 0));
	printf("%x\n",IORD_32DIRECT(PWM_0_BASE, 1));
	printf("%x\n",IORD_32DIRECT(PWM_0_BASE, 2));
	return 0;
}
