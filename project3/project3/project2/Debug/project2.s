	.file	"project2.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z18send_recieve_radiov,"ax",@progbits
.global	_Z18send_recieve_radiov
	.type	_Z18send_recieve_radiov, @function
_Z18send_recieve_radiov:
.LFB96:
	.file 1 ".././project2.cpp"
	.loc 1 83 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI2:
	.cfi_def_cfa_register 28
	sbiw r28,34
.LCFI3:
	.cfi_def_cfa_offset 39
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 34 */
/* stack size = 36 */
.L__stack_usage = 36
.LBB8:
	.loc 1 84 0
	sbi 0x4,7
	.loc 1 85 0
	out 0x5,__zero_reg__
	.loc 1 91 0
	ldi r24,lo8(BASE_ADDRESS)
	ldi r25,hi8(BASE_ADDRESS)
	call _Z17Radio_Set_Tx_AddrPh
.LVL0:
.LBB9:
.LBB10:
	.loc 1 103 0
	ldi r17,lo8(5)
	.loc 1 116 0
	ldi r16,lo8(1)
.L9:
.LBE10:
	.loc 1 95 0
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	lds r24,radio_send_receive_service
	lds r25,radio_send_receive_service+1
	call Service_Subscribe
.LVL1:
	.loc 1 98 0
	movw r24,r28
	adiw r24,1
	call _Z13Radio_ReceiveP3_rp
.LVL2:
	.loc 1 99 0
	sbi 0xe,3
.L2:
	.loc 1 100 0 discriminator 1
	subi r24,lo8(-(-3))
.LVL3:
	cpi r24,lo8(2)
	brsh .L9
.LBB11:
	.loc 1 101 0
	lds r18,roomba_identity
	ldi r30,lo8(5)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r18
	adc r31,__zero_reg__
	ld r24,Z
.LVL4:
	.loc 1 103 0
	movw r30,r28
	adiw r30,4
	ldi r26,lo8(current_game_state)
	ldi r27,hi8(current_game_state)
	mov r25,r17
	0:
	ld r0,Z+
	st X+,r0
	dec r25
	brne 0b
	.loc 1 105 0
	ldd r25,Y+1
	cpse r25,__zero_reg__
	rjmp .L9
	.loc 1 108 0
	lds r25,roomba_state
	cp r24,r25
	breq .L5
	.loc 1 109 0
	sbrc r24,1
	rjmp .L6
	.loc 1 110 0
	sbrc r25,1
	rjmp .L6
.LVL5:
	.loc 1 115 0
	std Y+4,r18
	std Y+5,r25
	.loc 1 116 0
	std Y+1,r16
	.loc 1 117 0
	ldi r22,lo8(1)
	movw r24,r28
.LVL6:
	adiw r24,1
	call _Z14Radio_TransmitP3_rp14_radio_tx_wait
.LVL7:
	rjmp .L5
.LVL8:
.L6:
	.loc 1 121 0
	sts roomba_state,r24
.LVL9:
.L5:
	.loc 1 124 0
	movw r24,r28
	adiw r24,1
	call _Z13Radio_ReceiveP3_rp
.LVL10:
	rjmp .L2
.LBE11:
.LBE9:
.LBE8:
	.cfi_endproc
.LFE96:
	.size	_Z18send_recieve_radiov, .-_Z18send_recieve_radiov
	.section	.text._Z18Send_Drive_Commandv,"ax",@progbits
.global	_Z18Send_Drive_Commandv
	.type	_Z18Send_Drive_Commandv, @function
_Z18Send_Drive_Commandv:
.LFB98:
	.loc 1 163 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 193 0
	ldi r28,lo8(-16)
	ldi r29,0
	.loc 1 194 0
	ldi r16,lo8(100)
	ldi r17,0
	.loc 1 199 0
	ldi r24,lo8(-100)
	mov r12,r24
	clr r13
	dec r13
	.loc 1 189 0
	clr r14
	dec r14
	mov r15,r14
	.loc 1 185 0
	clr r10
	inc r10
	mov r11,__zero_reg__
.L12:
	.loc 1 166 0
	lds r24,current_game_state
.L17:
	cpi r24,lo8(1)
	breq .L14
	brsh .+2
	rjmp .L19
	cpi r24,lo8(2)
	brne .+2
	rjmp .L16
	rjmp .L17
.L14:
	.loc 1 177 0
	lds r24,roomba_state
	sbrc r24,0
	rjmp .L19
	.loc 1 179 0
	ldi r22,lo8(roomba_bumper_sensor_packet)
	ldi r23,hi8(roomba_bumper_sensor_packet)
	ldi r24,lo8(1)
	call _Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t
.LVL11:
	.loc 1 180 0
	ldi r22,lo8(roomba_light_sensor_packet)
	ldi r23,hi8(roomba_light_sensor_packet)
	ldi r24,lo8(101)
	call _Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t
.LVL12:
	.loc 1 182 0
	lds r24,roomba_bumper_sensor_packet
	sbrs r24,0
	rjmp .L20
	.loc 1 184 0
	sts roomba_velocity+1,r17
	sts roomba_velocity,r16
	.loc 1 185 0
	sts roomba_rotation+1,r11
	sts roomba_rotation,r10
	rjmp .L21
.L20:
	.loc 1 186 0
	sbrs r24,1
	rjmp .L22
	.loc 1 188 0
	sts roomba_velocity+1,r17
	sts roomba_velocity,r16
	.loc 1 189 0
	sts roomba_rotation+1,r15
	sts roomba_rotation,r14
	rjmp .L21
.L22:
	.loc 1 192 0
	lds r24,roomba_light_sensor_packet+30
	sbrc r24,0
	rjmp .L23
	.loc 1 192 0 is_stmt 0 discriminator 1
	mov r25,r24
	andi r25,lo8(3)
	breq .L24
.L23:
	.loc 1 193 0 is_stmt 1
	sts roomba_velocity+1,r29
	sts roomba_velocity,r28
	.loc 1 194 0
	sts roomba_rotation+1,r17
	sts roomba_rotation,r16
	rjmp .L21
.L24:
	.loc 1 197 0
	mov r25,r24
	andi r25,lo8(6)
	.loc 1 198 0
	sts roomba_velocity+1,r29
	sts roomba_velocity,r28
	.loc 1 197 0
	cpse r25,__zero_reg__
	rjmp .L25
	.loc 1 197 0 is_stmt 0 discriminator 1
	andi r24,lo8(5)
	breq .L26
.L25:
	.loc 1 199 0 is_stmt 1
	sts roomba_rotation+1,r13
	sts roomba_rotation,r12
	rjmp .L21
.L26:
	.loc 1 203 0
	sts roomba_rotation+1,__zero_reg__
	sts roomba_rotation,__zero_reg__
