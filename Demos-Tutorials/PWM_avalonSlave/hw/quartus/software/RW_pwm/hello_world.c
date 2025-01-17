///*
// * "Hello World" example.
// *
// * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
// * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
// * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
// * device in your system's hardware.
// * The memory footprint of this hosted application is ~69 kbytes by default
// * using the standard reference design.
// *
// * For a reduced footprint version of this template, and an explanation of how
// * to reduce the memory footprint for a given application, see the
// * "small_hello_world" template.
// *
// */
//
//#include <stdio.h>
//#include <inttypes.h>
//#include "system.h"
//#include "io.h"
//
//int main()
//{
//	printf("Hello from Nios II!\n");
//	IOWR_32DIRECT(PWM_0_BASE, 0, 1000000);
//	IOWR_32DIRECT(PWM_0_BASE, 32, 2000);
//	printf("%d\n",IORD_32DIRECT(PWM_0_BASE, 0));
//	printf("%d\n", IORD_32DIRECT(PWM_0_BASE, 32));
////	printf("%x\n",IORD_32DIRECT(0x41010, 1));
////	printf("%x\n",IORD_32DIRECT(0x41010, 2));
//	return 0;
//}
/*
 * pwm_servo.c
 *
 *  Created on: Nov 17, 2019
 *      Author: Abhi Kamboj
 */
#include <stdio.h>
#include <inttypes.h>
#include "system.h"
#include "io.h"

/* generate_pwm:
* inputs: period in milliseconds, percent duty cycle, and polarity (either 0 or 1).
* sets the Avalon bus registers to output a pwm with these characteristics.
*/
void generate_pwm(int period, double dc, int polarity){
	//DON'T CALL GENERATE PWM WITH PERIOD 1... idk why but it doesn't work
	uint32_t set_period = period*1000000/20; //convert ms to ns and clk period is 20 ns so divide by that
	uint32_t set_dc = 500000; //set_period*dc;
	uint32_t set_pol = polarity;
	//printf("Supposed to set %d %d %d\n", set_period, set_dc, set_pol);

	IOWR_32DIRECT(PWM_0_BASE, 0, set_period-1);
	IOWR_32DIRECT(PWM_0_BASE, 32, set_dc-1);
	IOWR_32DIRECT(PWM_0_BASE, 64, set_pol);
	//printf("Just set %d %d %d\n", IORD_32DIRECT(PWM_0_BASE, 0),IORD_32DIRECT(PWM_0_BASE, 32),IORD_32DIRECT(PWM_0_BASE, 64));
}

int main()
{
	//this code should repeatedly move the arm of a servo motor back and fourth with a short pause in between
	//the servo should be connected to GPIO_0 pin 1 header of the board and gnd which is GPIO_0 pin 12
	volatile int i =0;

	generate_pwm(20, 10, 1);
	printf("switching to dc: %d\n", IORD_32DIRECT(PWM_0_BASE, 32));
//	while(1){
//		generate_pwm(20, .05, 1);
//		printf("switching to dc: %d\n", IORD_32DIRECT(PWM_0_BASE, 32));
//		for (i=0; i<1000000; i++);
//		generate_pwm(20, .1, 1);
//		printf("switching to dc: %d\n", IORD_32DIRECT(PWM_0_BASE, 32));
//		for(i=0;i<1000000; i++);
//	}
	return 0;
}


// Main.c - makes LEDG0 on DE2-115 board blink if NIOS II is set up correctly
// for ECE 385 - University of Illinois - Electrical and Computer Engineering
// Author: Zuofu Cheng

struct in_obj{
	volatile char SW;
	volatile char RESET; //key[2] is reset
	volatile char ACC;  //key[3] is acc
}in_obj;

int main()
{
	int i = 0;
	volatile unsigned int *LED_PIO = (unsigned int*)0x20; //make a pointer to access the PIO block

	*LED_PIO = 0; //clear all LEDs
	while ( (1+1) != 3) //infinite loop
	{
		for (i = 0; i < 100000; i++); //software delay
		*LED_PIO |= 0x1; //set LSB
		for (i = 0; i < 100000; i++); //software delay
		*LED_PIO &= ~0x1; //clear LSB
	}
	return 1; //never gets here

	//note: try making LED_PIO = 10; or something
	//volatile unsigned int * SW_PIO, *RESET_BTN, *ACC_BTN;
	in_obj* in = (in_obj*)base_adr;

	int flag = 0;
	while(1){
		if(! in->RESET){
			*LED_PIO = 0;
		}else{
			if(!flag & !in->ACC){
				*LED_PIO += in->SW;
				flag = 1;
			}
			if (in->ACC){
				flag = 1;
			}
		}
	}

}
