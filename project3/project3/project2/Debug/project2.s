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
	.loc 1 74 0
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
	.loc 1 75 0
	sbi 0x4,7
	.loc 1 76 0
	out 0x5,__zero_reg__
	.loc 1 82 0
	ldi r24,lo8(BASE_ADDRESS)
	ldi r25,hi8(BASE_ADDRESS)
	call _Z17Radio_Set_Tx_AddrPh
.LVL0:
.LBB9:
.LBB10:
	.loc 1 103 0
	ldi r17,lo8(1)
.L2:
.LBE10:
	.loc 1 86 0
	movw r22,r28
	subi r22,-33
	sbci r23,-1
	lds r24,radio_send_receive_service
	lds r25,radio_send_receive_service+1
	call Service_Subscribe
.LVL1:
.L7:
.LBB11:
	.loc 1 110 0
	movw r24,r28
	adiw r24,1
	call _Z13Radio_ReceiveP3_rp
.LVL2:
.LBE11:
	.loc 1 90 0
	subi r24,lo8(-(-3))
.LVL3:
	cpi r24,lo8(2)
	brsh .L2
.LBB12:
	.loc 1 91 0
	lds r18,roomba_identity
	ldi r30,lo8(5)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r18
	adc r31,__zero_reg__
	ld r24,Z
.LVL4:
	.loc 1 92 0
	ldd r25,Y+1
	cpse r25,__zero_reg__
	rjmp .L2
	.loc 1 96 0
	sbrc r24,1
	rjmp .L5
	.loc 1 96 0 is_stmt 0 discriminator 1
	lds r25,roomba_state
	cp r24,r25
	breq .L5
	.loc 1 97 0 is_stmt 1
	sbrc r25,1
	rjmp .L5
.LVL5:
	.loc 1 102 0
	std Y+4,r18
	std Y+5,r25
	.loc 1 103 0
	std Y+1,r17
	.loc 1 104 0
	ldi r22,lo8(1)
	movw r24,r28
.LVL6:
	adiw r24,1
	call _Z14Radio_TransmitP3_rp14_radio_tx_wait
.LVL7:
	rjmp .L7
.LVL8:
.L5:
	.loc 1 108 0
	sts roomba_state,r24
	rjmp .L7
.LBE12:
.LBE9:
.LBE8:
	.cfi_endproc
.LFE96:
	.size	_Z18send_recieve_radiov, .-_Z18send_recieve_radiov
	.section	.text._Z15send_IR_Commandv,"ax",@progbits
.global	_Z15send_IR_Commandv
	.type	_Z15send_IR_Commandv, @function
_Z15send_IR_Commandv:
.LFB100:
	.loc 1 156 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L11:
	.loc 1 159 0 discriminator 1
	ldi r24,lo8(65)
	call _Z11IR_transmith
.LVL9:
	.loc 1 160 0 discriminator 1
	call Task_Next
.LVL10:
	rjmp .L11
	.cfi_endproc
.LFE100:
	.size	_Z15send_IR_Commandv, .-_Z15send_IR_Commandv
	.section	.text._Z12ir_rxhandlerv,"ax",@progbits
.global	_Z12ir_rxhandlerv
	.type	_Z12ir_rxhandlerv, @function
_Z12ir_rxhandlerv:
.LFB94:
	.loc 1 30 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB13:
	.loc 1 31 0
	call _Z10IR_getLastv
.LVL11:
	.loc 1 33 0
	cpi r24,lo8(66)
	brne .L13
	.loc 1 35 0
	lds r24,roomba_state
.LVL12:
	sbrc r24,1
	rjmp .L12
	.loc 1 36 0
	lds r18,roomba_identity
	mov r25,r24
	andi r25,lo8(1)
	cpi r18,lo8(2)
	brsh .L16
	rjmp .L22
.LVL13:
.L13:
	.loc 1 48 0
	cpi r24,lo8(65)
	brne .L12
	.loc 1 49 0
	lds r24,roomba_state
.LVL14:
	sbrc r24,1
	rjmp .L12
	.loc 1 50 0
	lds r18,roomba_identity
	mov r25,r24
	andi r25,lo8(1)
	cpi r18,lo8(2)
	brlo .L16
.L22:
	.loc 1 50 0 is_stmt 0 discriminator 1
	cpi r25,lo8(1)
	brne .L12
	.loc 1 51 0 is_stmt 1
	eor r24,r25
	sts roomba_state,r24
	.loc 1 52 0
	lds r24,258
	ori r24,lo8(8)
	rjmp .L18
