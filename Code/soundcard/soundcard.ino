/* Rainbow Project Sound card
 *  Based on Atmega 328p
 */

/* The following pins / outputs are used
 *  
 *  Arduino Digital Pin 8 (328p Pin 14, PortB0) => Output to AMP
 *  
 *  Atmega 328P Pins    Function
 *  ============================
 *  PORTD7 13           Z80 D7
 *  PORTD6 12           Z80 D6
 *  PORTD5 11           Z80 D5
 *  PORTD4 6            Z80 D4
 *  PORTD3 5            Z80 D3
 *  PORTD2 4            Z80 D2
 *  PORTD1 3            Z80 D1
 *  PORTD0 2            Z80 D0
 *  
 *  PORTC0 23           SEL2
 *  PORTC1 24           Z80 WR
 */

void setup() {
  // Set entire Port B as inputs, except PB0
  
  DDRB = 0b00000001;
  
  // Set pull up resistors for entire port B except bit 0
  
  PORTB = 0b11111110;
  
  // Set entire Port C as inputs
  
  DDRC = 0b00000000;

  // Set pull up resistors for entire port C except bit 0/1

  PORTC = 0b11111100;
  
  // Set entire Port D as inputs

  DDRD = 0b00000000;
}

void loop() {
  while (true) {
  }
}
