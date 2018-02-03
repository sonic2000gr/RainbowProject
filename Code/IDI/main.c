/*
 * The Rainbow Project Intelligent Display Interface (IDI)
 * (C) 2018 Manolis Kiagias - SchoolSpace.gr
 */

#include <msp430.h>
#include "display.h"

void main(void) {
    WDTCTL = WDTPW | WDTHOLD;   // Stop watchdog timer
    P1SEL = NO_BITS; // Use all of Port 1 as digital IO
    P1DIR = NO_BITS; // Configure all Port 1 as inputs for the data bus values
    P2DIR &= ~BIT1; // Set  PORT2 BIT1 as Input for IORQ

    // Minimize power consumption for unused ports
    // by setting them as outputs / low

    P3DIR = ALL_BITS;
    P3OUT = NO_BITS;

    // Configure P2, BIT1 to receive interrupts (IORQ signal)

    P2IE |= BIT1;    // Enable interrupt on BIT1. This is a signal from Z80 to read a character
    // P2REN |= BIT1;   // Enable pullup resistor on P1.1. Probably not needed
    P2IES |= BIT1;   // Interrupt will occur on High to Low transition (IORQ is active low)
    P2IFG &= ~BIT1;  // Clear the interrupt flag

    // initialize / clear LCD

    initLCD();
    clearLCD();

    // Enter the main loop - go to low power mode 3 and wait for interrupt (GIE on)

    __bis_SR_register(LPM3_bits + GIE);
    __no_operation();
}

#pragma vector=PORT2_VECTOR
__interrupt void readPort() {
    char letter = P1IN;
    if (letter >= 192) {
        // process as command
    } else
       sendData(letter);

    P2IFG &= ~BIT1; // Clear the interrupt
}