.L16:
	.loc 1 53 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L12
	.loc 1 54 0
	ldi r25,lo8(1)
	eor r25,r24
	sts roomba_state,r25
	.loc 1 55 0
	lds r24,258
	ori r24,lo8(16)
.L18:
	sts 258,r24
.L12:
	ret
.LBE13:
	.cfi_endproc
.LFE94:
	.size	_Z12ir_rxhandlerv, .-_Z12ir_rxhandlerv
	.section	.text._Z15radio_rxhandlerh,"ax",@progbits
.global	_Z15radio_rxhandlerh
	.type	_Z15radio_rxhandlerh, @function
_Z15radio_rxhandlerh:
.LFB95:
	.loc 1 64 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 66 0
	mov r22,r24
	ldi r23,0
	lds r24,radio_send_receive_service
	lds r25,radio_send_receive_service+1
.LVL16:
	jmp Service_Publish
.LVL17:
	.cfi_endproc
.LFE95:
	.size	_Z15radio_rxhandlerh, .-_Z15radio_rxhandlerh
	.section	.text._Z10send_radiov,"ax",@progbits
.global	_Z10send_radiov
	.type	_Z10send_radiov, @function
_Z10send_radiov:
.LFB97:
	.loc 1 116 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE97:
	.size	_Z10send_radiov, .-_Z10send_radiov
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
.LFB98:
	.loc 1 134 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 138 0
	lds r24,257
	ori r24,lo8(24)
	sts 257,r24
	.loc 1 139 0
	lds r24,roomba_state
	sbrc r24,0
	rjmp .L26
	.loc 1 140 0
	ldi r24,lo8(8)
	rjmp .L28
.L26:
	.loc 1 142 0
	ldi r24,lo8(16)
.L28:
	sts 258,r24
	.loc 1 145 0
	call _Z11Roomba_Initv
.LVL18:
	.loc 1 146 0
	jmp _Z7IR_initv
.LVL19:
	.cfi_endproc
.LFE98:
	.size	setup, .-setup
	.section	.text._Z18Send_Drive_Commandv,"ax",@progbits
.global	_Z18Send_Drive_Commandv
	.type	_Z18Send_Drive_Commandv, @function
_Z18Send_Drive_Commandv:
.LFB99:
	.loc 1 149 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L30:
	.loc 1 151 0 discriminator 1
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-16)
	ldi r25,0
	call _Z12Roomba_Driveii
.LVL20:
	.loc 1 152 0 discriminator 1
	call Task_Next
.LVL21:
	rjmp .L30
	.cfi_endproc
.LFE99:
	.size	_Z18Send_Drive_Commandv, .-_Z18Send_Drive_Commandv
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB101:
	.loc 1 165 0
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
	.loc 1 166 0
	ldi r30,lo8(10)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	.loc 1 167 0
	ldi r30,lo8(11)
	ldi r31,lo8(1)
	ld r24,Z
	andi r24,lo8(-5)
	st Z,r24
.LVL22:
.LBB14:
.LBB15:
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
.LBE15:
.LBE14:
	.loc 1 169 0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
.LVL23:
.LBB16:
.LBB17:
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
.LBE17:
.LBE16:
	.loc 1 172 0
	lds r24,BASE_FREQUENCY
	call _Z10Radio_Inith
.LVL24:
	.loc 1 175 0
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
.LVL25:
	.loc 1 178 0
	ldi r22,lo8(3)
	ldi r24,0
	call _Z15Radio_Configure9_radio_dr15_radio_tx_power
.LVL26:
	.loc 1 181 0
	call Service_Init
.LVL27:
	sts radio_send_receive_service+1,r25
	sts radio_send_receive_service,r24
	.loc 1 182 0
	call setup
.LVL28:
	.loc 1 183 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z18send_recieve_radiov))
	ldi r25,hi8(gs(_Z18send_recieve_radiov))
	call Task_Create_System
.LVL29:
	.loc 1 184 0
	ldi r16,lo8(5)
	ldi r17,0
	ldi r18,lo8(4)
	ldi r19,0
	ldi r20,lo8(10)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z15send_IR_Commandv))
	ldi r25,hi8(gs(_Z15send_IR_Commandv))
	call Task_Create_Periodic