.L21:
	.loc 1 205 0 discriminator 1
	lds r22,roomba_rotation
	lds r23,roomba_rotation+1
	lds r24,roomba_velocity
	lds r25,roomba_velocity+1
	rjmp .L27
.L19:
	.loc 1 209 0
	sts roomba_velocity+1,__zero_reg__
	sts roomba_velocity,__zero_reg__
	.loc 1 210 0
	sts roomba_rotation+1,__zero_reg__
	sts roomba_rotation,__zero_reg__
	.loc 1 211 0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L27
.L16:
	.loc 1 218 0
	lds r24,roomba_state
	sbrc r24,0
	rjmp .L19
	.loc 1 219 0
	sts roomba_velocity+1,r29
	sts roomba_velocity,r28
	.loc 1 220 0
	sts roomba_rotation+1,r15
	sts roomba_rotation,r14
	.loc 1 221 0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	ldi r24,lo8(-16)
	ldi r25,0
.L27:
	call _Z12Roomba_Driveii
.LVL13:
	.loc 1 222 0
	call Task_Next
.LVL14:
	rjmp .L12
	.cfi_endproc
.LFE98:
	.size	_Z18Send_Drive_Commandv, .-_Z18Send_Drive_Commandv
	.section	.text._Z15send_IR_Commandv,"ax",@progbits
.global	_Z15send_IR_Commandv
	.type	_Z15send_IR_Commandv, @function
_Z15send_IR_Commandv:
.LFB99:
	.loc 1 242 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L31:
	.loc 1 245 0
	lds r24,roomba_state
	sbrc r24,0
	rjmp .L29
	.loc 1 246 0
	lds r24,roomba_identity
	cpi r24,lo8(2)
	brsh .L30
	.loc 1 247 0
	ldi r24,lo8(66)
	rjmp .L32
.L30:
	.loc 1 249 0
	ldi r24,lo8(65)
.L32:
	call _Z11IR_transmith
.LVL15:
.L29:
	.loc 1 252 0
	call Task_Next
.LVL16:
	.loc 1 242 0
	rjmp .L31
	.cfi_endproc
.LFE99:
	.size	_Z15send_IR_Commandv, .-_Z15send_IR_Commandv
	.section	.text._Z12ir_rxhandlerv,"ax",@progbits
.global	_Z12ir_rxhandlerv
	.type	_Z12ir_rxhandlerv, @function
_Z12ir_rxhandlerv:
.LFB94:
	.loc 1 37 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB12:
	.loc 1 38 0
	call _Z10IR_getLastv
.LVL17:
	.loc 1 40 0
	cpi r24,lo8(66)
	brne .L34
	.loc 1 42 0
	lds r24,roomba_state
.LVL18:
	sbrc r24,1
	rjmp .L33
	.loc 1 43 0
	lds r18,roomba_identity
	mov r25,r24
	andi r25,lo8(1)
	cpi r18,lo8(2)
	brsh .L37
	rjmp .L43
.LVL19:
.L34:
	.loc 1 55 0
	cpi r24,lo8(65)
	brne .L33
	.loc 1 56 0
	lds r24,roomba_state
.LVL20:
	sbrc r24,1
	rjmp .L33
	.loc 1 57 0
	lds r18,roomba_identity
	mov r25,r24
	andi r25,lo8(1)
	cpi r18,lo8(2)
	brlo .L37
.L43:
	.loc 1 57 0 is_stmt 0 discriminator 1
	cpi r25,lo8(1)
	brne .L33
	.loc 1 58 0 is_stmt 1
	eor r24,r25
	sts roomba_state,r24
	rjmp .L39
.L37:
	.loc 1 61 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L33
	.loc 1 62 0
	ldi r25,lo8(1)
	eor r25,r24
	sts roomba_state,r25
.L39:
	.loc 1 63 0
	lds r24,258
	ldi r25,lo8(8)
	eor r24,r25
	sts 258,r24
	.loc 1 64 0
	lds r24,258
	ldi r25,lo8(16)
	eor r24,r25
	sts 258,r24
.L33:
	ret
.LBE12:
	.cfi_endproc
.LFE94:
	.size	_Z12ir_rxhandlerv, .-_Z12ir_rxhandlerv
	.section	.text._Z15radio_rxhandlerh,"ax",@progbits
.global	_Z15radio_rxhandlerh
	.type	_Z15radio_rxhandlerh, @function
_Z15radio_rxhandlerh:
.LFB95:
	.loc 1 71 0
	.cfi_startproc
.LVL21:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 72 0
	in r25,0xe
	ldi r18,lo8(8)
	eor r25,r18
	out 0xe,r25
	.loc 1 73 0
	mov r22,r24
	ldi r23,0
	lds r24,radio_send_receive_service
	lds r25,radio_send_receive_service+1
.LVL22:
	call Service_Publish
.LVL23:
	.loc 1 74 0
	lds r24,roomba_state
	sbrc r24,0
	rjmp .L45
	.loc 1 75 0
	lds r24,258
	andi r24,lo8(-17)
	sts 258,r24
	.loc 1 76 0
	lds r24,258
	ori r24,lo8(8)
	rjmp .L47
.L45:
	.loc 1 78 0
	lds r24,258
	ori r24,lo8(16)
	sts 258,r24
	.loc 1 79 0
	lds r24,258
	andi r24,lo8(-9)
.L47:
	sts 258,r24
	ret
	.cfi_endproc
.LFE95:
	.size	_Z15radio_rxhandlerh, .-_Z15radio_rxhandlerh
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
.LFB97:
	.loc 1 130 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 134 0
	lds r24,257
	ori r24,lo8(24)
	sts 257,r24
	.loc 1 135 0
	sbi 0xd,3
	.loc 1 136 0
	lds r24,roomba_state
	sbrc r24,0
	rjmp .L49
	.loc 1 137 0
	lds r24,258
	ori r24,lo8(8)
	rjmp .L51
.L49:
	.loc 1 139 0
	lds r24,258
	ori r24,lo8(16)
.L51:
	sts 258,r24
	.loc 1 143 0
	lds r24,266
	ori r24,lo8(4)
	sts 266,r24
	.loc 1 144 0
	lds r24,267
	andi r24,lo8(-5)
	sts 267,r24
.LVL24:
.LBB13:
.LBB14:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE14:
.LBE13:
	.loc 1 146 0
	lds r24,267
	ori r24,lo8(4)
	sts 267,r24
.LVL25:
.LBB15:
.LBB16:
	.loc 2 163 0
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE16:
.LBE15:
	.loc 1 148 0
	lds r24,BASE_FREQUENCY
	call _Z10Radio_Inith
.LVL26:
	.loc 1 150 0
	lds r22,roomba_identity
	ldi r18,lo8(5)
	mul r22,r18
	movw r22,r0
	clr __zero_reg__
	subi r22,lo8(-(ROOMBA_ADDRESSES))
	sbci r23,hi8(-(ROOMBA_ADDRESSES))
	ldi r20,lo8(1)
	ldi r24,0
	call _Z18Radio_Configure_Rx11_radio_pipePh3_ed
