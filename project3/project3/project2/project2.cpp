
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

int16_t   roomba_velocity = 240;
int16_t  roomba_rotation = 0;

#ifdef _USE_MAIN_

 #define COP_CODE (uint8_t)'B'
 #define ROBBER_CODE (uint8_t)'A'
SERVICE* radio_send_receive_service;
uint8_t roomba_state;
COPS_AND_ROBBERS roomba_identity = COP1;

roomba_sensor_data_t roomba_sensor_packet;

pf_gamestate_t current_game_state;

void ir_rxhandler(){
	uint8_t ir_value = IR_getLast();
	
	if (ir_value == COP_CODE){
		// if roomba is robber and not dead will result dead
		if((roomba_state & FORCED) == 0){
			if(roomba_identity >= ROBBER1 && (roomba_state & DEAD) == 0){
				roomba_state ^= DEAD;
				PORTH ^= (uint8_t)(_BV(PH3)); 		
				PORTH ^= (uint8_t)(_BV(PH4));
			} 
			// if roomba is cop and dead will result not dead
			else if (roomba_identity <= COP2 && (roomba_state & DEAD) > 0) {
				roomba_state ^= DEAD;
				PORTH ^= (uint8_t)(_BV(PH3)); 
				PORTH ^= (uint8_t)(_BV(PH4));
			}
		}		
	}else if (ir_value == ROBBER_CODE){
		if((roomba_state & FORCED) == 0){
			if(roomba_identity >= ROBBER1 && (roomba_state & DEAD) > 0){
				roomba_state ^= DEAD;
				PORTH ^= (uint8_t)(_BV(PH3)); 
				PORTH ^= (uint8_t)(_BV(PH4));
			} else if (roomba_identity <= COP2 && (roomba_state & DEAD) == 0) {
				roomba_state ^= DEAD;
				PORTH ^= (uint8_t)(_BV(PH3)); 
				PORTH ^= (uint8_t)(_BV(PH4));
			}
		}
		
	}		
}

void radio_rxhandler(uint8_t pipe_number){
	PORTE ^= (uint8_t)(_BV(PE3)); 
	Service_Publish(radio_send_receive_service, pipe_number);
	if((roomba_state&DEAD) == 0){
		PORTH &= ~(uint8_t)(_BV(PH4));
		PORTH |= (uint8_t)(_BV(PH3)); 
	} else if((roomba_state&DEAD) > 0) {
		PORTH |= (uint8_t)(_BV(PH4));
		PORTH &= ~(uint8_t)(_BV(PH3));
	}
}

void send_recieve_radio(){
	DDRB |= (_BV(PB7));
	PORTB = 0;
	RADIO_TX_STATUS radio_status_send;
	RADIO_RX_STATUS radio_status;
	radiopacket_t radio_packet;
	pf_roombastate_t pk_roomba_state;
	int16_t radio_receive_service_value;
	Radio_Set_Tx_Addr(BASE_ADDRESS);

	for(;;){
 
		Service_Subscribe(radio_send_receive_service, &radio_receive_service_value);
		// RADIO_RX_MORE_PACKETS: more packets exists (4 total at start)
		// RADIO_RX_SUCCESS: all packets have been read
		radio_status = Radio_Receive(&radio_packet);
		PORTE |= (uint8_t)(_BV(PE3)); 
		while(radio_status == RADIO_RX_MORE_PACKETS || radio_status == RADIO_RX_SUCCESS){
			uint8_t radio_roomba_state = radio_packet.payload.gamestate.roomba_states[roomba_identity];
			
			current_game_state = radio_packet.payload.gamestate;
			
			if(radio_packet.type != GAMESTATE_PACKET){
				break;		
			}
			if(radio_roomba_state != roomba_state){
				if((radio_roomba_state & FORCED) == 0){
					if((roomba_state & FORCED) > 0){
						roomba_state = radio_roomba_state; // transition from end game to start new game
					} else {
						pk_roomba_state.roomba_id = roomba_identity;
						pk_roomba_state.roomba_state = roomba_state;
						memcpy(&radio_packet.payload.roombastate, &pk_roomba_state, sizeof(pf_roombastate_t));
						radio_packet.type = ROOMBASTATE_PACKET;
						radio_status_send = Radio_Transmit(&radio_packet, RADIO_RETURN_ON_TX); // !!!!!!!!!!!! may need to change radio_status variable !!!!!!!!!!!!!!!!!!!!
						(void)radio_status_send; //Removed unused warning. :P
					}
				} else {
					roomba_state = radio_roomba_state;
				}
			}
			radio_status = Radio_Receive(&radio_packet);
		}
	}
}


