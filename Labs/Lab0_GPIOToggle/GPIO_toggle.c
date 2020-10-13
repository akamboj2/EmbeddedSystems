/*
 * GPIO_toggle.c
 *
 *  Created on: 20 Sep 2019
 *      Author: Abhi Kamboj
 */


#include "msp.h"

/*Rotates between colors on the LED*/
void flash_colors(){
    int i;
    unsigned color;
    color=0;
    P2->SEL0 &= 0xF8;
    P2->SEL1 &= 0xF8;
    P2->DIR |= 0x7; //set Port 2 to output direction

    while(1) {
        color++;
        color%=8;
        unsigned set_col = P2->OUT & 0xF8;
        set_col |= color;
        P2->OUT = set_col;
        //P2->OUT ^= (1<<color); // Toggles the bit 0 of the output register
        for(i=0; i<100000; i++); // Wait
    }
}
void start_LED(){
    //look at device specific datasheet!
    //p2.0 2.1 2.2 ARE the LED's Genral IO (SEL0=SEL1=0)
    //which is why you can't find them on the GPIOs
    P2->DIR |= 0x1; //output
    P2->OUT |= 0x1; //red LED
}
void stop_LED(){
    P2->DIR |= 0x1;
    P2->OUT &= 0xFE;//off red LED
}

/* intializes and enables ACLK with VLOCLK to a freq of 32.720 kHz
 * also outputs clk signal to peripheral P4.2
 * returns: clock freq of 32,720 Hz
 */
unsigned setup_ACLK(){
    //set up clock -
    CS->CTL1 |=CS_CTL1_SELA__VLOCLK; //
    CS->CTL1 |= CS_CTL1_DIVA__128;
    CS->CLKEN |= CS_CLKEN_ACLK_EN;
    //note with this config ^^ clk freq: 32.720 kHz (checked with logic analyzer)

    //set P4.2 to primary module ACLK
    P4->SEL1 &= ~0x04;
    P4->SEL0 |= 0x04; //(remember it's 4.2 bc bit3 of port 4== 1, bit 3 bc it's 0 1 2)
    //set port 4.2 to output mode
    P4->DIR |= 0x04;
    return 32720;
}

/* Initializes timer and counts up a certain amount of seconds
 * then resets timer, toggles LED and counts up again.
 * Also outputs ACLK using VLO to P4.2
 */
void timer_testLED(){
    unsigned timer_ctl=0;
    double seconds = 2; //max is 2^16-1 = 65,536-1 ==>55.78 seconds
    unsigned clockfreq; //this has to be measured or read from doc


    //Select port 2.4 to be PM_TA0.1
    //P2->SEL0 |= 0x10; //select 5th bit for output to peripheral

    clockfreq = setup_ACLK();

    //I think out1 is TA0.1 which is primary of port 2.4
        P2->SEL1 &= 0xEF;
        P2->SEL0 = 0x10; //primary module
        P2->DIR = 0x10; //output mode
        //P2->OUT = 0x10; //Output high

    //TIMER_A0
    timer_ctl |= TIMER_A_CTL_SSEL__ACLK //set TASSEL, so it uses ACLK
        | TIMER_A_CTL_MC__UP //count up
        | TIMER_A_CTL_ID__8; // divide by 8

    TIMER_A0->CTL |= TIMER_A_CTL_MC__STOP; //stop the timer
    TIMER_A0->CTL |= TIMER_A_CTL_CLR; //clear the clock
    TIMER_A0->CTL |= timer_ctl;

    TIMER_A0->CCTL[1] = TIMER_A_CCTLN_OUT //output to high
            | TIMER_A_CCTLN_CCIE //enable interrupts
            | TIMER_A_CCTLN_OUTMOD_1; //outmode set
    TIMER_A0->CCTL[1] &= ~TIMER_A_CCTLN_CAP; //set to compare mode

    TIMER_A0->CCR[1]=seconds*clockfreq/8-1;//just count up to the given seconds

    //timer in up mode always counts upto value in 0, so need to set this even though we're checking 1
    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CAP; //set to compare mode
    TIMER_A0->CCR[0]=seconds*clockfreq/8;
    int toggle=0;
    while(1){
         if(TIMER_A0->CCTL[1] & TIMER_A_CCTLN_CCIFG){ //check bit 0 (TIMER_A_CCTLN_CCIFG) of timer cctl register
             TIMER_A0->CCTL[1] &= ~TIMER_A_CCTLN_CCIFG; //clear flag
             toggle ? start_LED():stop_LED();   //set led
             toggle=!toggle;
         }
    }
}

timer_delay(unsigned ms){
    unsigned timer_ctl=0;
    double seconds = (double)ms/1000; //max is 2^16-1 = 65,536-1 ==>55.78 seconds --check this calc again
    unsigned clockfreq;


    //Select port 2.4 to be PM_TA0.1
   // P2->SEL0 |= 0x10; //select 5th bit for output to peripheral

    clockfreq = setup_ACLK();

    //TIMER_A0
    timer_ctl |= TIMER_A_CTL_SSEL__ACLK //set TASSEL, so it uses ACLK
        | TIMER_A_CTL_MC__UP //count up
        | TIMER_A_CTL_ID__8; // divide by 8

    TIMER_A0->CTL |= TIMER_A_CTL_MC__STOP; //stop the timer
    TIMER_A0->CTL |= TIMER_A_CTL_CLR; //clear the clock
    TIMER_A0->CTL |= timer_ctl;

    TIMER_A0->CCTL[0] = TIMER_A_CCTLN_OUT //output to high
            | TIMER_A_CCTLN_CCIE //enable interrupts
            | TIMER_A_CCTLN_OUTMOD_1; //outmode set
    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CAP; //set to compare mode

    TIMER_A0->CCR[0]=seconds*clockfreq/8;//just count up to the given seconds

    while(!(TIMER_A0->CCTL[0] & TIMER_A_CCTLN_CCIFG)); //check bit 0 (TIMER_A_CCTLN_CCIFG) of timer cctl register
    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG; //clear flag

    /*put this code in main to test this fun
     * int toggle=0;
        while(1){
            timer_delay(2000);
            toggle ? start_LED():stop_LED();   //set led
            toggle=!toggle;
        }
     */

}