.LVL27:
	.loc 1 152 0
	ldi r22,lo8(3)
	ldi r24,0
	call _Z15Radio_Configure9_radio_dr15_radio_tx_power
.LVL28:
	.loc 1 153 0
	call Service_Init
.LVL29:
	sts radio_send_receive_service+1,r25
	sts radio_send_receive_service,r24
	.loc 1 156 0
	sts current_game_state,__zero_reg__
	.loc 1 159 0
	call _Z11Roomba_Initv
.LVL30:
	.loc 1 160 0
	jmp _Z7IR_initv
.LVL31:
	.cfi_endproc
.LFE97:
	.size	setup, .-setup
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB100:
	.loc 1 257 0
	.cfi_startproc
	push r16
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 259 0
	call setup
.LVL32:
	.loc 1 260 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z18send_recieve_radiov))
	ldi r25,hi8(gs(_Z18send_recieve_radiov))
	call Task_Create_System
.LVL33:
	.loc 1 262 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z18Send_Drive_Commandv))
	ldi r25,hi8(gs(_Z18Send_Drive_Commandv))
	call Task_Create_RR
.LVL34:
	.loc 1 265 0
	ldi r16,lo8(5)
	ldi r17,0
	ldi r18,lo8(4)
	ldi r19,0
	ldi r20,lo8(100)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z15send_IR_Commandv))
	ldi r25,hi8(gs(_Z15send_IR_Commandv))
	call Task_Create_Periodic
.LVL35:
	.loc 1 268 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE100:
	.size	_Z6r_mainv, .-_Z6r_mainv
.global	current_game_state
	.section	.bss.current_game_state,"aw",@nobits
	.type	current_game_state, @object
	.size	current_game_state, 5
current_game_state:
	.zero	5
.global	roomba_light_sensor_packet
	.section	.bss.roomba_light_sensor_packet,"aw",@nobits
	.type	roomba_light_sensor_packet, @object
	.size	roomba_light_sensor_packet, 51
roomba_light_sensor_packet:
	.zero	51
.global	roomba_bumper_sensor_packet
	.section	.bss.roomba_bumper_sensor_packet,"aw",@nobits
	.type	roomba_bumper_sensor_packet, @object
	.size	roomba_bumper_sensor_packet, 51
roomba_bumper_sensor_packet:
	.zero	51
.global	roomba_identity
	.section	.bss.roomba_identity,"aw",@nobits
	.type	roomba_identity, @object
	.size	roomba_identity, 1
roomba_identity:
	.zero	1
.global	roomba_state
	.section	.bss.roomba_state,"aw",@nobits
	.type	roomba_state, @object
	.size	roomba_state, 1
roomba_state:
	.zero	1
.global	radio_send_receive_service
	.section	.bss.radio_send_receive_service,"aw",@nobits
	.type	radio_send_receive_service, @object
	.size	radio_send_receive_service, 2
radio_send_receive_service:
	.zero	2
.global	roomba_rotation
	.section	.bss.roomba_rotation,"aw",@nobits
	.type	roomba_rotation, @object
	.size	roomba_rotation, 2
roomba_rotation:
	.zero	2
.global	roomba_velocity
	.section	.data.roomba_velocity,"aw",@progbits
	.type	roomba_velocity, @object
	.size	roomba_velocity, 2
