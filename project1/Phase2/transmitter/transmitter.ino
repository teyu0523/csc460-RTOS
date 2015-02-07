/*
 * Transmitter.pde
 *
 * Example of using NRF24L01 driver by Neil MacMillan in an Arduino plataform.
 *
 * Based on the examples by Neil MacMillan in http://nrqm.ca/nrf24l01/examples/
 *
 * Adapted by Miguel Moreto
 * Brazil, 2011.
 *
 * This example was tested in a Teensy 2.0 board (ATMEGA32U4) with teensyduino.
 *
 * Behavior:
 *  This sketch will wait transmit MESSAGE packet to the receiver (station_addr) at 
 *  a periodic rate (in this example is 1 second).
 * 	The Led will turn on right before the packet sending. It will turn off
 *  only after receiving the ACK packet from the remote station.
 *
 * Notes:
 *   You have to install the metro library in order to run this sketch as it is.
 *   If you don't want to use metro, you can replace it by another kind of timing check.
 *
 * IMPORTANT:
 *   Make sure you have the correct CE_PIN and CSN_PIN definitions in radio.cpp and
 *   also MISO, MOSI, SCK and SS pins in spi.cpp
 *   
 *   Copy nRF24L01.h, packet.h, radio.cpp, radio.h, spi.cpp and spi.h in the same
 *   folder of your sketch.
 *  
 *   You also have to replace the #include "../arduino/WProgram.h" in radio.cpp, spi.cpp
 *   by #include "WProgram.h".
 */
 
#include "Arduino.h"
#include "scheduler.h"
#include "packet.h"
#include "radio.h"
#include "cops_and_robbers.h"
//#include <Metro.h> // Include the Metro library to create a periodic task for sending messages.

//#define LED_PIN 13 // Change accordingly to your board.

// Slowing down the clock because the teensy board running on 3.3V (16MHz in this case is not recommended).
// If you power your board with 5V, comment the following lines.
#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz        0x01
#define HIGH_BYTE(x) x>>8
#define LOW_BYTE(x) x & 0x00FF 
 
volatile uint8_t rxflag = 0;
 

int joypinY = A1;
int joypinX = A2;

int buttonpin = A0;
int sensorValueButton = 0;

uint8_t station_addr[5] = {0xAA, 0xAA, 0xAA, 0xAA, 0xAA}; // Receiver address
uint8_t my_addr[5] = { 0x98, 0x76, 0x54, 0x32, 0x11 }; // Transmitter address

int16_t sensorValueX;
int16_t sensorValueY;

radiopacket_t packet;
radiopacket_t IRpacket;

//Metro DisplayMetro = Metro(500); // 1 second in 8MHz clock
 
void setup()
{
  //for (;;);
  //CPU_PRESCALE(CPU_8MHz);
  //Serial.begin(57600);
  Serial.begin(9600);
  pinMode(10, OUTPUT);
  digitalWrite(10, LOW);
  delay(100);
  digitalWrite(10, HIGH);
  //pinMode(LED_PIN, OUTPUT);
  Radio_Init();

  // configure the receive settings for radio pipe 0
  Radio_Configure_Rx(RADIO_PIPE_0, my_addr, ENABLE);
  // configure radio transceiver settings.
  Radio_Configure(RADIO_2MBPS, RADIO_HIGHEST_POWER);

  packet.type = COMMAND;
  IRpacket.type = IR_COMMAND;
  memcpy(packet.payload.command.sender_address, my_addr, RADIO_ADDRESS_LENGTH);
  Radio_Set_Tx_Addr(station_addr);
  pinMode(buttonpin, INPUT);
     
  Scheduler_Init();
     
  Scheduler_StartTask(0, 25, joyControl);
  Scheduler_StartTask(0, 50, joyButton);   
}

