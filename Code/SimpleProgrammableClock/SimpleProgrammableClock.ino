#define STARTUP 400
#define END 9

void setup()
{
  // Port B5 as output

  DDRB = 0b00100000;
  PORTB = 0b00000000; 
 
  noInterrupts();           
  
  // Timer 1 initialization
  
  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1  = 0;
  OCR1A = STARTUP;
  TCCR1B |= (1 << WGM12);
  TCCR1B |= 0b00000100;     
  TIMSK1 |= (1 << OCIE1A);
  
  interrupts();
}

ISR(TIMER1_COMPA_vect)

{
  PORTB ^= 0b00100000;
}

int outvalue = 0;
int freqs[] = {STARTUP, 320, 270, 200, 160, 80, 40, 19, END};
int reading = 0;
int state = 0;
int lastState = 0;
unsigned long lastDebounce = 0;
unsigned long debounceDelay = 50;

void loop() {
  reading = PINB & 0b00000001;
  if (reading != lastState)
    lastDebounce = millis();
  if (millis() - lastDebounce > debounceDelay) {
    if (reading != state) {
      state = reading;
      if (reading) {
       outvalue ++;
       if (outvalue > 8) 
          outvalue = 0;
   
       OCR1A = freqs[outvalue];
      }
    }    
  }
  lastState = reading; 
}