roomba_velocity:
	.word	240
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././os.h"
	.file 5 ".././kernel.h"
	.file 6 ".././radio/cops_and_robbers.h"
	.file 7 ".././radio/packet.h"
	.file 8 ".././radio/radio.h"
	.file 9 ".././roomba/sensor_struct.h"
	.file 10 ".././roomba/roomba.h"
	.file 11 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 12 ".././ir/ir.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf42
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF218
	.byte	0x4
	.long	.LASF219
	.long	.LASF220
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x3
	.byte	0x7c
	.long	0x6a
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x7e
	.long	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0xe0
	.long	0xb8
	.uleb128 0x5
	.long	.LASF26
	.byte	0x10
	.byte	0x5
	.byte	0xa3
	.long	0xfd
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0xa4
	.long	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0xa5
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.byte	0xa6
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0xa7
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x103
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x36
	.long	.LASF221
	.long	0x129
	.uleb128 0xa
	.long	.LASF20
	.sleb128 0
	.uleb128 0xa
	.long	.LASF21
	.sleb128 1
	.uleb128 0xa
	.long	.LASF22
	.sleb128 2
	.uleb128 0xa
	.long	.LASF23
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0x3c
	.long	0x104
	.uleb128 0x2
	.long	.LASF25
	.byte	0x5
	.byte	0x6b
	.long	0x13f
	.uleb128 0xb
	.long	.LASF27
	.word	0x114
	.byte	0x5
	.byte	0x6f
	.long	0x1ff
	.uleb128 0x6
	.long	.LASF28
	.byte	0x5
	.byte	0x72
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"sp"
	.byte	0x5
	.byte	0x74
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0x76
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0x79
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0x7c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0x6
	.long	.LASF31
	.byte	0x5
	.byte	0x7f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x82
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0x85
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"arg"
	.byte	0x5
	.byte	0x87
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0x6
	.long	.LASF34
	.byte	0x5
	.byte	0x89
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x8b
	.long	0x221
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.byte	0x8d
	.long	0x221
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x20f
	.uleb128 0xe
	.long	0x20f
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF37
	.uleb128 0xf
	.long	0x21b
	.uleb128 0x7
	.byte	0x2
	.long	0x3b
	.uleb128 0x7
	.byte	0x2
	.long	0x134
	.uleb128 0xd
	.long	0x221
	.long	0x237
	.uleb128 0xe
	.long	0x20f
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x247
	.long	0x247
	.uleb128 0xe
	.long	0x20f
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4d
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.long	0x26c
	.uleb128 0xa
	.long	.LASF38
	.sleb128 0
	.uleb128 0xa
	.long	.LASF39
	.sleb128 1
	.uleb128 0xa
	.long	.LASF40
	.sleb128 2
	.byte	0
	.uleb128 0x10
	.long	.LASF42
	.byte	0x1
	.byte	0x6
	.byte	0x17
	.long	0x291
	.uleb128 0xa
	.long	.LASF43
	.sleb128 0
	.uleb128 0xa
	.long	.LASF44
	.sleb128 1
	.uleb128 0xa
	.long	.LASF45
	.sleb128 2
	.uleb128 0xa
	.long	.LASF46
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x6
	.byte	0x1c
	.long	0x26c
	.uleb128 0x5
	.long	.LASF48
	.byte	0x5
	.byte	0x6
	.byte	0x23
	.long	0x2c5
	.uleb128 0x6
	.long	.LASF49
	.byte	0x6
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x6
	.byte	0x26
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x2d5
	.uleb128 0xe
	.long	0x20f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x27
	.long	0x29c
	.uleb128 0x5
	.long	.LASF52
	.byte	0x2
	.byte	0x6
	.byte	0x2a
	.long	0x309
	.uleb128 0x6
	.long	.LASF53
	.byte	0x6
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF54
	.byte	0x6
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x2e
	.long	0x2e0
	.uleb128 0x11
	.string	"_pt"
	.byte	0x1
	.byte	0x7
	.byte	0x13
	.long	0x333
	.uleb128 0xa
	.long	.LASF56
	.sleb128 0
	.uleb128 0xa
	.long	.LASF57
	.sleb128 1
	.uleb128 0xa
	.long	.LASF58
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.long	.LASF59
	.byte	0x1d
	.byte	0x7
	.byte	0x1e
	.long	0x35c
	.uleb128 0x6
	.long	.LASF60
	.byte	0x7
	.byte	0x20
	.long	0x35c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF61
	.byte	0x7
	.byte	0x21
	.long	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x36c
	.uleb128 0xe
	.long	0x20f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x37c
	.uleb128 0xe
	.long	0x20f
	.byte	0x17
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x22
	.long	0x333
	.uleb128 0x12
	.string	"_pf"
	.byte	0x1d
	.byte	0x7
	.byte	0x29
	.long	0x3c0
	.uleb128 0x13
	.long	.LASF63
	.byte	0x7
	.byte	0x2b
	.long	0x3c0
	.uleb128 0x13
	.long	.LASF64
	.byte	0x7
	.byte	0x2c
	.long	0x2d5
	.uleb128 0x13
	.long	.LASF65
	.byte	0x7
	.byte	0x2d
	.long	0x309
	.uleb128 0x13
	.long	.LASF66
	.byte	0x7
	.byte	0x2e
	.long	0x37c
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x3d0
	.uleb128 0xe
	.long	0x20f
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.byte	0x2f
	.long	0x387
	.uleb128 0x14
	.string	"_rp"
	.byte	0x20
	.byte	0x7
	.byte	0x33
	.long	0x412
	.uleb128 0x6
	.long	.LASF68
	.byte	0x7
	.byte	0x35
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF69
	.byte	0x7
	.byte	0x36
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF70
	.byte	0x7
	.byte	0x37
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x7
	.byte	0x38
	.long	0x3db
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x8
	.byte	0x1d
	.long	0x454
	.uleb128 0xa
	.long	.LASF73
	.sleb128 0
	.uleb128 0xa
	.long	.LASF74
	.sleb128 1
	.uleb128 0xa
	.long	.LASF75
	.sleb128 2
	.uleb128 0xa
	.long	.LASF76
	.sleb128 3
	.uleb128 0xa
	.long	.LASF77
	.sleb128 4
	.uleb128 0xa
	.long	.LASF78
	.sleb128 5
	.uleb128 0xa
	.long	.LASF79
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x8
	.byte	0x25
	.long	0x41d
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.byte	0x8
	.byte	0x27
	.long	0x484
	.uleb128 0xa
	.long	.LASF82
	.sleb128 0
	.uleb128 0xa
	.long	.LASF83
	.sleb128 1
	.uleb128 0xa
	.long	.LASF84
	.sleb128 2
	.uleb128 0xa
	.long	.LASF85
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x8
	.byte	0x2c
	.long	0x45f
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.byte	0x8
	.byte	0x2e
	.long	0x4a8
	.uleb128 0xa
	.long	.LASF88
	.sleb128 0
	.uleb128 0xa
	.long	.LASF89
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF90
	.byte	0x8
	.byte	0x31
	.long	0x48f
	.uleb128 0x10
	.long	.LASF91
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.long	0x4de
	.uleb128 0xa
	.long	.LASF92
	.sleb128 0
	.uleb128 0xa
	.long	.LASF93
	.sleb128 1
	.uleb128 0xa
	.long	.LASF94
	.sleb128 2
	.uleb128 0xa
	.long	.LASF95
	.sleb128 3
	.uleb128 0xa
	.long	.LASF96
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x8
	.byte	0x39
	.long	0x4b3
	.uleb128 0x10
	.long	.LASF98
	.byte	0x1
	.byte	0x8
	.byte	0x3b
	.long	0x502
	.uleb128 0xa
	.long	.LASF99
	.sleb128 0
	.uleb128 0xa
	.long	.LASF100
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF101
	.byte	0x8
	.byte	0x3e
	.long	0x4e9
	.uleb128 0x10
	.long	.LASF102
	.byte	0x1
	.byte	0x8
	.byte	0x40
	.long	0x526
	.uleb128 0xa
	.long	.LASF103
	.sleb128 0
	.uleb128 0xa
	.long	.LASF104
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF105
	.byte	0x8
	.byte	0x43
	.long	0x50d
	.uleb128 0x11
	.string	"_ed"
	.byte	0x1
	.byte	0x8
	.byte	0x4a
	.long	0x54a
	.uleb128 0xa
	.long	.LASF106
	.sleb128 0
	.uleb128 0xa
	.long	.LASF107
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF108
	.byte	0x8
	.byte	0x4d
	.long	0x531
	.uleb128 0x5
	.long	.LASF109
	.byte	0x2
	.byte	0x9
	.byte	0xc
	.long	0x57e
	.uleb128 0x6
	.long	.LASF110
	.byte	0x9
	.byte	0xe
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF111
	.byte	0x9
	.byte	0xf
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF112
	.byte	0x9
	.byte	0x10
	.long	0x555
	.uleb128 0x15
	.long	.LASF113
	.byte	0x2
	.byte	0x9
	.byte	0x13
	.long	0x5ac
	.uleb128 0x13
	.long	.LASF18
	.byte	0x9
	.byte	0x15
	.long	0x4d
	.uleb128 0x13
	.long	.LASF114
	.byte	0x9
	.byte	0x16
	.long	0x57e
	.byte	0
	.uleb128 0x2
	.long	.LASF115
	.byte	0x9
	.byte	0x17
	.long	0x589
	.uleb128 0x15
	.long	.LASF116
	.byte	0x2
	.byte	0x9
	.byte	0x1a
	.long	0x5da
	.uleb128 0x13
	.long	.LASF18
	.byte	0x9
	.byte	0x1c
	.long	0x5f
	.uleb128 0x13
	.long	.LASF114
	.byte	0x9
	.byte	0x1d
	.long	0x57e
	.byte	0
	.uleb128 0x2
	.long	.LASF117
	.byte	0x9
	.byte	0x1e
	.long	0x5b7
	.uleb128 0x16
	.byte	0x33
	.byte	0x9
	.byte	0x22
	.long	.LASF222
	.long	0x7c0
	.uleb128 0x6
	.long	.LASF118
	.byte	0x9
	.byte	0x24
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF119
	.byte	0x9
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF120
	.byte	0x9
	.byte	0x26
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF121
	.byte	0x9
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF122
	.byte	0x9
	.byte	0x28
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF123
	.byte	0x9
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF124
	.byte	0x9
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF125
	.byte	0x9
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF126
	.byte	0x9
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF127
	.byte	0x9
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.long	.LASF128
	.byte	0x9
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.long	.LASF129
	.byte	0x9
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x6
	.long	.LASF130
	.byte	0x9
	.byte	0x32
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF131
	.byte	0x9
	.byte	0x33
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x6
	.long	.LASF132
	.byte	0x9
	.byte	0x36
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.long	.LASF133
	.byte	0x9
	.byte	0x37
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x6
	.long	.LASF134
	.byte	0x9
	.byte	0x38
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x6
	.long	.LASF135
	.byte	0x9
	.byte	0x39
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x6
	.long	.LASF136
	.byte	0x9
	.byte	0x3a
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x6
	.long	.LASF137
	.byte	0x9
	.byte	0x3b
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.long	.LASF138
	.byte	0x9
	.byte	0x3e
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x6
	.long	.LASF139
	.byte	0x9
	.byte	0x3f
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.long	.LASF140
	.byte	0x9
	.byte	0x40
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x6
	.long	.LASF141
	.byte	0x9
	.byte	0x41
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x6
	.long	.LASF142
	.byte	0x9
	.byte	0x42
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x6
	.long	.LASF143
	.byte	0x9
	.byte	0x43
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x6
	.long	.LASF144
	.byte	0x9
	.byte	0x44
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x6
	.long	.LASF145
	.byte	0x9
	.byte	0x45
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x6
	.long	.LASF146
	.byte	0x9
	.byte	0x46
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x6
	.long	.LASF147
	.byte	0x9
	.byte	0x47
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x6
	.long	.LASF148
	.byte	0x9
	.byte	0x48
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x6
	.long	.LASF149
	.byte	0x9
	.byte	0x49
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x6
	.long	.LASF150
	.byte	0x9
	.byte	0x4a
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.byte	0
	.uleb128 0x2
	.long	.LASF151
	.byte	0x9
	.byte	0x4b
	.long	0x5e5
	.uleb128 0x10
	.long	.LASF152
	.byte	0x1
	.byte	0xa
	.byte	0xe
	.long	0x7f1
	.uleb128 0xa
	.long	.LASF153
	.sleb128 1
	.uleb128 0xa
	.long	.LASF154
	.sleb128 2
	.uleb128 0xa
	.long	.LASF155
	.sleb128 3
	.uleb128 0xa
	.long	.LASF156
	.sleb128 101
	.byte	0
	.uleb128 0x2
	.long	.LASF157
	.byte	0xa
	.byte	0x14
	.long	0x7cb
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF158
	.uleb128 0x17
	.long	.LASF223
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x842
	.uleb128 0x18
	.long	.LASF224
	.byte	0x2
	.byte	0x8e
	.long	0xa6
	.uleb128 0x19
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x2
	.byte	0x90
	.long	0xa6
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF225
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x1c
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF167
	.byte	0x1
	.byte	0x53
	.long	.LASF169
	.long	.LFB96
	.long	.LFE96
	.long	.LLST0
	.byte	0x1
	.long	0x933
	.uleb128 0x1e
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.byte	0x56
	.long	0x502
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x1
	.byte	0x57
	.long	0x4de
	.long	.LLST1
	.uleb128 0x20
	.long	.LASF163
	.byte	0x1
	.byte	0x58
	.long	0x412
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1f
	.long	.LASF164
	.byte	0x1
	.byte	0x59
	.long	0x309
	.long	.LLST2
	.uleb128 0x20
	.long	.LASF165
	.byte	0x1
	.byte	0x5a
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 33
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.long	0x8fa
	.uleb128 0x1f
	.long	.LASF166
	.byte	0x1
	.byte	0x65
	.long	0x3b
	.long	.LLST3
	.uleb128 0x22
	.long	.LVL7
	.long	0xd6d
	.long	0x8e4
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL10
	.long	0xd93
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL0
	.long	0xdae
	.uleb128 0x22
	.long	.LVL1
	.long	0xdc5
	.long	0x91c
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.byte	0
	.uleb128 0x24
	.long	.LVL2
	.long	0xd93
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF168
	.byte	0x1
	.byte	0xa3
	.long	.LASF170
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9a6
	.uleb128 0x22
	.long	.LVL11
	.long	0xdde
	.long	0x971
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_bumper_sensor_packet
	.byte	0
	.uleb128 0x22
	.long	.LVL12
	.long	0xdde
	.long	0x993
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x65
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_light_sensor_packet
	.byte	0
	.uleb128 0x25
	.long	.LVL13
	.long	0xe00
	.uleb128 0x25
	.long	.LVL14
	.long	0xe1c
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF171
	.byte	0x1
	.byte	0xf2
	.long	.LASF172
	.long	.LFB99
	.long	.LFE99
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9d6
	.uleb128 0x25
	.long	.LVL15
	.long	0xe26
	.uleb128 0x25
	.long	.LVL16
	.long	0xe1c
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF173
	.byte	0x1
	.byte	0x25
	.long	.LASF174
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa16
	.uleb128 0x1e
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1f
	.long	.LASF175
	.byte	0x1
	.byte	0x26
	.long	0x3b
	.long	.LLST4
	.uleb128 0x25
	.long	.LVL17
	.long	0xe3d
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF176
	.byte	0x1
	.byte	0x47
	.long	.LASF177
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa4c
	.uleb128 0x27
	.long	.LASF226
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.long	.LLST5
	.uleb128 0x25
	.long	.LVL23
	.long	0xe4e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF227
	.byte	0x1
	.byte	0x82
	.long	.LFB97
	.long	.LFE97
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb31
	.uleb128 0x29
	.long	0x803
	.long	.LBB13
	.long	.LBE13
	.byte	0x1
	.byte	0x91
	.long	0xaa0
	.uleb128 0x2a
	.long	0x80f
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x1e
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.long	0x81b
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x2c
	.long	0x826
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x803
	.long	.LBB15
	.long	.LBE15
	.byte	0x1
	.byte	0x93
	.long	0xadb
	.uleb128 0x2a
	.long	0x80f
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x1e
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.long	0x81b
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x2c
	.long	0x826
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL26
	.long	0xe67
	.uleb128 0x22
	.long	.LVL27
	.long	0xe7e
	.long	0xafc
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL28
	.long	0xe9f
	.long	0xb14
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.long	.LVL29
	.long	0xebb
	.uleb128 0x25
	.long	.LVL30
	.long	0xec9
	.uleb128 0x2d
	.long	.LVL31
	.byte	0x1
	.long	0xed6
	.byte	0
	.uleb128 0x2e
	.long	0x831
	.byte	0
	.long	0xb41
	.uleb128 0x1c
	.long	0x83
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF228
	.byte	0x1
	.word	0x100
	.long	.LASF229
	.long	0x58
	.long	.LFB100
	.long	.LFE100
	.long	.LLST6
	.byte	0x1
	.long	0xbfb
	.uleb128 0x25
	.long	.LVL32
	.long	0xa4c
	.uleb128 0x22
	.long	.LVL33
	.long	0xee3
	.long	0xb92
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z18send_recieve_radiov
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.long	.LVL34
	.long	0xf00
	.long	0xbb8
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z18Send_Drive_Commandv
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.long	.LVL35
	.long	0xf1d
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z15send_IR_Commandv
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x23
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.uleb128 0x23
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.string	"SS"
	.byte	0xb
	.byte	0x28
	.long	0xc06
	.byte	0xa
	.uleb128 0x31
	.long	0x3b
	.uleb128 0x32
	.long	.LASF178
	.byte	0xb
	.byte	0x29
	.long	0xc06
	.byte	0xb
	.uleb128 0x32
	.long	.LASF179
	.byte	0xb
	.byte	0x2a
	.long	0xc06
	.byte	0xc
	.uleb128 0x30
	.string	"SCK"
	.byte	0xb
	.byte	0x2b
	.long	0xc06
	.byte	0xd
	.uleb128 0x30
	.string	"SDA"
	.byte	0xb
	.byte	0x2d
	.long	0xc06
	.byte	0x12
	.uleb128 0x30
	.string	"SCL"
	.byte	0xb
	.byte	0x2e
	.long	0xc06
	.byte	0x13
	.uleb128 0x30
	.string	"A0"
	.byte	0xb
	.byte	0x31
	.long	0xc06
	.byte	0xe
	.uleb128 0x30
	.string	"A1"
	.byte	0xb
	.byte	0x32
	.long	0xc06
	.byte	0xf
	.uleb128 0x30
	.string	"A2"
	.byte	0xb
	.byte	0x33
	.long	0xc06
	.byte	0x10
	.uleb128 0x30
	.string	"A3"
	.byte	0xb
	.byte	0x34
	.long	0xc06
	.byte	0x11
	.uleb128 0x30
	.string	"A4"
	.byte	0xb
	.byte	0x35
	.long	0xc06
	.byte	0x12
	.uleb128 0x30
	.string	"A5"
	.byte	0xb
	.byte	0x36
	.long	0xc06
	.byte	0x13
	.uleb128 0x30
	.string	"A6"
	.byte	0xb
	.byte	0x37
	.long	0xc06
	.byte	0x14
	.uleb128 0x30
	.string	"A7"
	.byte	0xb
	.byte	0x38
	.long	0xc06
	.byte	0x15
	.uleb128 0x33
	.long	.LASF180
	.byte	0x6
	.byte	0x30
	.long	0x35c
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x46
	.long	0xcbd
	.uleb128 0x34
	.uleb128 0xe
	.long	0x20f
	.byte	0x4
	.byte	0
	.uleb128 0x33
	.long	.LASF181
	.byte	0x6
	.byte	0x31
	.long	0xcac
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF182
	.byte	0x6
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF183
	.byte	0x1
	.byte	0x15
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_velocity
	.uleb128 0x35
	.long	.LASF184
	.byte	0x1
	.byte	0x16
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_rotation
	.uleb128 0x35
	.long	.LASF185
	.byte	0x1
	.byte	0x1c
	.long	0xd0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	radio_send_receive_service
	.uleb128 0x7
	.byte	0x2
	.long	0xad
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.byte	0x1d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_state
	.uleb128 0x35
	.long	.LASF186
	.byte	0x1
	.byte	0x1e
	.long	0x291
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_identity
	.uleb128 0x35
	.long	.LASF187
	.byte	0x1
	.byte	0x20
	.long	0x7c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_bumper_sensor_packet
	.uleb128 0x35
	.long	.LASF188
	.byte	0x1
	.byte	0x21
	.long	0x7c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_light_sensor_packet
	.uleb128 0x35
	.long	.LASF189
	.byte	0x1
	.byte	0x23
	.long	0x2d5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_game_state
	.uleb128 0x36
	.byte	0x1
	.long	.LASF190
	.byte	0x8
	.byte	0x8b
	.long	.LASF192
	.long	0x502
	.byte	0x1
	.long	0xd8d
	.uleb128 0x1c
	.long	0xd8d
	.uleb128 0x1c
	.long	0x526
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x412
	.uleb128 0x36
	.byte	0x1
	.long	.LASF191
	.byte	0x8
	.byte	0x93
	.long	.LASF193
	.long	0x4de
	.byte	0x1
	.long	0xdae
	.uleb128 0x1c
	.long	0xd8d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF194
	.byte	0x8
	.byte	0x7c
	.long	.LASF196
	.byte	0x1
	.long	0xdc5
	.uleb128 0x1c
	.long	0x21b
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF202
	.byte	0x4
	.word	0x148
	.byte	0x1
	.long	0xdde
	.uleb128 0x1c
	.long	0xd0d
	.uleb128 0x1c
	.long	0x247
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF195
	.byte	0xa
	.byte	0x29
	.long	.LASF197
	.byte	0x1
	.long	0xdfa
	.uleb128 0x1c
	.long	0x7f1
	.uleb128 0x1c
	.long	0xdfa
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7c0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF198
	.byte	0xa
	.byte	0x35
	.long	.LASF199
	.byte	0x1
	.long	0xe1c
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x4d
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.long	.LASF230
	.byte	0x4
	.word	0x12e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.long	.LASF200
	.byte	0xc
	.byte	0x11
	.long	.LASF201
	.byte	0x1
	.long	0xe3d
	.uleb128 0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF231
	.byte	0xc
	.byte	0x13
	.long	.LASF232
	.long	0x3b
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.long	.LASF203
	.byte	0x4
	.word	0x152
	.byte	0x1
	.long	0xe67
	.uleb128 0x1c
	.long	0xd0d
	.uleb128 0x1c
	.long	0x4d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF204
	.byte	0x8
	.byte	0x4f
	.long	.LASF205
	.byte	0x1
	.long	0xe7e
	.uleb128 0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF206
	.byte	0x8
	.byte	0x6f
	.long	.LASF207
	.byte	0x1
	.long	0xe9f
	.uleb128 0x1c
	.long	0x454
	.uleb128 0x1c
	.long	0x21b
	.uleb128 0x1c
	.long	0x54a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF208
	.byte	0x8
	.byte	0x76
	.long	.LASF209
	.byte	0x1
	.long	0xebb
	.uleb128 0x1c
	.long	0x4a8
	.uleb128 0x1c
	.long	0x484
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF210
	.byte	0x4
	.word	0x13e
	.long	0xd0d
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF211
	.byte	0xa
	.byte	0x1c
	.long	.LASF213
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF212
	.byte	0xc
	.byte	0x12
	.long	.LASF214
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF215
	.byte	0x4
	.word	0x110
	.long	0x29
	.byte	0x1
	.long	0xf00
	.uleb128 0x1c
	.long	0xfd
	.uleb128 0x1c
	.long	0x4d
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF216
	.byte	0x4
	.word	0x111
	.long	0x29
	.byte	0x1
	.long	0xf1d
	.uleb128 0x1c
	.long	0xfd
	.uleb128 0x1c
	.long	0x4d
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF217
	.byte	0x4
	.word	0x123
	.long	0x29
	.byte	0x1
	.uleb128 0x1c
	.long	0xfd
	.uleb128 0x1c
	.long	0x4d
	.uleb128 0x1c
	.long	0x5f
	.uleb128 0x1c
	.long	0x5f
	.uleb128 0x1c
	.long	0x5f
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB96
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI2
	.long	.LCFI3
	.word	0x2
	.byte	0x8c
	.sleb128 5
	.long	.LCFI3
	.long	.LFE96
	.word	0x2
	.byte	0x8c
	.sleb128 39
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LVL4
	.word	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.long	.LVL10
	.long	.LFE96
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL21
	.long	.LVL22
	.word	0x1
	.byte	0x68
	.long	.LVL22
	.long	.LVL23-1
	.word	0x1
	.byte	0x66
	.long	.LVL23-1
	.long	.LFE95
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB100
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI5
	.long	.LFE100
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LFB96
	.long	.LFE96
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB97
	.long	.LFE97
	.long	.LFB100
	.long	.LFE100
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF145:
	.string	"right_front_light_bumber_signal"