void setup(){
	
	
	//setting LEDS for getting hit by ALIVE (PH3 - pin 6) and DEAD (PH4 - pin 7) 
	DDRH |= (uint8_t)(_BV(PH3)) | (uint8_t)(_BV(PH4));
	DDRE |= (uint8_t)(_BV(PE3));
	if((roomba_state&DEAD) == 0){
		PORTH |= (uint8_t)(_BV(PH3)); // alive
	} else if((roomba_state&DEAD) > 0) {
		PORTH |= (uint8_t)(_BV(PH4));
	}
	
	// radio setup
	DDRL |= (1 << PL2);
	PORTL &= ~(1 << PL2);
	_delay_ms(500);  /* max is 262.14 ms / F_CPU in MHz */
	PORTL |= 1 << PL2;
	_delay_ms(500);
	Radio_Init(BASE_FREQUENCY);
	// Configure the receive settings for radio pipe 0
	Radio_Configure_Rx(RADIO_PIPE_0, ROOMBA_ADDRESSES[roomba_identity], ENABLE);
	// Configure radio transceiver settings.
	Radio_Configure(RADIO_1MBPS, RADIO_HIGHEST_POWER);
	radio_send_receive_service = Service_Init();
	
	
	current_game_state.game_state = GAME_STARTING;
	
	
	Roomba_Init();
	IR_init();
}

void Send_Drive_Command(){
	for(;;) {
		
		switch(current_game_state.game_state){
			
			case GAME_STARTING:
				roomba_velocity = 0;
				roomba_rotation = 0;
				Roomba_Drive(roomba_velocity, roomba_rotation);
				Task_Next();
				break;
			
			case GAME_RUNNING:
				
				if((roomba_state & DEAD) == 0){ // If roomba alive
						Roomba_UpdateSensorPacket(CHASSIS, &roomba_sensor_packet); // updates the sensors in the roombas chassis
						Roomba_UpdateSensorPacket(EXTERNAL_ROOMBA, &roomba_sensor_packet); // updates the external sensors of the bot

						if(roomba_sensor_packet.bumps_wheeldrops & 0x1)
						{
							roomba_velocity = 100;
							roomba_rotation = 1;
						} else if (roomba_sensor_packet.bumps_wheeldrops & 0x2)
						{
							roomba_velocity = 100;
							roomba_rotation = -1;
						} else {
							roomba_velocity = 240;
							roomba_rotation = 0;
						}
						Roomba_Drive(roomba_velocity, roomba_rotation);
						Task_Next();
				}
				else if ((roomba_state&DEAD) > 0){
						roomba_velocity = 0;
						roomba_rotation = 0;
						Roomba_Drive(roomba_velocity, roomba_rotation);
						Task_Next();
				}
				break;
				
			case GAME_OVER:
				//roomba won and is alive - rotate
				if((roomba_state & DEAD) == 0){
					roomba_velocity = 240;
					roomba_rotation = -1;
					Roomba_Drive(roomba_velocity, roomba_rotation);
					Task_Next();	
				}
				else{
					roomba_velocity = 0;
					roomba_rotation = 0;
					Roomba_Drive(roomba_velocity, roomba_rotation);
					Task_Next();
				}
				break;
			
			default:
				break;
				
					
		}
		
	}
}

void send_IR_Command(){
	
	for(;;) {
		if((roomba_state & DEAD) == 0){
			if(roomba_identity <= COP2){
				IR_transmit(COP_CODE);
			} else if (roomba_identity >= ROBBER1){
				IR_transmit(ROBBER_CODE);
			}
		}
		Task_Next();
	}
}

int r_main(void)
{
	
	setup();
	Task_Create_System(send_recieve_radio, 0);
	Task_Create_Periodic(Send_Drive_Command,0,10,4,5);
	//Task_Create_Periodic(send_IR_Command,0,20,4,5);
	
	return 1;
}
#endif