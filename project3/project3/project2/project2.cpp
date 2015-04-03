
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"
#include "uart/uart.h"
#include "trace/trace.h"
#include "radio/radio.h"
#include "radio/packet.h"
#include "radio/cops_and_robbers.h"
#include "roomba/roomba.h"
#include "roomba/roomba_sci.h"
#include "roomba/sensor_struct.h"
#include "ir/ir.h"


#define _USE_MAIN_



#ifdef _USE_MAIN_

 #define COP_CODE (uint8_t)'B'
 #define ROBBER_CODE (uint8_t)'A'


void radio_rxhandler(uint8_t pipenumber) {
	
}

void ir_rxhandler(){
	uint8_t ir_value = IR_getLast();
	
	
	if (ir_value == COP_CODE){
		
		PORTH = (uint8_t)(_BV(PH3)); 
		
	}else if (ir_value == ROBBER_CODE){
	
		PORTH = (uint8_t)(_BV(PH4));
	}	
	
	
}


//void send_radio(){
	//IRpacket.type = IR_COMMAND;
	//memcpy(IRpacket.payload.ir_command.sender_address, my_addr, RADIO_ADDRESS_LENGTH);
	//IRpacket.payload.ir_command.ir_command = SEND_BYTE;
	//IRpacket.payload.ir_command.ir_data = 'A';
	//Radio_Transmit(&IRpacket, RADIO_WAIT_FOR_TX) == RADIO_TX_MAX_RT;
	//if (rxflag)
	//{
		//if (Radio_Receive(&packet) != RADIO_RX_MORE_PACKETS)
		//{
			//rxflag = 0;
		//} 
	//}
//}

void setup(){
	
	
	//setting LEDS for getting hit by TEAM (PH3 - pin 6) and ENEMY (PH4 - pin 7) 
	DDRH = (uint8_t)(_BV(PH3)) | (uint8_t)(_BV(PH4));
	
	
	
	Roomba_Init();
	IR_init();
}

void Send_Drive_Command(){
	for(;;) {
		Roomba_Drive(240,0);
		Task_Next();
	}
}

void send_IR_Command(){
	
	for(;;) {
		IR_transmit(COP_CODE);
		Task_Next();
	}
}

int r_main(void)
{
	
	setup();
	Task_Create_Periodic(send_IR_Command,0,10,4,5);
	
	return 1;
}
#endif