.LASF207:
	.string	"_Z18Radio_Configure_Rx11_radio_pipePh3_ed"
.LASF164:
	.string	"pk_roomba_state"
.LASF82:
	.string	"RADIO_LOWEST_POWER"
.LASF42:
	.string	"_cops_and_robbers"
.LASF187:
	.string	"roomba_bumper_sensor_packet"
.LASF135:
	.string	"temperature"
.LASF67:
	.string	"payloadformat_t"
.LASF210:
	.string	"Service_Init"
.LASF41:
	.string	"_game_state"
.LASF87:
	.string	"_radio_dr"
.LASF198:
	.string	"Roomba_Drive"
.LASF182:
	.string	"BASE_FREQUENCY"
.LASF38:
	.string	"GAME_STARTING"
.LASF176:
	.string	"radio_rxhandler"
.LASF128:
	.string	"remote_opcode"
.LASF6:
	.string	"unsigned int"
.LASF35:
	.string	"next"
.LASF160:
	.string	"__ticks_dc"
.LASF180:
	.string	"BASE_ADDRESS"
.LASF55:
	.string	"pf_roombastate_t"
.LASF183:
	.string	"roomba_velocity"
.LASF175:
	.string	"ir_value"
.LASF151:
	.string	"roomba_sensor_data_t"