//this generates PWM with the GPIO
void GPIO_PWM(){
    unsigned port_bit = 0x40; //use port 2.6
    int state;
    int i;
    P2->SEL1 &= ~port_bit;
    P2->SEL0 &= ~port_bit;
    P2->DIR |= port_bit; //out dir
    P2->OUT|=port_bit;

    while(1){
        for(i=0;i<100;i++);     //673.3 Hz -->emperically tested
        state = P2->OUT & port_bit;
        if (state){ //turn off state
            P2->OUT &= ~port_bit;
        }else{
            P2->OUT|=port_bit;//turn it on
        }
    }
}
/* Generates a PWM of 20 ms using clock compare toggle/reset mode */
void PWM(){
    double seconds = 20.0/1000;
    unsigned timer_ctl=0;
    unsigned clockfreq = setup_ACLK();
    unsigned P2_4 = 0x10;
    double duty_cycle=.9;

   //I think out1 is TA0.1 which is primary of port 2.4
    P2->SEL1 &= ~P2_4;
    P2->SEL0 |= P2_4; //primary module
    P2->DIR |= P2_4; //output mode
    //P2->OUT |= P2_4; //Output high
    //P2MAP->PMAP_REGISTER2 |= P2_4>>1;

    //TIMER_A0
    timer_ctl |= TIMER_A_CTL_SSEL__ACLK //set TASSEL, so it uses ACLK
        | TIMER_A_CTL_MC__UP //count up
        | TIMER_A_CTL_ID__8; // divide by 8

    TIMER_A0->CTL = TIMER_A_CTL_MC__STOP; //stop the timer (just set's to 0)
    TIMER_A0->CTL |= TIMER_A_CTL_CLR; //clear the clock
    TIMER_A0->CTL |= timer_ctl;

    //        TIMER_A0->CCTL[0] = TIMER_A_CCTLN_OUT //output to high
    //                | TIMER_A_CCTLN_CCIE //enable interrupts
    //                | TIMER_A_CCTLN_OUTMOD_0; //outmode 0-->does nothing
    //        TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CAP; //set to compare mode


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
}

/*
 * Generates interrupts at a rate of about 24 micro seconds (i was expecting 50 ms... hmm)
 */
void TimerIntr(){
    unsigned timer_ctl=0;
    unsigned clockfreq = setup_ACLK();
    double seconds = 50.0/1000;

    //TIMER_A0
    timer_ctl |= TIMER_A_CTL_SSEL__ACLK //set TASSEL, so it uses ACLK
        | TIMER_A_CTL_MC__UP //count up
        | TIMER_A_CTL_IE //interrupt enable
        | TIMER_A_CTL_ID__8; // divide by 8

    TIMER_A0->CTL = TIMER_A_CTL_MC__STOP; //stop the timer (just set's to 0)
    TIMER_A0->CTL |= TIMER_A_CTL_CLR; //clear the clock
    TIMER_A0->CTL |= timer_ctl;

    TIMER_A0->CCTL[0] = TIMER_A_CCTLN_OUT //output to high
            | TIMER_A_CCTLN_CCIE //enable interrupts
            | TIMER_A_CCTLN_OUTMOD_0; //outmode 0-->does nothing
    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CAP; //set to compare mode

    TIMER_A0->CCR[0]=seconds*clockfreq/8;//just count up to the given seconds

    //these are needed to enable interrupts
    NVIC_EnableIRQ(TA0_0_IRQn);
    NVIC_SetPriority(TA0_0_IRQn,4);
}

/*
 * Called with TA CCR0 is zero and interrupts are enabled
 */
void TA0_0_IRQHandler(){
    unsigned port=0x80;
    P2->DIR |= port; //output==1
    P2->SEL0 &= ~port;
    P2->SEL1 &= ~port;
    P2->OUT ^= port;

    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG; //clear flag
    //note we need to clear interrupt flag
    //TIMER_A0->CTL &= ~TIMER_A_CTL_IE;
}

void ADC(){
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
    ADC14->CTL0 |= ADC14_CTL0_SC; //initiates conversion

    timer_delay(20);

    printf("Conversion is: %u\n",ADC14->MEM[0]);

    ADC14->CTL0 &= ~ADC14_CTL0_SC; //stop conversion

    printf("1UL is: %u\n",1UL);

    while(!ADC14->IFGR0 & 1UL); //poll the memory

    printf("Conversion is: %d",ADC14->MEM[0]);
}

void ADC14_IRQHandler(){
    printf("In Here\n");
    //clear interrutp
    ADC14->CLRIFGR0 |= 1UL;
}
void main(void)
{
/*TESTING IDEA!:
 * look at the test you already have at the bottom of timer delay
 * see if that works
 * see it on logic analyzer
 * decrease delay
 * and see if it still works
 * actually before all that, try outputting onto a GPIO port from that function
 *  it's probs a problem with my outputting.
 */
    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD; // stop watchdog timer
    //TimerIntr();
    ADC();
    //setup_ACLK();
}


