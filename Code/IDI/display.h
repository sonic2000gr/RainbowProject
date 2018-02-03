/*
 * display.h
 *
 *  Created on: 31/01/2018
 *      Author: Manolis Kiagias
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_

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

#endif /* DISPLAY_H_ */