.LVL30:
	.loc 1 187 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE101:
	.size	_Z6r_mainv, .-_Z6r_mainv
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
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././os.h"
	.file 5 ".././kernel.h"
	.file 6 ".././radio/cops_and_robbers.h"
	.file 7 ".././radio/packet.h"
	.file 8 ".././radio/radio.h"
	.file 9 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 10 ".././ir/ir.h"
	.file 11 ".././roomba/roomba.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb9e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF157
	.byte	0x4
	.long	.LASF158
	.long	.LASF159
	.long	.Ldebug_ranges0+0x20
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
	.long	.LASF160
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
	.long	.LASF51
	.byte	0x1
	.byte	0x6
	.byte	0x17
	.long	0x272
	.uleb128 0xa
	.long	.LASF38
	.sleb128 0
	.uleb128 0xa
	.long	.LASF39
	.sleb128 1
	.uleb128 0xa
	.long	.LASF40
	.sleb128 2
	.uleb128 0xa
	.long	.LASF41
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x1c
	.long	0x24d
	.uleb128 0x5
	.long	.LASF43
	.byte	0x5
	.byte	0x6
	.byte	0x23
	.long	0x2a6
	.uleb128 0x6
	.long	.LASF44
	.byte	0x6
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x6
	.byte	0x26
	.long	0x2a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x2b6
	.uleb128 0xe
	.long	0x20f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x6
	.byte	0x27
	.long	0x27d
	.uleb128 0x5
	.long	.LASF47
	.byte	0x2
	.byte	0x6
	.byte	0x2a
	.long	0x2ea
	.uleb128 0x6
	.long	.LASF48
	.byte	0x6
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x6
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x2e
	.long	0x2c1
	.uleb128 0x11
	.string	"_pt"
	.byte	0x1
	.byte	0x7
	.byte	0x13
	.long	0x314
	.uleb128 0xa
	.long	.LASF52
	.sleb128 0
	.uleb128 0xa
	.long	.LASF53
	.sleb128 1
	.uleb128 0xa
	.long	.LASF54
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.long	.LASF55
	.byte	0x1d
	.byte	0x7
	.byte	0x1e
	.long	0x33d
	.uleb128 0x6
	.long	.LASF56
	.byte	0x7
	.byte	0x20
	.long	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF57
	.byte	0x7
	.byte	0x21
	.long	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x34d
	.uleb128 0xe
	.long	0x20f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x35d
	.uleb128 0xe
	.long	0x20f
	.byte	0x17
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0x22
	.long	0x314
	.uleb128 0x12
	.string	"_pf"
	.byte	0x1d
	.byte	0x7
	.byte	0x29
	.long	0x3a1
	.uleb128 0x13
	.long	.LASF59
	.byte	0x7
	.byte	0x2b
	.long	0x3a1
	.uleb128 0x13
	.long	.LASF60
	.byte	0x7
	.byte	0x2c
	.long	0x2b6
	.uleb128 0x13
	.long	.LASF61
	.byte	0x7
	.byte	0x2d
	.long	0x2ea
	.uleb128 0x13
	.long	.LASF62
	.byte	0x7
	.byte	0x2e
	.long	0x35d
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x3b1
	.uleb128 0xe
	.long	0x20f
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x2f
	.long	0x368
	.uleb128 0x14
	.string	"_rp"
	.byte	0x20
	.byte	0x7
	.byte	0x33
	.long	0x3f3
	.uleb128 0x6
	.long	.LASF64
	.byte	0x7
	.byte	0x35
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF65
	.byte	0x7
	.byte	0x36
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF66
	.byte	0x7
	.byte	0x37
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.byte	0x38
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0x8
	.byte	0x1d
	.long	0x435
	.uleb128 0xa
	.long	.LASF69
	.sleb128 0
	.uleb128 0xa
	.long	.LASF70
	.sleb128 1
	.uleb128 0xa
	.long	.LASF71
	.sleb128 2
	.uleb128 0xa
	.long	.LASF72
	.sleb128 3
	.uleb128 0xa
	.long	.LASF73
	.sleb128 4
	.uleb128 0xa
	.long	.LASF74
	.sleb128 5
	.uleb128 0xa
	.long	.LASF75
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x8
	.byte	0x25
	.long	0x3fe
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.byte	0x8
	.byte	0x27
	.long	0x465
	.uleb128 0xa
	.long	.LASF78
	.sleb128 0
	.uleb128 0xa
	.long	.LASF79
	.sleb128 1
	.uleb128 0xa
	.long	.LASF80
	.sleb128 2
	.uleb128 0xa
	.long	.LASF81
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x8
	.byte	0x2c
	.long	0x440
	.uleb128 0x10
	.long	.LASF83
	.byte	0x1
	.byte	0x8
	.byte	0x2e
	.long	0x489
	.uleb128 0xa
	.long	.LASF84
	.sleb128 0
	.uleb128 0xa
	.long	.LASF85
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x8
	.byte	0x31
	.long	0x470
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.long	0x4bf
	.uleb128 0xa
	.long	.LASF88
	.sleb128 0
	.uleb128 0xa
	.long	.LASF89
	.sleb128 1
	.uleb128 0xa
	.long	.LASF90
	.sleb128 2
	.uleb128 0xa
	.long	.LASF91
	.sleb128 3
	.uleb128 0xa
	.long	.LASF92
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x8
	.byte	0x39
	.long	0x494
	.uleb128 0x10
	.long	.LASF94
	.byte	0x1
	.byte	0x8
	.byte	0x3b
	.long	0x4e3
	.uleb128 0xa
	.long	.LASF95
	.sleb128 0
	.uleb128 0xa
	.long	.LASF96
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x8
	.byte	0x3e
	.long	0x4ca
	.uleb128 0x10
	.long	.LASF98
	.byte	0x1
	.byte	0x8
	.byte	0x40
	.long	0x507
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
	.byte	0x43
	.long	0x4ee
	.uleb128 0x11
	.string	"_ed"
	.byte	0x1
	.byte	0x8
	.byte	0x4a
	.long	0x52b
	.uleb128 0xa
	.long	.LASF102
	.sleb128 0
	.uleb128 0xa
	.long	.LASF103
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF104
	.byte	0x8
	.byte	0x4d
	.long	0x512
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF105
	.uleb128 0x15
	.long	.LASF161
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x57c
	.uleb128 0x16
	.long	.LASF162
	.byte	0x2
	.byte	0x8e
	.long	0xa6
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF106
	.byte	0x2
	.byte	0x90
	.long	0xa6
	.uleb128 0x18
	.long	.LASF107
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x19
	.byte	0x1
	.long	.LASF163
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x1a
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.byte	0x4a
	.long	.LASF116
	.long	.LFB96
	.long	.LFE96
	.long	.LLST0
	.byte	0x1
	.long	0x654
	.uleb128 0x1c
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x18
	.long	.LASF108
	.byte	0x1
	.byte	0x4d
	.long	0x4e3
	.uleb128 0x1d
	.long	.LASF109
	.byte	0x1
	.byte	0x4e
	.long	0x4bf
	.long	.LLST1
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x1
	.byte	0x4f
	.long	0x3f3
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.byte	0x50
	.long	0x2ea
	.long	.LLST2
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.byte	0x51
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 33
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0
	.long	0x634
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.byte	0x5b
	.long	0x3b
	.long	.LLST3
	.uleb128 0x20
	.long	.LVL2
	.long	0xa08
	.long	0x618
	.uleb128 0x21
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
	.uleb128 0x22
	.long	.LVL7
	.long	0xa29
	.uleb128 0x21
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
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL0
	.long	0xa49
	.uleb128 0x22
	.long	.LVL1
	.long	0xa60
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.byte	0x9c
	.long	.LASF117
	.long	.LFB100
	.long	.LFE100
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x68f
	.uleb128 0x20
	.long	.LVL9
	.long	0xa79
	.long	0x685
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.uleb128 0x23
	.long	.LVL10
	.long	0xa90
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.byte	0x1e
	.long	.LASF119
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6cf
	.uleb128 0x1c
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0x1f
	.long	0x3b
	.long	.LLST4
	.uleb128 0x23
	.long	.LVL11
	.long	0xa9a
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF121
	.byte	0x1
	.byte	0x40
	.long	.LASF122
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x706
	.uleb128 0x25
	.long	.LASF164
	.byte	0x1
	.byte	0x40
	.long	0x3b
	.long	.LLST5
	.uleb128 0x26
	.long	.LVL17
	.byte	0x1
	.long	0xaab
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF165
	.byte	0x1
	.byte	0x74
	.long	.LASF166
	.long	.LFB97
	.long	.LFE97
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.long	.LASF167
	.byte	0x1
	.byte	0x86
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x74c
	.uleb128 0x23
	.long	.LVL18
	.long	0xac4
	.uleb128 0x26
	.long	.LVL19
	.byte	0x1
	.long	0xad1
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.byte	0x95
	.long	.LASF124
	.long	.LFB99
	.long	.LFE99
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x796
	.uleb128 0x20
	.long	.LVL20
	.long	0xade
	.long	0x78c
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x21
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
	.uleb128 0x23
	.long	.LVL21
	.long	0xa90
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF168
	.byte	0x1
	.byte	0xa4
	.long	.LASF169
	.long	0x58
	.long	.LFB101
	.long	.LFE101
	.long	.LLST6
	.byte	0x1
	.long	0x8e0
	.uleb128 0x2a
	.long	0x53d
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0xa8
	.long	0x7f2
	.uleb128 0x2b
	.long	0x549
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x1c
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.long	0x555
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x2d
	.long	0x560
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x53d
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0xaa
	.long	0x82d
	.uleb128 0x2b
	.long	0x549
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x1c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.long	0x555
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x2d
	.long	0x560
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL24
	.long	0xafa
	.uleb128 0x20
	.long	.LVL25
	.long	0xb11
	.long	0x84e
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.long	.LVL26
	.long	0xb32
	.long	0x866
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.long	.LVL27
	.long	0xb4e
	.uleb128 0x23
	.long	.LVL28
	.long	0x71f
	.uleb128 0x20
	.long	.LVL29
	.long	0xb5c
	.long	0x89e
	.uleb128 0x21
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
	.uleb128 0x21
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
	.long	.LVL30
	.long	0xb79
	.uleb128 0x21
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
	.uleb128 0x21
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3a
	.uleb128 0x21
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.uleb128 0x21
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
	.uleb128 0x2e
	.long	0x56b
	.byte	0
	.long	0x8f0
	.uleb128 0x1a
	.long	0x83
	.byte	0
	.uleb128 0x2f
	.string	"SS"
	.byte	0x9
	.byte	0x28
	.long	0x8fb
	.byte	0xa
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF125
	.byte	0x9
	.byte	0x29
	.long	0x8fb
	.byte	0xb
	.uleb128 0x31
	.long	.LASF126
	.byte	0x9
	.byte	0x2a
	.long	0x8fb
	.byte	0xc
	.uleb128 0x2f
	.string	"SCK"
	.byte	0x9
	.byte	0x2b
	.long	0x8fb
	.byte	0xd
	.uleb128 0x2f
	.string	"SDA"
	.byte	0x9
	.byte	0x2d
	.long	0x8fb
	.byte	0x12
	.uleb128 0x2f
	.string	"SCL"
	.byte	0x9
	.byte	0x2e
	.long	0x8fb
	.byte	0x13
	.uleb128 0x2f
	.string	"A0"
	.byte	0x9
	.byte	0x31
	.long	0x8fb
	.byte	0xe
	.uleb128 0x2f
	.string	"A1"
	.byte	0x9
	.byte	0x32
	.long	0x8fb
	.byte	0xf
	.uleb128 0x2f
	.string	"A2"
	.byte	0x9
	.byte	0x33
	.long	0x8fb
	.byte	0x10
	.uleb128 0x2f
	.string	"A3"
	.byte	0x9
	.byte	0x34
	.long	0x8fb
	.byte	0x11
	.uleb128 0x2f
	.string	"A4"
	.byte	0x9
	.byte	0x35
	.long	0x8fb
	.byte	0x12
	.uleb128 0x2f
	.string	"A5"
	.byte	0x9
	.byte	0x36
	.long	0x8fb
	.byte	0x13
	.uleb128 0x2f
	.string	"A6"
	.byte	0x9
	.byte	0x37
	.long	0x8fb
	.byte	0x14
	.uleb128 0x2f
	.string	"A7"
	.byte	0x9
	.byte	0x38
	.long	0x8fb
	.byte	0x15
	.uleb128 0x32
	.long	.LASF127
	.byte	0x6
	.byte	0x30
	.long	0x33d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x46
	.long	0x9b2
	.uleb128 0x33
	.uleb128 0xe
	.long	0x20f
	.byte	0x4
	.byte	0
	.uleb128 0x32
	.long	.LASF128
	.byte	0x6
	.byte	0x31
	.long	0x9a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF129
	.byte	0x6
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF130
	.byte	0x1
	.byte	0x1a
	.long	0x9de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	radio_send_receive_service
	.uleb128 0x7
	.byte	0x2
	.long	0xad
	.uleb128 0x34
	.long	.LASF49
	.byte	0x1
	.byte	0x1b
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_state
	.uleb128 0x34
	.long	.LASF131
	.byte	0x1
	.byte	0x1c
	.long	0x272
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roomba_identity
	.uleb128 0x35
	.byte	0x1
	.long	.LASF132
	.byte	0x8
	.byte	0x93
	.long	.LASF134
	.long	0x4bf
	.byte	0x1
	.long	0xa23
	.uleb128 0x1a
	.long	0xa23
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3f3
	.uleb128 0x35
	.byte	0x1
	.long	.LASF133
	.byte	0x8
	.byte	0x8b
	.long	.LASF135
	.long	0x4e3
	.byte	0x1
	.long	0xa49
	.uleb128 0x1a
	.long	0xa23
	.uleb128 0x1a
	.long	0x507
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF136
	.byte	0x8
	.byte	0x7c
	.long	.LASF138
	.byte	0x1
	.long	0xa60
	.uleb128 0x1a
	.long	0x21b
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF140
	.byte	0x4
	.word	0x148
	.byte	0x1
	.long	0xa79
	.uleb128 0x1a
	.long	0x9de
	.uleb128 0x1a
	.long	0x247
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF137
	.byte	0xa
	.byte	0x11
	.long	.LASF139
	.byte	0x1
	.long	0xa90
	.uleb128 0x1a
	.long	0x3b
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF170
	.byte	0x4
	.word	0x12e
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF171
	.byte	0xa
	.byte	0x13
	.long	.LASF172
	.long	0x3b
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.long	.LASF141
	.byte	0x4
	.word	0x152
	.byte	0x1
	.long	0xac4
	.uleb128 0x1a
	.long	0x9de
	.uleb128 0x1a
	.long	0x4d
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF142
	.byte	0xb
	.byte	0x1b
	.long	.LASF144
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF143
	.byte	0xa
	.byte	0x12
	.long	.LASF145
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.long	.LASF146
	.byte	0xb
	.byte	0x34
	.long	.LASF147
	.byte	0x1
	.long	0xafa
	.uleb128 0x1a
	.long	0x4d
	.uleb128 0x1a
	.long	0x4d
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF148
	.byte	0x8
	.byte	0x4f
	.long	.LASF149
	.byte	0x1
	.long	0xb11
	.uleb128 0x1a
	.long	0x3b
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF150
	.byte	0x8
	.byte	0x6f
	.long	.LASF151
	.byte	0x1
	.long	0xb32
	.uleb128 0x1a
	.long	0x435
	.uleb128 0x1a
	.long	0x21b
	.uleb128 0x1a
	.long	0x52b
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF152
	.byte	0x8
	.byte	0x76
	.long	.LASF153
	.byte	0x1
	.long	0xb4e
	.uleb128 0x1a
	.long	0x489
	.uleb128 0x1a
	.long	0x465
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF154
	.byte	0x4
	.word	0x13e
	.long	0x9de
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF155
	.byte	0x4
	.word	0x110
	.long	0x29
	.byte	0x1
	.long	0xb79
	.uleb128 0x1a
	.long	0xfd
	.uleb128 0x1a
	.long	0x4d
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF156
	.byte	0x4
	.word	0x123
	.long	0x29
	.byte	0x1
	.uleb128 0x1a
	.long	0xfd
	.uleb128 0x1a
	.long	0x4d
	.uleb128 0x1a
	.long	0x5f
	.uleb128 0x1a
	.long	0x5f
	.uleb128 0x1a
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.long	.LFE96
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LVL17-1
	.word	0x1
	.byte	0x66
	.long	.LVL17-1
	.long	.LFE95
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB101
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
	.long	.LFE101
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	.LBB12
	.long	.LBE12
	.long	0
	.long	0
	.long	.LFB96
	.long	.LFE96
	.long	.LFB100
	.long	.LFE100
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	.LFB101
	.long	.LFE101
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"_Z18Radio_Configure_Rx11_radio_pipePh3_ed"
.LASF111:
	.string	"pk_roomba_state"