.LASF133:
	.string	"voltage"
.LASF34:
	.string	"level"
.LASF48:
	.string	"_gs_pkt"
.LASF181:
	.string	"ROOMBA_ADDRESSES"
.LASF201:
	.string	"_Z11IR_transmith"
.LASF31:
	.string	"wcet"
.LASF16:
	.string	"tasks"
.LASF81:
	.string	"_radio_tx_power"
.LASF209:
	.string	"_Z15Radio_Configure9_radio_dr15_radio_tx_power"
.LASF62:
	.string	"pf_message_t"
.LASF36:
	.string	"prev"
.LASF215:
	.string	"Task_Create_System"
.LASF65:
	.string	"roombastate"
.LASF86:
	.string	"RADIO_TX_POWER"
.LASF52:
	.string	"_roomba_pkt"
.LASF71:
	.string	"radiopacket_t"
.LASF230:
	.string	"Task_Next"
.LASF92:
	.string	"RADIO_RX_INVALID_ARGS"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF229:
	.string	"_Z6r_mainv"
.LASF153:
	.string	"EXTERNAL_ROOMBA"
.LASF57:
	.string	"ROOMBASTATE_PACKET"
.LASF223:
	.string	"_delay_ms"
.LASF66:
	.string	"message"
.LASF13:
	.string	"float"
