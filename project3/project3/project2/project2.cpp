
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>
#include "kernel.h"
#include "os.h"
#include "uart/uart.h"
#include "trace/trace.h"
#include "radio/radio.h"
#include "radio/packet.h"

#define USE_TEST_013

#include "tests/test0_now.cpp"
#include "tests/test1_system.cpp"
#include "tests/test2_rr.cpp"
#include "tests/test3_system_rr.cpp"
#include "tests/test4_periodic.cpp"
#include "tests/test5_periodic_two.cpp"
#include "tests/test6_periodic_complex.cpp"
#include "tests/test7_tasks_all.cpp"
#include "tests/test8_service_system.cpp"
#include "tests/test9_service_rr.cpp"
#include "tests/test10_service_system_multiple.cpp"
#include "tests/test11_service_system_rr.cpp"
#include "tests/test12_service_system_periodic.cpp"
#include "tests/test13_service_subscribe_error.cpp"
#include "tests/test14_service_periodic_error.cpp"


#ifdef _USE_MAIN_
EVENT* print_event;

/*void p()
{
	DDRB = 1 << PB7;
	int i;
	for(i=0;i<10;i++){
		add_to_trace(1);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		_delay_ms(20);
		//turns on/off the pin by xoring registor back and forth
		
		//PORTB ^= (uint8_t)(_BV(PB7) | _BV(PB6));
		add_to_trace(2);
		Task_Next();
	}
}*/

void ir_rxhandler() {

}

void handleIRPackets(){
	

}


void recieve_radio(){

}


void send_radio(){
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

int r_main(void)
{
	
	Task_Create_Periodic(send_radio().0.10,4.5);
	return 1;
}
#endif