void joyControl(){
  sensorValueX = map(analogRead(joypinX), 0, 1023, -2, 2);
  sensorValueY = map(analogRead(joypinY), 0, 1023, -2, 2);
  if(sensorValueY == 0 && sensorValueX != 0) // Move straight command
  {
    if(sensorValueX > 0)
    {
      sensorValueX = map(sensorValueX, -2, 2, -250, 250);
      sensorValueY = 0x8000; // set straight rotation
    }
    else
    {
      sensorValueX = map(sensorValueX, -2, 2, -250, 250);
      sensorValueY = -0x8000; // set straight rotation for other direction
    }
  }
  else if(sensorValueY != 0 && sensorValueX == 0) // Rotate on spot command
  {
    if(sensorValueY > 0)
    {
      sensorValueX = map(sensorValueY, -2, 2, -250, 250); // set speed
      sensorValueY = -1; // set rotation
    }
    else
    {
      sensorValueX = map(-1*sensorValueY, -2, 2, -250, 250); // set speed
      sensorValueY = 1; // set rotation
    }
  }
  else  // calculate roughly 45 degree movement
  {
     if(sensorValueY > 0 && (sensorValueX > 0 || sensorValueX < 0))
     {
       // Calculate the speed in one direction
       if(sensorValueY > 0 && sensorValueX > 0)
       {
         if(sensorValueY > sensorValueX) // Check faster speed
         {
           sensorValueX = map(sensorValueY, -2, 2, -250, 250); // set speed
         }
         else
         {
           sensorValueX = map(sensorValueX, -2, 2, -250, 250); // set speed
         } 
       } 
       else // Calculate the speed in other direction
       {
        if(sensorValueY > -1*sensorValueX) 
        {
           sensorValueX = map(-1*sensorValueY, -2, 2, -250, 250); // set speed
        }
        else
        {
          sensorValueX = map(sensorValueX, -2, 2, -250, 250); // set speed
        }
       }
       sensorValueY = -600; // set rotation angle
     }
     else if(sensorValueY < 0 && (sensorValueX > 0 || sensorValueX < 0))
     {
       if(sensorValueY < 0 && sensorValueX < 0)
       {
         if(sensorValueY > sensorValueX)
         {
           sensorValueX = map(sensorValueX, -2, 2, -250, 250); // set speed
         }
         else
         {
           sensorValueX = map(sensorValueY, -2, 2, -250, 250); // set speed
         } 
       } 
       else
       {
        if(sensorValueY > -1*sensorValueX)
        {
           sensorValueX = map(sensorValueX, -2, 2, -250, 250); // set speed
        }
        else
        {
          sensorValueX = map(-1*sensorValueY, -2, 2, -250, 250); // set speed
        }
       }
       sensorValueY = 600; // set angle
     }   
  }
  // When sent, sensorValueX is speed
  // sesnorValueY is Rotation
  roombaControl(sensorValueX, sensorValueY);
}

void roombaControl(int16_t valSpeed, int16_t valRot)
{
  packet.type = COMMAND;
  memcpy(packet.payload.command.sender_address, my_addr, RADIO_ADDRESS_LENGTH);
  packet.payload.command.command = 137; // move opcode
  packet.payload.command.num_arg_bytes = 4;
  // set the four segment of high and low bytes of commands
  packet.payload.command.arguments[0] = HIGH_BYTE(valSpeed);
  packet.payload.command.arguments[1] = LOW_BYTE(valSpeed);
  packet.payload.command.arguments[2] = HIGH_BYTE(valRot);
  packet.payload.command.arguments[3] = LOW_BYTE(valRot);
  Radio_Transmit(&packet, RADIO_WAIT_FOR_TX) == RADIO_TX_MAX_RT; 
  // The rxflag is set by radio_rxhandler function below indicating that a
  // new packet is ready to be read.
  if (rxflag)
  {
     if (Radio_Receive(&packet) != RADIO_RX_MORE_PACKETS) // Receive packet.
     {
        // if there are no more packets on the radio, clear the receive flag;
        // otherwise, we want to handle the next packet on the next loop iteration.
        rxflag = 0;
     }
  }
}

void joyButton()
{
  sensorValueButton = analogRead(buttonpin);

  if(sensorValueButton < 20)
  {
    //Serial.println("SENDING");
    IRpacket.type = IR_COMMAND;
    memcpy(IRpacket.payload.ir_command.sender_address, my_addr, RADIO_ADDRESS_LENGTH);
    IRpacket.payload.ir_command.ir_command = SEND_BYTE;
    IRpacket.payload.ir_command.ir_data = 'A';
    
    Radio_Transmit(&IRpacket, RADIO_WAIT_FOR_TX) == RADIO_TX_MAX_RT;
    if (rxflag)
    {
      if (Radio_Receive(&packet) != RADIO_RX_MORE_PACKETS)
      {
        rxflag = 0;
      } 
    }
  }        
}

void idle(uint32_t idle_period)
{
 delay(idle_period); 
}

void loop()
{
  uint32_t idle_period = Scheduler_Dispatch();
  if (idle_period)
  {
    idle(idle_period);
  }    

}

// The radio_rxhandler is called by the radio IRQ pin interrupt routine when RX_DR is read in STATUS register.
void radio_rxhandler(uint8_t pipe_number)
{
rxflag = 1;
}