.LASF225:
	.string	"__builtin_avr_delay_cycles"
.LASF136:
	.string	"charge"
.LASF227:
	.string	"setup"
.LASF102:
	.string	"_radio_tx_wait"
.LASF4:
	.string	"int16_t"
.LASF115:
	.string	"int16_u"
.LASF152:
	.string	"_rsg"
.LASF89:
	.string	"RADIO_2MBPS"
.LASF11:
	.string	"long long unsigned int"
.LASF142:
	.string	"left_front_light_bumber_signal"
.LASF174:
	.string	"_Z12ir_rxhandlerv"
.LASF137:
	.string	"capacity"
.LASF59:
	.string	"_msg"
.LASF170:
	.string	"_Z18Send_Drive_Commandv"
.LASF51:
	.string	"pf_gamestate_t"
.LASF204:
	.string	"Radio_Init"
.LASF18:
	.string	"value"
.LASF190:
	.string	"Radio_Transmit"
.LASF19:
	.string	"counter"
.LASF74:
	.string	"RADIO_PIPE_1"
.LASF75:
	.string	"RADIO_PIPE_2"
.LASF25:
	.string	"task_descriptor_t"
.LASF77:
	.string	"RADIO_PIPE_4"
.LASF78:
	.string	"RADIO_PIPE_5"
.LASF26:
	.string	"service"
.LASF140:
	.string	"light_bumber"
.LASF70:
	.string	"payload"
.LASF17:
	.string	"valueLocations"
.LASF167:
	.string	"send_recieve_radio"
.LASF127:
	.string	"dirt_right"
.LASF61:
	.string	"messagecontent"
.LASF144:
	.string	"right_center_light_bumber_signal"
.LASF194:
	.string	"Radio_Set_Tx_Addr"
.LASF211:
	.string	"Roomba_Init"
.LASF208:
	.string	"Radio_Configure"
.LASF105:
	.string	"RADIO_TX_WAIT"
.LASF114:
	.string	"bytes"
.LASF205:
	.string	"_Z10Radio_Inith"
.LASF184:
	.string	"roomba_rotation"
.LASF24:
	.string	"task_state_t"
.LASF213:
	.string	"_Z11Roomba_Initv"
.LASF172:
	.string	"_Z15send_IR_Commandv"
.LASF79:
	.string	"RADIO_PIPE_EMPTY"
.LASF39:
	.string	"GAME_RUNNING"
.LASF53:
	.string	"roomba_id"
.LASF83:
	.string	"RADIO_LOW_POWER"
.LASF50:
	.string	"roomba_states"
.LASF12:
	.string	"char"
.LASF98:
	.string	"_radio_transmit"
.LASF162:
	.string	"radio_status"