.LASF78:
	.string	"RADIO_LOWEST_POWER"
.LASF51:
	.string	"_cops_and_robbers"
.LASF63:
	.string	"payloadformat_t"
.LASF154:
	.string	"Service_Init"
.LASF62:
	.string	"message"
.LASF83:
	.string	"_radio_dr"
.LASF146:
	.string	"Roomba_Drive"
.LASF129:
	.string	"BASE_FREQUENCY"
.LASF121:
	.string	"radio_rxhandler"
.LASF6:
	.string	"unsigned int"
.LASF35:
	.string	"next"
.LASF107:
	.string	"__ticks_dc"
.LASF127:
	.string	"BASE_ADDRESS"
.LASF50:
	.string	"pf_roombastate_t"
.LASF120:
	.string	"ir_value"
.LASF34:
	.string	"level"
.LASF43:
	.string	"_gs_pkt"
.LASF128:
	.string	"ROOMBA_ADDRESSES"
.LASF139:
	.string	"_Z11IR_transmith"
.LASF31:
	.string	"wcet"
.LASF16:
	.string	"tasks"
.LASF77:
	.string	"_radio_tx_power"
.LASF153:
	.string	"_Z15Radio_Configure9_radio_dr15_radio_tx_power"
.LASF58:
	.string	"pf_message_t"
