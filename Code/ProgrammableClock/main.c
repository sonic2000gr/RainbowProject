#include <msp430.h> 


/**
 * Rainbow Project Programmable Clock System
 * (C) 2018 Manolis Kiagias
 * The Rainbow Project Team
 */

volatile int id = 0;
volatile int delay = 0;
void InitClocks(void);
void InitTimer(void);
void InitGPIO(void);

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	InitClocks();
	InitGPIO();
	InitTimer();
	 _BIS_SR(LPM0_bits + GIE); // Enter LPM0
	return 0;
}

void InitClocks(void) {
    DCOCTL = 0; // Set Lowest DCOx / MODx
    BCSCTL1 = CALBC1_1MHZ; // Use calibrated values for 1 MHz operation
    DCOCTL = CALDCO_1MHZ; // Set DCO step + Modulation for 1 MHz operation
}

void InitGPIO(void) {
    P1DIR |= BIT6; // Set P1.6 as output
    P1DIR &= ~BIT3; // Set P1.3 as input
    P1REN |= BIT3; // Enable pull up / down resistor in P1.3
    P1OUT |= BIT3; // pull up P1.3
    P1SEL |= BIT6; // Select primary peripheral output
    P1SEL2 &= ~BIT6; // to TA0.1
    P1IE |= BIT3; // Enable interrupt for P1.3 switch
    P1IES |= BIT3; // P1.3 high to low transition
    P1IFG &= ~BIT3; // Clear interrupt
}

void InitTimer(void) {
    P1DIR |= BIT6; // Set P1.6 as output
    P1SEL |= BIT6; // Select primary peripheral output
    P1SEL2 &= ~BIT6; // to TA0.1
    TA0CCR0 = 65535; // Set maximum count value
    TA0CCTL1 = OUTMOD_4; // set output toggle
    TA0CCR1 = 32768; //  Counter compare value
    TA0CTL = TASSEL_2 + ID_3 + MC_1; // Use the SMCLK to clock the counter and set to count up mode
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1(void)
{
  if (delay == 0 ) {
    if (id == 0)
        id = 64;
    else if (id == 192)
        id = 0;
    else
        id = id + 64;
    TA0CTL = TASSEL_2 + id + MC_1; // Use the SMCLK to clock the counter and set to count up mode
  } else {
      delay++;
      if (delay == 10)
          delay = 0;
  }
    P1IFG &= ~BIT3; // P1.3 IFG cleared
}
