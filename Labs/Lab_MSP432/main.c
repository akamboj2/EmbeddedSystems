#include "msp.h"

//file scope variable used by multiple function
static unsigned clockfreq;

/* setup_ACLK:
 * intializes and enables ACLK with VLOCLK to a freq of 32.720 kHz
 * also outputs clk signal to pin P4.2
 * returns: clock freq of 32,720 Hz
 */
unsigned setup_ACLK(){
    //set up clock -
    CS->CTL1 |=CS_CTL1_SELA__VLOCLK;
    CS->CTL1 |= CS_CTL1_DIVA__128;
    CS->CLKEN |= CS_CLKEN_ACLK_EN;
    //note with this config ^^ clk freq: 32.720 kHz (checked with logic analyzer)

    //set P4.2 to primary module ACLK
    P4->SEL1 &= ~0x04;
    P4->SEL0 |= 0x04;
    //set port 4.2 to output mode
    P4->DIR |= 0x04;
    return 32720;
}
/* setup_Timer:
 * Sets the timer_A0 using CCR0 and CCR1.
 * Generates a PWM of 20 ms using clock compare toggle/reset mode
 * Enables interrupts from timer CCR0
 * Ouputs pwm to port 2.4
 */
void setup_Timer(){
    double seconds = 20.0/1000;
    unsigned timer_ctl=0;
    unsigned P2_4 = 0x10;
    double duty_cycle=.9;

   //OUT1 is mapped TA0.1 which is primary module of port 2.4
    P2->SEL1 &= ~P2_4;
    P2->SEL0 |= P2_4; //select primary module
    P2->DIR |= P2_4; //output mode


    //TIMER_A0
    timer_ctl |= TIMER_A_CTL_SSEL__ACLK //set TASSEL, so it uses ACLK
        | TIMER_A_CTL_MC__UP //count up
        | TIMER_A_CTL_ID__8; // divide by 8

    TIMER_A0->CTL = TIMER_A_CTL_MC__STOP; //stop the timer (just set's to 0)
    TIMER_A0->CTL |= TIMER_A_CTL_CLR; //clear the clock
    TIMER_A0->CTL |= timer_ctl;

    //set up timer
    TIMER_A0->CCTL[0] = TIMER_A_CCTLN_OUT //output to high
                | TIMER_A_CCTLN_CCIE //enable interrupts
                | TIMER_A_CCTLN_OUTMOD_0; //outmode 0-->does nothing
    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CAP; //set to compare mode

    TIMER_A0->CCTL[1] = TIMER_A_CCTLN_OUT //output to high
                    | TIMER_A_CCTLN_CCIE //enable interrupts
                    | TIMER_A_CCTLN_OUTMOD_3 //outmode 3 set/reset
                    | TIMER_A_CCTLN_SCCI; // synchronize compare

    TIMER_A0->CCTL[1] &= ~TIMER_A_CCTLN_CAP; //set to compare mode

    TIMER_A0->CCR[0]=seconds*clockfreq/8;//just count up to the given seconds
    printf("CCR0: %d from sec: %d clockfreq: %d\n",TIMER_A0->CCR[0],seconds,clockfreq);

    //now use CCR1 for the duty cycle (percent high)
    TIMER_A0->CCR[1]= (1.0-duty_cycle)*seconds*clockfreq/8;//count up to duty cycle
    printf("CCR1: %d\n",TIMER_A0->CCR[1]);

    //these are needed to enable interrupts
        NVIC_EnableIRQ(TA0_0_IRQn);
        NVIC_SetPriority(TA0_0_IRQn,4);
}

/* setup_ADC
 * inputs the signal from port 4.0
 * uses ACLK for sampling and MEM register 0 for holding converted values
 */
void setup_ADC(){
    //select port 4.0 primary module input
    P4->DIR &= ~1UL; //0 input dir
    P4->SEL0 |= 1UL; //select 01 primary module
    P4->SEL1 &= ~1UL;

    setup_ACLK();
    ADC14->CTL0 &= ~ADC14_CTL0_ENC; //disable it
    ADC14->CTL0 = ADC14_CTL0_SSEL__ACLK; //select ACLK
    ADC14->CTL0 = ADC14_CTL0_ON; //turn it on lol

    ADC14->CTL1 = 0; //make sure all of these are zero

    ADC14->MCTL[0] = ADC14_MCTLN_INCH_13; //make the 0th register input from A13 (P4.0)
    ADC14->IER0 = 1UL;

    NVIC_EnableIRQ(ADC14_IRQn);
    NVIC_SetPriority(ADC14_IRQn,4);

   // ADC14->MEM[0]=0;

    ADC14->CTL0 |= ADC14_CTL0_ENC; //enable it
    //ADC14->CTL0 |= ADC14_CTL0_SC; //initiates conversion (done in timer interrupt)
}

void ADC14_IRQHandler(){
    unsigned val = ADC14->MEM[0];
    printf("Conversion is: %u\n",val); //can changes this to 2's complement too if easier in setup

    //convert value from 0-255 to 1ms-2ms
    double ms = (double)val/255.0 + 1;

    //now CCR1 will be high for that amount of time
    //(do 20-ms because looking at pg 792 shows OUT1 is low for the amount of time in CCR1)
    TIMER_A0->CCR[1]= (20-ms)/1000.0*clockfreq/8;//count up to duty cycle


    //printf("CCR1: %d\n",TIMER_A0->CCR[1]);

    //clear interrutp
    ADC14->CLRIFGR0 |= 1UL;
}


/* Timer interrupt handler --called every 20 ms
 *
 */
void TA0_0_IRQHandler(){
    //can use this code to test interrupts

    //toggle the ADC14 SC bit (starts and stops the conversion)
    ADC14->CTL0 ^= ADC14_CTL0_SC;

    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG; //clear flag
    //note we need to clear interrupt flag
    //TIMER_A0->CTL &= ~TIMER_A_CTL_IE;
}

/**
 * main.c
 */
void main(void)
{
	WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;		// stop watchdog timer

	clockfreq = setup_ACLK();
	setup_Timer();
	setup_ADC();
	//attach potentiometer to P4.0 (see beginning of setup_ADC())
	//now the pwm should be ouputted to P2.4 (see at beginning of setup_timer())
	//check with logic analyzer and then attach servo to P2.4
}