.LASF36:
	.string	"prev"
.LASF155:
	.string	"Task_Create_System"
.LASF61:
	.string	"roombastate"
.LASF82:
	.string	"RADIO_TX_POWER"
.LASF47:
	.string	"_roomba_pkt"
.LASF67:
	.string	"radiopacket_t"
.LASF170:
	.string	"Task_Next"
.LASF88:
	.string	"RADIO_RX_INVALID_ARGS"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF169:
	.string	"_Z6r_mainv"
.LASF53:
	.string	"ROOMBASTATE_PACKET"
.LASF161:
	.string	"_delay_ms"
.LASF13:
	.string	"float"
.LASF163:
	.string	"__builtin_avr_delay_cycles"
.LASF167:
	.string	"setup"
.LASF98:
	.string	"_radio_tx_wait"
.LASF4:
	.string	"int16_t"
.LASF85:
	.string	"RADIO_2MBPS"
.LASF11:
	.string	"long long unsigned int"
.LASF119:
	.string	"_Z12ir_rxhandlerv"
.LASF55:
	.string	"_msg"
.LASF124:
	.string	"_Z18Send_Drive_Commandv"
.LASF46:
	.string	"pf_gamestate_t"
.LASF148:
	.string	"Radio_Init"
.LASF18:
	.string	"value"
