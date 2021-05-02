#include <Keyboard.h> // Library allows for keyboard emulation
//These variable are commented out because I didn't end up using them. They're here for reference only.
//int button1 = 9;
//int button2 = 8;
//int button3 = 7;
//int button4 = 15;
//int button5 = 18;
//int button6 = 19;
//int button7 = 10;
//int button8 = 16;
//int button9 = 14;
//int button10 = 6; //encoder press
//int encoderA = 2; //CW
//int encoderB = 5; //CCW

volatile bool fired;
volatile bool up;

const byte encoderPinA = 2;
const byte encoderPinB = 5;

// Interrupt Service Routine for a change to encoder pin A
void isr ()
{
  if (digitalRead (encoderPinA))
    up = digitalRead (encoderPinB);
  else
    up = !digitalRead (encoderPinB);
  fired = true;
}  // end of isr

void setup() {
  // put your setup code here, to run once:
pinMode(9,INPUT_PULLUP); // Using the internal pullup resistor of the arduino
pinMode(8,INPUT_PULLUP);
pinMode(7,INPUT_PULLUP);
pinMode(15,INPUT_PULLUP);
pinMode(18,INPUT_PULLUP);
pinMode(19,INPUT_PULLUP);
pinMode(10,INPUT_PULLUP);
pinMode(16,INPUT_PULLUP);
pinMode(14,INPUT_PULLUP);
pinMode(6,INPUT_PULLUP);

  pinMode (encoderPinA, INPUT_PULLUP);     // enable pull-ups
  pinMode (encoderPinB, INPUT_PULLUP); 
  attachInterrupt (digitalPinToInterrupt (encoderPinA), isr, CHANGE);   // interrupt 0 is pin 2
  Serial.begin (115200);
  
Keyboard.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  //____________________________________________BUTTON ARRAY (kinda)____________________________
if (digitalRead(9) == LOW){ // If the voltage across pin 9 drops, do the following:
  delay(500); 
  Keyboard.press(KEY_F13); // Virtually hold down the F13 key
  //delay(100); 
  Keyboard.releaseAll(); // Immediately release ALL keys
  }
if (digitalRead(8) == LOW){
  delay(500); // These delays are meant to keep the arduino from spamming keystrokes
  Keyboard.press(KEY_F14);
  //delay(100); // Old delay commands... they didn't work
  Keyboard.releaseAll();
  }
if (digitalRead(7) == LOW){
  delay(500);
  Keyboard.press(KEY_F15);
  //delay(100);
  Keyboard.releaseAll();
  }
if (digitalRead(15) == LOW){
  delay(500);
  Keyboard.press(KEY_F16);
  //delay(100);
  Keyboard.releaseAll();
  }
if (digitalRead(18) == LOW){
  delay(500);
  Keyboard.press(KEY_F17);
  //delay(100);
  Keyboard.releaseAll();
  }
if (digitalRead(19) == LOW){
  delay(500);
  Keyboard.press(KEY_F18);
  //delay(100);
  Keyboard.releaseAll();
  }
if (digitalRead(10) == LOW){
  delay(500);
  Keyboard.press(KEY_F19);
  //delay(100);
  Keyboard.releaseAll();
  }
if (digitalRead(16) == LOW){
  delay(500);
  Keyboard.press(KEY_F20);
  //delay(100);
  Keyboard.releaseAll();
  }
if (digitalRead(14) == LOW){
  delay(500);
  Keyboard.press(KEY_F21);
  //delay(100);
  Keyboard.releaseAll();
  }
//____________________________ENCODER_________________________
if (digitalRead(6) == LOW){
  delay(500);
  Keyboard.press(KEY_F22);
  //delay(100);
  Keyboard.releaseAll();
  }
//static long rotaryCount = 0;

  if (fired)
    {
    if (up == true) {
//      rotaryCount++;
      Keyboard.press(KEY_F23);
      Keyboard.releaseAll();
    fired = false;
    }
    else {
//      rotaryCount--;
      Keyboard.press(KEY_F24);
      Keyboard.releaseAll();
    fired = false;
    }
//    Serial.print ("Count = ");  
//    Serial.println (rotaryCount);
    }


  
}
