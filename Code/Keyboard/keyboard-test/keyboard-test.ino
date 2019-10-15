#include <Key.h>
#include <Keypad.h>
#define MAX_ITEMS 10
#define Z80

void enqueue(int);
int dequeue(void);
int get_size(void);
bool is_full(void);
bool is_empty(void);

/* front: where we dequeue items
   rear: where we queue items */

int front = 0;
int rear = 0;
int sent = 0;

/* The queue is stored as an array
   This is a simple implementation */

int queue[MAX_ITEMS];

/* Number of items currently in the queue */

int items = 0;

int get_size(void) {
  return items;
}

bool is_empty(void) {
  return items == 0;
}

bool is_full() {
  return items == MAX_ITEMS;
}

void enqueue(int item) {
  if (!is_full()) {
    queue[rear++] = item;
    if (rear == MAX_ITEMS)
        rear = 0;
    items++;
  }
}

int dequeue(void) {
  int item;
  if (!is_empty()) {
    item = queue[front++];
    if (front == MAX_ITEMS)
        front = 0;
    items--;
    return item;
  }
  return -1;
}

const byte ROWS = 4; // Four rows
const byte COLS = 4; // Four columns


// Define the Keymap

char keys[ROWS][COLS] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'E','0','F','D'}
};
// Connect keypad ROW0, ROW1, ROW2 and ROW3 to these Arduino pins.
byte rowPins[ROWS] = { 8, 7, 6, 5 };
// Connect keypad COL0, COL1 and COL2 to these Arduino pins.
byte colPins[COLS] = { 12, 11, 10, 9 }; 

// Create the Keypad
Keypad kpd = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );
char key2;
//#define ledpin 13

void setup()
{
  pinMode (3, INPUT); // ~KBD_SEL
  pinMode (4, INPUT); // ~RD
  pinMode (13, OUTPUT); // BUFFFER FULL
  #ifndef Z80
  Serial.begin(9600);
  Serial.println("Keyboard start");
  #endif
}

void loop()
{
  char key = kpd.getKey();
  
  if(key) {
    enqueue(key);
    #ifndef Z80
    Serial.print("Incoming:");
    Serial.println(key);
    #endif
  } 
  
  if (is_full())
    digitalWrite(13, HIGH);
  else
    digitalWrite(13, LOW);
  
  if(digitalRead(3) == LOW && digitalRead(4) == LOW ) { // KBD_SEL & RD LOW
    if(!is_empty() && !sent)  {
      key2 = dequeue();
      #ifndef Z80
      Serial.print("Sending:");
      Serial.println(key2);
      #endif
      DDRF = B11111111;
      PORTF = key2;
      sent = 1;
      #ifndef Z80
        delay(1000);
      #endif 
    }
    if (sent) {
      DDRF = B11111111;
      PORTF = key2;
      sent = 1;
    } else if (is_empty()) {
      DDRF = B11111111;
      PORTF = 255;
    }
  } else {
      PORTF = 0;
      DDRF = B00000000;
      sent = 0;
  }
}                                                                                                                                                                              