.LASF133:
	.string	"Radio_Transmit"
.LASF19:
	.string	"counter"
.LASF70:
	.string	"RADIO_PIPE_1"
.LASF71:
	.string	"RADIO_PIPE_2"
.LASF25:
	.string	"task_descriptor_t"
.LASF73:
	.string	"RADIO_PIPE_4"
.LASF74:
	.string	"RADIO_PIPE_5"
.LASF26:
	.string	"service"
.LASF162:
	.string	"__ms"
.LASF66:
	.string	"payload"
.LASF17:
	.string	"valueLocations"
.LASF114:
	.string	"send_recieve_radio"
.LASF57:
	.string	"messagecontent"
.LASF136:
	.string	"Radio_Set_Tx_Addr"
.LASF142:
	.string	"Roomba_Init"
.LASF152:
	.string	"Radio_Configure"
.LASF101:
	.string	"RADIO_TX_WAIT"
.LASF149:
	.string	"_Z10Radio_Inith"
.LASF24:
	.string	"task_state_t"
.LASF144:
	.string	"_Z11Roomba_Initv"
.LASF117:
	.string	"_Z15send_IR_Commandv"
.LASF75:
	.string	"RADIO_PIPE_EMPTY"
.LASF48:
	.string	"roomba_id"
.LASF79:
	.string	"RADIO_LOW_POWER"
