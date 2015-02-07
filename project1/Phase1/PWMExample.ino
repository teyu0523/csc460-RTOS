//#include <Servo.h>
int servopin = 9;
int buttonpin = A1;
int joypin = A0;
int pulse = 1500;
int buttonpressed;
int array[10];
int position = 0;
int sensorValueButton = 0;
int sensorValueX = 0;
int defaultValue = 90;
int valtemp = 1500;
int done = 1;

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600); 
  buttonpressed = 1;
  pinMode(13, OUTPUT);
  pinMode(servopin, OUTPUT); // servo
  pinMode(7, INPUT);
  
  //Clear timer config.
  TCCR3A = 0;
  TCCR3B = 0;  
  //Set to CTC (mode 4)
  TCCR3B |= (1<<WGM32);
  
  //Set prescaler to 1
  TCCR3B |= (1<<CS30);
  
  //Set TOP value (500 micro seconds)
  OCR3A = 8000;
  
  //Enable interupt A for timer 3.
  TIMSK3 |= (1<<OCIE3A);
  
  //Set timer to 0 (optional here).
  TCNT3 = 0;
  
  //=======================
  
  //PWM  
  //Clear timer config
  TCCR1A = 0;
  TCCR1B = 0;
  TIMSK1 &= ~(1<<OCIE1C);
  //Set to Fast PWM (mode 15)
  TCCR1A |= (1<<WGM10) | (1<<WGM11);
  TCCR1B |= (1<<WGM12) | (1<<WGM13);
  	
  //Enable output C.
  //TCCR1A |= (1<<COM1C1);

  //No prescaler
  TCCR1B |= (1<<CS10);
  
  OCR1A = 421; 
  OCR1C = 0;  //Target
  
  // D
  array[0] = 1;
  array[1] = 0;
  array[2] = 0;
  array[3] = 0;
  array[4] = 1;
  array[5] = 0;
  array[6] = 0;
  array[7] = 0;
  array[8] = 1;
  array[9] = 0;
}

ISR(TIMER3_COMPA_vect)
{
     
  if(buttonpressed==0 && done == 1)
  {
    if(position == 10)
    {
      position = 0;
      buttonpressed = 1;
      done = 0;
      TCCR1A &= ~(1<<COM1C1);
      OCR1C = 141;
    }
    else 
    {
      if(array[position] == 0){
        TCCR1A &= ~(1<<COM1C1);
      }
      else{
        TCCR1A |= (1<<COM1C1);
        OCR1C = 141;
      }
      position++;
    }
  }
}

/**
 * Control servo movement to be incremental.
 * When moving the joystick in one direction
 * it will add onto pulse untill until the 
 * released. When released, the angle will 
 * stay.
 */
void servoControl(){
  sensorValueX = analogRead(joypin);
  sensorValueX = map(sensorValueX, 0, 1023, 500, 2500);
  if(sensorValueX > 1600)
  {
    valtemp = valtemp + (30);
    if(valtemp > 2400)
    {
       valtemp = 2400; 
    }
  } 
  else if(sensorValueX < 1400)
  {
    valtemp = valtemp - (30);
    if(valtemp < 600)
    {
      valtemp = 600;
    }
  }
  digitalWrite(servopin, HIGH);
  delayMicroseconds(valtemp);
  digitalWrite(servopin, LOW);
  delay(20);   
}

void loop() {
  sensorValueButton = analogRead(buttonpin);
  if(sensorValueButton < 20 && buttonpressed == 1 && done == 1)
  {
    buttonpressed=0;
  }
  if(sensorValueButton > 300 && done == 0 )
  {
    done = 1;
  }
  servoControl();
}
