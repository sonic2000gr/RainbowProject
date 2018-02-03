/*
 * display.c
 *
 *  Created on: 31/01/2018
 *      Author: Manolis Kiagias
 *
 */

#include <msp430.h>
#include "display.h"

void setCursorStyleLCD(int cstyle) {
    if (cstyle == LINE_CURSOR)
        sendCommand(0x0E);
    else
        sendCommand(0x0F);
}

void showCursorLCD(int scursor) {
    if (scursor == TRUE)
        sendCommand(0x0E);
    else
        sendCommand(0x0C);
}

void blankLCD(void) {
    sendCommand(0x08);
}

void restoreLCD(void) {
    sendCommand(0x0C);
}

void setBacklightLCD(int blight) {
    if (blight == FALSE)
        LCD_OUT &= ~LCD_BACKLIGHT;
    else
        LCD_OUT |= LCD_BACKLIGHT;
}

void sendCommand(char theCommand) {

    // Clear out all pins

    LCD_OUT &= ~(LCD_MASK);

    // Set high nibble

    LCD_OUT |=(theCommand &0xF0);

    // Lower RS

    LCD_OUT &= ~LCD_RS;

    pulseLCD();

    // Set low nibble

    // clear all pins

    LCD_OUT &= (~LCD_MASK);

    // Shift data and send

    LCD_OUT |= ((theCommand &0x0F) <<4);

    // lower RS

    LCD_OUT &= ~LCD_RS;

    pulseLCD();
}

void sendData(char theData) {
    // Clear out all pins

    LCD_OUT &= ~(LCD_MASK);

    // Set high nibble

    LCD_OUT |=(theData &0xF0);

    // Up RS

    LCD_OUT |= LCD_RS;

    pulseLCD();

    // Set low nibble

    // clear all pins

    LCD_OUT &= (~LCD_MASK);

    // Shift data and send

    LCD_OUT |= ((theData &0x0F) <<4);

    // Up RS

    LCD_OUT |= LCD_RS;

    pulseLCD();
}

void pulseLCD() {

    // Lower EN

    LCD_OUT &= ~LCD_EN;
    __delay_cycles(PULSE_DELAY);

    // Up EN

    LCD_OUT |= LCD_EN;
    __delay_cycles(PULSE_DELAY);

    // Lower EN

    LCD_OUT &= ~LCD_EN;
    __delay_cycles(PULSE_DELAY);
}

// PWM Generation test

void PWMTest(int period, int duty) {
    P1DIR |= BIT2; // P1.2 to output
    P1SEL |= BIT2; // P1.2 to TA0.1

    TA0CCR0 = period-1; // PWM Period
    TA0CCTL1 = OUTMOD_7; // CCR1 reset/set
    TA0CCR1 = duty; // CCR1 PWM duty cycle
    TA0CTL = TASSEL_2 + MC_1; // SMCLK, up mode
}

// Initialize the LCD Module
// in 4bit mode
// This needs to be done in two parts
// First, send command 0x20 (1 Line, 4bits, 5x7)
// Then send command 0x28 (2 Lines, 4bits, 5x7)

void initLCD(void) {

    //Set all pins as digital I/O
    P2SEL = NO_BITS;

    //Set pins connected to the LCD to output

    LCD_DIR |= LCD_MASK;

    // Set backlight pin to output

    LCD_DIR |= LCD_BACKLIGHT;

    //Set all pins low

    LCD_OUT &= ~(LCD_MASK);

    // Turn off backlight

    LCD_OUT &= ~LCD_BACKLIGHT;

    // Wait some time for warmup

    __delay_cycles(STARTUP_DELAY);

    // Send 0x20 to enter 4 bit
    // mode, 1line, 5x7

    LCD_OUT = 0x20;
    pulseLCD();

    // Now that 4bit mode is established,
    // Set two line mode

    sendCommand(0x28);

    // Turn display on, cursor hidden

    sendCommand(0x0C);

    // Turn on cursor move

    sendCommand(0x06);
}

void setPositionLCD(char row, char column) {
    char address;
    if (row == 0)
        address = 0;
    else
        address = 40;

    address |= column;
    sendCommand(0x80 |address);
}

void clearLCD(void) {
    sendCommand(0x01);
    sendCommand(0x02);
}

void printLCD(char *output) {
    char *c;
    c = output;
    while ((c!=0) && (*c!=0)) {
        sendData(*c);
        c++;
    }
}