.LASF45:
	.string	"roomba_states"
.LASF12:
	.string	"char"
.LASF94:
	.string	"_radio_transmit"
.LASF109:
	.string	"radio_status"
.LASF102:
	.string	"DISABLE"
.LASF140:
	.string	"Service_Subscribe"
.LASF150:
	.string	"Radio_Configure_Rx"
.LASF160:
	.string	"12task_state_t"
.LASF116:
	.string	"_Z18send_recieve_radiov"
.LASF72:
	.string	"RADIO_PIPE_3"
.LASF164:
	.string	"pipe_number"
.LASF1:
	.string	"uint8_t"
.LASF145:
	.string	"_Z7IR_initv"
.LASF91:
	.string	"RADIO_RX_MORE_PACKETS"
.LASF126:
	.string	"MISO"
.LASF59:
	.string	"_filler"
.LASF23:
	.string	"WAITING"
.LASF10:
	.string	"long long int"
.LASF20:
	.string	"DEAD"
.LASF97:
	.string	"RADIO_TX_STATUS"
.LASF22:
	.string	"READY"
.LASF105:
	.string	"bool"
.LASF89:
	.string	"RADIO_RX_TRANSMITTING"
.LASF165:
	.string	"send_radio"
.LASF54:
	.string	"MESSAGE_PACKET"