.LASF106:
	.string	"DISABLE"
.LASF147:
	.string	"left_motor_current"
.LASF202:
	.string	"Service_Subscribe"
.LASF116:
	.string	"_u16u"
.LASF206:
	.string	"Radio_Configure_Rx"
.LASF221:
	.string	"12task_state_t"
.LASF169:
	.string	"_Z18send_recieve_radiov"
.LASF76:
	.string	"RADIO_PIPE_3"
.LASF226:
	.string	"pipe_number"
.LASF1:
	.string	"uint8_t"
.LASF214:
	.string	"_Z7IR_initv"
.LASF95:
	.string	"RADIO_RX_MORE_PACKETS"
.LASF139:
	.string	"right_encoder_counts"
.LASF224:
	.string	"__ms"
.LASF123:
	.string	"cliff_right"
.LASF179:
	.string	"MISO"
.LASF63:
	.string	"_filler"
.LASF120:
	.string	"cliff_left"
.LASF23:
	.string	"WAITING"
.LASF10:
	.string	"long long int"
.LASF20:
	.string	"DEAD"
.LASF109:
	.string	"_i16s"
.LASF113:
	.string	"_i16u"
.LASF101:
	.string	"RADIO_TX_STATUS"
.LASF22:
	.string	"READY"
.LASF158:
	.string	"bool"
.LASF93:
	.string	"RADIO_RX_TRANSMITTING"
.LASF111:
	.string	"high_byte"
.LASF58:
	.string	"MESSAGE_PACKET"
.LASF56:
	.string	"GAMESTATE_PACKET"
.LASF29:
	.string	"remaining_wcet"
.LASF203:
	.string	"Service_Publish"
.LASF177:
	.string	"_Z15radio_rxhandlerh"
.LASF150:
	.string	"side_brush_motor_current"
.LASF199:
	.string	"_Z12Roomba_Driveii"
.LASF200:
	.string	"IR_transmit"
.LASF88:
	.string	"RADIO_1MBPS"
.LASF219:
	.string	".././project2.cpp"
.LASF196:
	.string	"_Z17Radio_Set_Tx_AddrPh"
.LASF21:
	.string	"RUNNING"
.LASF143:
	.string	"left_center_light_bumber_signal"
.LASF138:
	.string	"left_encoder_counts"
.LASF27:
	.string	"td_struct"
.LASF5:
	.string	"uint16_t"
.LASF117:
	.string	"uint16_u"
.LASF188:
	.string	"roomba_light_sensor_packet"
.LASF156:
	.string	"LIGHT_SENSOR"
.LASF131:
	.string	"angle"
.LASF168:
	.string	"Send_Drive_Command"
.LASF157:
	.string	"ROOMBA_SENSOR_GROUP"
.LASF186:
	.string	"roomba_identity"
.LASF100:
	.string	"RADIO_TX_SUCCESS"
.LASF118:
	.string	"bumps_wheeldrops"
.LASF85:
	.string	"RADIO_HIGHEST_POWER"
.LASF125:
	.string	"motor_overcurrents"
.LASF7:
	.string	"long int"
.LASF73:
	.string	"RADIO_PIPE_0"
.LASF154:
	.string	"CHASSIS"
.LASF130:
	.string	"distance"
.LASF110:
	.string	"low_byte"
.LASF161:
	.string	"radio_status_send"
.LASF132:
	.string	"charging_state"
.LASF141:
	.string	"left_light_bumber_signal"
.LASF64:
	.string	"gamestate"
.LASF189:
	.string	"current_game_state"
.LASF228:
	.string	"r_main"
.LASF195:
	.string	"Roomba_UpdateSensorPacket"
.LASF173:
	.string	"ir_rxhandler"
.LASF32:
	.string	"start"
.LASF28:
	.string	"stack"
.LASF163:
	.string	"radio_packet"
.LASF126:
	.string	"dirt_left"
.LASF216:
	.string	"Task_Create_RR"
.LASF96:
	.string	"RADIO_RX_SUCCESS"
.LASF94:
	.string	"RADIO_RX_FIFO_EMPTY"
.LASF107:
	.string	"ENABLE"
.LASF37:
	.string	"sizetype"
.LASF9:
	.string	"long unsigned int"
.LASF129:
	.string	"buttons"
.LASF60:
	.string	"address"
.LASF54:
	.string	"roomba_state"
.LASF218:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF146:
	.string	"right_light_bumber_signal"
.LASF192:
	.string	"_Z14Radio_TransmitP3_rp14_radio_tx_wait"
.LASF232:
	.string	"_Z10IR_getLastv"
.LASF103:
	.string	"RADIO_WAIT_FOR_TX"
.LASF68:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF47:
	.string	"COPS_AND_ROBBERS"
.LASF217:
	.string	"Task_Create_Periodic"
.LASF124:
	.string	"virtual_wall"
.LASF178:
	.string	"MOSI"
.LASF134:
	.string	"current"
.LASF43:
	.string	"COP1"
.LASF44:
	.string	"COP2"
.LASF112:
	.string	"int16_split"
.LASF197:
	.string	"_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t"
.LASF212:
	.string	"IR_init"
.LASF33:
	.string	"state"
.LASF49:
	.string	"game_state"
.LASF80:
	.string	"RADIO_PIPE"
.LASF185:
	.string	"radio_send_receive_service"
.LASF69:
	.string	"timestamp"
.LASF119:
	.string	"wall"
.LASF40:
	.string	"GAME_OVER"
.LASF45:
	.string	"ROBBER1"
.LASF46:
	.string	"ROBBER2"
.LASF90:
	.string	"RADIO_DATA_RATE"
.LASF148:
	.string	"right_motor_current"
.LASF72:
	.string	"_radio_pipe"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"period"
.LASF104:
	.string	"RADIO_RETURN_ON_TX"
.LASF222:
	.string	"20roomba_sensor_data_t"
.LASF155:
	.string	"INTERNAL"
.LASF108:
	.string	"ON_OFF"
.LASF159:
	.string	"__tmp"
.LASF121:
	.string	"cliff_front_left"
.LASF220:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF165:
	.string	"radio_receive_service_value"
.LASF97:
	.string	"RADIO_RX_STATUS"
.LASF193:
	.string	"_Z13Radio_ReceiveP3_rp"
.LASF14:
	.string	"double"
.LASF91:
	.string	"_radio_receive"
.LASF99:
	.string	"RADIO_TX_MAX_RT"
.LASF191:
	.string	"Radio_Receive"
.LASF122:
	.string	"cliff_front_right"
.LASF231:
	.string	"IR_getLast"
.LASF15:
	.string	"SERVICE"
.LASF166:
	.string	"radio_roomba_state"
.LASF171:
	.string	"send_IR_Command"
.LASF84:
	.string	"RADIO_HIGH_POWER"
.LASF149:
	.string	"main_brush_motor_current"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
