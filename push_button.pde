// Push button example

#define LED 13
#define BUTTON 7

int val = 0;

int old_val = 0;

int state = 0; // 0=LED off while 1 = LED on

void setup() {
  pinMode(LED, OUTPUT);
  pinMode(BUTTON, INPUT);
}

void loop() {
  val = digitalRead(BUTTON);
  
  if ((val == HIGH) && (old_val == LOW)) {
    state = 1 - state;
  }
  
  old_val = val;
 
  if (state == 1 ) {
    digitalWrite(LED, HIGH);
  } else {
    digitalWrite(LED, LOW);
  }
}
