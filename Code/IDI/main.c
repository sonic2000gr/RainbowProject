/*
 * The Rainbow Project Intelligent Display Interface (IDI)
 * (C) 2018 Manolis Kiagias - SchoolSpace.gr
 */

#include <msp430.h> 
#define FALSE 0
#define TRUE  1
#define LCD_RS BIT0 // Pin 2.0
#define LCD_EN BIT2 // Pin 2.2
#define LCD_D4 BIT4 // Pin 2.4
#define LCD_D5 BIT5 // Pin 2.5
#define LCD_D6 BIT6 // Pin 2.6
#define LCD_D7 BIT7 // Pin 2.7
#define LCD_BACKLIGHT BIT3 //Pin 2.3
#define LCD_DIR P2DIR
#define LCD_OUT P2OUT
#define LCD_MASK ((LCD_RS | LCD_EN | LCD_D7 | LCD_D6 | LCD_D5 | LCD_D4))
#define ALL_BITS 0xFF
#define NO_BITS 0x00
#define PULSE_DELAY 200
#define STARTUP_DELAY 100000
#define LINE_CURSOR 1
#define BLOCK_CURSOR 0

void sendCommand(char);
void sendData(char);
void pulseLCD(void);
void initLCD(void);
void setPositionLCD(char,char);
void clearLCD(void);
void printLCD(char*);
void setCursorStyleLCD(int);
void showCursorLCD(int);
void blankLCD(void);
void restoreLCD(void);
void setBacklightLCD(int);
void PWMTest(int, int);


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

    //Set all pins as outputs
    P2SEL = 0;
    LCD_DIR |= LCD_MASK;
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

void main(void) {
   // int duty=1000;
   // int freq=2000;
    WDTCTL = WDTPW | WDTHOLD;   // Stop watchdog timer
    P1SEL = NO_BITS; // Use all of Port 1 as digital IO
    P1DIR = NO_BITS; // Configure all Port 1 as inputs
    P3DIR = ALL_BITS;
    P3OUT = NO_BITS;
    P1IE |= BIT7;    // Enable interrupt on BIT7. This is a signal from Z80 to read a character
    P1REN |= BIT7;   // Enable pullup resistor on P1.7
    P1IES |= BIT7;   // Interrupt will occur on High to Low transition
    P1IFG &= ~BIT7;  // Clear the interrupt flag
    initLCD();
    clearLCD();
  //  PWMTest(freq,duty);
  //  __delay_cycles(4000000);
    printLCD("Rainbow Project");
    setPositionLCD(1,0);
    printLCD(" (C) SchoolSpace");
    __delay_cycles(1000000);
    clearLCD();
    __bis_SR_register(LPM3_bits + GIE);
    __no_operation();
}

#pragma vector=PORT1_VECTOR
__interrupt void readPort() {
    char letter = P1IN & 127;
    sendData(letter);
    P1IFG &= ~BIT7; // Clear the interrupt
}
