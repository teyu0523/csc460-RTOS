
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"
#include "uart/uart.h"
#include "trace/trace.h"
#include "radio/radio.h"
#include "radio/packet.h"
#include "roomba/roomba.h"
#include "roomba/roomba_sci.h"
#include "roomba/sensor_struct.h"


#define _USE_MAIN_



#ifdef _USE_MAIN_


void radio_rxhandler(uint8_t pipenumber) {
	
}

//Handle expected IR values, record unexpected values to pass on via radio.
//	(Get Roomba state via state packets)
void ir_rxhandler() {
	
}

void handleRoombaPacket(radiopacket_t *packet) {
	
}

void handleIRPacket(radiopacket_t *packet) {
	
	
}

void rr_roomba_controler() {
	
}


//Check if the Roomba has been idle long enough to
//	put it to sleep. This timer is reset every time a
//	packet arrives.
void per_roomba_timeout() {
	
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
	Roomba_Init();
}

void Send_Drive_Command(){
	for(;;) {
		Roomba_Drive(240,0);
		Task_Next();
	}
}

int r_main(void)
{
	
	setup();
	Task_Create_Periodic(Send_Drive_Command,0,10,4,5);
	
	return 1;
}
#endif