.LASF52:
	.string	"GAMESTATE_PACKET"
.LASF29:
	.string	"remaining_wcet"
.LASF141:
	.string	"Service_Publish"
.LASF122:
	.string	"_Z15radio_rxhandlerh"
.LASF147:
	.string	"_Z12Roomba_Driveii"
.LASF137:
	.string	"IR_transmit"
.LASF84:
	.string	"RADIO_1MBPS"
.LASF158:
	.string	".././project2.cpp"
.LASF138:
	.string	"_Z17Radio_Set_Tx_AddrPh"
.LASF21:
	.string	"RUNNING"
.LASF27:
	.string	"td_struct"
.LASF5:
	.string	"uint16_t"
.LASF123:
	.string	"Send_Drive_Command"
.LASF131:
	.string	"roomba_identity"
.LASF96:
	.string	"RADIO_TX_SUCCESS"
.LASF81:
	.string	"RADIO_HIGHEST_POWER"
.LASF166:
	.string	"_Z10send_radiov"
.LASF7:
	.string	"long int"
.LASF69:
	.string	"RADIO_PIPE_0"
.LASF108:
	.string	"radio_status_send"
.LASF60:
	.string	"gamestate"
.LASF168:
	.string	"r_main"
.LASF118:
	.string	"ir_rxhandler"
.LASF32:
	.string	"start"
.LASF28:
	.string	"stack"
.LASF110:
	.string	"radio_packet"
.LASF92:
	.string	"RADIO_RX_SUCCESS"
.LASF90:
	.string	"RADIO_RX_FIFO_EMPTY"
.LASF103:
	.string	"ENABLE"
.LASF37:
	.string	"sizetype"
.LASF9:
	.string	"long unsigned int"
.LASF56:
	.string	"address"
.LASF49:
	.string	"roomba_state"
.LASF157:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF135:
	.string	"_Z14Radio_TransmitP3_rp14_radio_tx_wait"
.LASF172:
	.string	"_Z10IR_getLastv"
.LASF99:
	.string	"RADIO_WAIT_FOR_TX"
.LASF64:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF42:
	.string	"COPS_AND_ROBBERS"
.LASF156:
	.string	"Task_Create_Periodic"
.LASF125:
	.string	"MOSI"
.LASF38:
	.string	"COP1"
.LASF39:
	.string	"COP2"
.LASF33:
	.string	"state"
.LASF44:
	.string	"game_state"
.LASF76:
	.string	"RADIO_PIPE"
.LASF130:
	.string	"radio_send_receive_service"
.LASF65:
	.string	"timestamp"
.LASF40:
	.string	"ROBBER1"
.LASF41:
	.string	"ROBBER2"
.LASF86:
	.string	"RADIO_DATA_RATE"
.LASF68:
	.string	"_radio_pipe"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"period"
.LASF100:
	.string	"RADIO_RETURN_ON_TX"
.LASF104:
	.string	"ON_OFF"
.LASF106:
	.string	"__tmp"
.LASF159:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF112:
	.string	"radio_receive_service_value"
.LASF93:
	.string	"RADIO_RX_STATUS"
.LASF134:
	.string	"_Z13Radio_ReceiveP3_rp"
.LASF14:
	.string	"double"
.LASF87:
	.string	"_radio_receive"
.LASF95:
	.string	"RADIO_TX_MAX_RT"
.LASF132:
	.string	"Radio_Receive"
.LASF143:
	.string	"IR_init"
.LASF171:
	.string	"IR_getLast"
.LASF15:
	.string	"SERVICE"
.LASF113:
	.string	"radio_roomba_state"
.LASF115:
	.string	"send_IR_Command"
.LASF80:
	.string	"RADIO_HIGH_POWER"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
