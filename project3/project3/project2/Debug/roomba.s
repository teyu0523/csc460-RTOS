	.file	"roomba.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z11Roomba_Initv,"ax",@progbits
.global	_Z11Roomba_Initv
	.type	_Z11Roomba_Initv, @function
_Z11Roomba_Initv:
.LFB7:
	.file 1 "../roomba/roomba.cpp"
	.loc 1 14 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 15 0
	sbi 0xa,1
	.loc 1 16 0
	cbi 0xb,1
	.loc 1 23 0
	ldi r24,lo8(3)
	call _Z16Roomba_UART_Init9_uart_bps
.LVL0:
	.loc 1 26 0
	ldi r24,lo8(-128)
	call _Z16Roomba_Send_Byteh
.LVL1:
.LBB14:
.LBB15:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0
	ldi r18,lo8(63999)
	ldi r24,hi8(63999)
	ldi r25,hlo8(63999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE15:
.LBE14:
	.loc 1 30 0
	ldi r24,lo8(-127)
	call _Z16Roomba_Send_Byteh
.LVL2:
	.loc 1 31 0
	ldi r24,lo8(7)
	call _Z16Roomba_Send_Byteh
.LVL3:
.LBB16:
.LBB17:
	.loc 2 163 0
	ldi r18,lo8(319999)
	ldi r24,hi8(319999)
	ldi r25,hlo8(319999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE17:
.LBE16:
	.loc 1 36 0
	ldi r24,0
	call _Z16Roomba_UART_Init9_uart_bps
.LVL4:
	.loc 1 39 0
	ldi r24,lo8(-128)
	call _Z16Roomba_Send_Byteh
.LVL5:
.LBB18:
.LBB19:
	.loc 2 163 0
	ldi r18,lo8(63999)
	ldi r24,hi8(63999)
	ldi r25,hlo8(63999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE19:
.LBE18:
	.loc 1 43 0
	ldi r24,lo8(-125)
	call _Z16Roomba_Send_Byteh
.LVL6:
.LBB20:
.LBB21:
	.loc 2 163 0
	ldi r18,lo8(63999)
	ldi r24,hi8(63999)
	ldi r25,hlo8(63999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	ret
.LBE21:
.LBE20:
	.cfi_endproc
.LFE7:
	.size	_Z11Roomba_Initv, .-_Z11Roomba_Initv
	.section	.text._Z13Roomba_Finishv,"ax",@progbits
.global	_Z13Roomba_Finishv
	.type	_Z13Roomba_Finishv, @function
_Z13Roomba_Finishv:
.LFB8:
	.loc 1 47 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 48 0
	ldi r24,lo8(-83)
	jmp _Z16Roomba_Send_Byteh
.LVL7:
	.cfi_endproc
.LFE8:
	.size	_Z13Roomba_Finishv, .-_Z13Roomba_Finishv
	.section	.text._Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t,"ax",@progbits
.global	_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t
	.type	_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t, @function
_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t:
.LFB9:
	.loc 1 52 0
	.cfi_startproc
.LVL8:
	push r17
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	.loc 1 53 0
	ldi r24,lo8(-114)
.LVL9:
	call _Z16Roomba_Send_Byteh
.LVL10:
	.loc 1 54 0
	mov r24,r17
	call _Z16Roomba_Send_Byteh
.LVL11:
	.loc 1 55 0
	cpi r17,lo8(2)
	breq .L11
	cpi r17,lo8(3)
	brne .+2
	rjmp .L13
	cpi r17,lo8(1)
	breq .+2
	rjmp .L4
.L9:
	.loc 1 59 0 discriminator 1
	call _Z19uart_bytes_receivedv
.LVL12:
	cpi r24,lo8(10)
	brne .L9
	.loc 1 60 0
	ldi r24,0
	ldi r25,0
	call _Z13uart_get_bytei
.LVL13:
	st Y,r24
	.loc 1 61 0
	ldi r24,lo8(1)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL14:
	std Y+1,r24
	.loc 1 62 0
	ldi r24,lo8(2)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL15:
	std Y+2,r24
	.loc 1 63 0
	ldi r24,lo8(3)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL16:
	std Y+3,r24
	.loc 1 64 0
	ldi r24,lo8(4)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL17:
	std Y+4,r24
	.loc 1 65 0
	ldi r24,lo8(5)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL18:
	std Y+5,r24
	.loc 1 66 0
	ldi r24,lo8(6)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL19:
	std Y+6,r24
	.loc 1 67 0
	ldi r24,lo8(7)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL20:
	std Y+7,r24
	.loc 1 68 0
	ldi r24,lo8(8)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL21:
	std Y+8,r24
	.loc 1 69 0
	ldi r24,lo8(9)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL22:
	std Y+9,r24
	.loc 1 70 0
	rjmp .L4
.L11:
	.loc 1 73 0 discriminator 1
	call _Z19uart_bytes_receivedv
.LVL23:
	cpi r24,lo8(6)
	brne .L11
	.loc 1 74 0
	ldi r24,0
	ldi r25,0
	call _Z13uart_get_bytei
.LVL24:
	std Y+10,r24
	.loc 1 75 0
	ldi r24,lo8(1)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL25:
	std Y+11,r24
	.loc 1 76 0
	ldi r24,lo8(2)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL26:
	std Y+13,r24
	.loc 1 77 0
	ldi r24,lo8(3)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL27:
	std Y+12,r24
	.loc 1 78 0
	ldi r24,lo8(4)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL28:
	std Y+15,r24
	.loc 1 79 0
	ldi r24,lo8(5)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL29:
	std Y+14,r24
	.loc 1 80 0
	rjmp .L4
.L13:
	.loc 1 83 0 discriminator 1
	call _Z19uart_bytes_receivedv
.LVL30:
	cpi r24,lo8(10)
	brne .L13
	.loc 1 84 0
	ldi r24,0
	ldi r25,0
	call _Z13uart_get_bytei
.LVL31:
	std Y+16,r24
	.loc 1 85 0
	ldi r24,lo8(1)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL32:
	std Y+18,r24
	.loc 1 86 0
	ldi r24,lo8(2)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL33:
	std Y+17,r24
	.loc 1 87 0
	ldi r24,lo8(3)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL34:
	std Y+20,r24
	.loc 1 88 0
	ldi r24,lo8(4)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL35:
	std Y+19,r24
	.loc 1 89 0
	ldi r24,lo8(5)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL36:
	std Y+21,r24
	.loc 1 90 0
	ldi r24,lo8(6)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL37:
	std Y+23,r24
	.loc 1 91 0
	ldi r24,lo8(7)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL38:
	std Y+22,r24
	.loc 1 92 0
	ldi r24,lo8(8)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL39:
	std Y+25,r24
	.loc 1 93 0
	ldi r24,lo8(9)
	ldi r25,0
	call _Z13uart_get_bytei
.LVL40:
	std Y+24,r24
.L4:
/* epilogue start */
	.loc 1 97 0
	pop r29
	pop r28
.LVL41:
	pop r17
.LVL42:
	.loc 1 96 0
	jmp _Z18uart_reset_receivev
.LVL43:
	.cfi_endproc
.LFE9:
	.size	_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t, .-_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t
	.section	.text._Z12Roomba_Driveii,"ax",@progbits
.global	_Z12Roomba_Driveii
	.type	_Z12Roomba_Driveii, @function
_Z12Roomba_Driveii:
.LFB10:
	.loc 1 100 0
	.cfi_startproc
.LVL44:
	push r17
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
.LCFI6:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI7:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 3 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r17,r24
	.loc 1 101 0
	ldi r24,lo8(-119)
.LVL45:
	std Y+3,r22
	std Y+2,r23
	std Y+1,r25
	call _Z16Roomba_Send_Byteh
.LVL46:
	.loc 1 102 0
	ldd r25,Y+1
	mov r24,r25
	call _Z16Roomba_Send_Byteh
.LVL47:
	.loc 1 103 0
	mov r24,r17
	call _Z16Roomba_Send_Byteh
.LVL48:
	.loc 1 104 0
	ldd r23,Y+2
	mov r24,r23
	call _Z16Roomba_Send_Byteh
.LVL49:
	.loc 1 105 0
	ldd r22,Y+3
	mov r24,r22
/* epilogue start */
	.loc 1 106 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	.loc 1 105 0
	jmp _Z16Roomba_Send_Byteh
.LVL50:
	.cfi_endproc
.LFE10:
	.size	_Z12Roomba_Driveii, .-_Z12Roomba_Driveii
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../roomba/../uart/uart.h"
	.file 5 "../roomba/sensor_struct.h"
	.file 6 "../roomba/roomba.h"
	.file 7 "../roomba/roomba_sci.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x90b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF86
	.byte	0x4
	.long	.LASF87
	.long	.LASF88
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x5
	.long	.LASF49
	.byte	0x1
	.byte	0x4
	.byte	0x13
	.long	0xc3
	.uleb128 0x6
	.long	.LASF12
	.sleb128 0
	.uleb128 0x6
	.long	.LASF13
	.sleb128 1
	.uleb128 0x6
	.long	.LASF14
	.sleb128 2
	.uleb128 0x6
	.long	.LASF15
	.sleb128 3
	.uleb128 0x6
	.long	.LASF16
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x1a
	.long	0x98
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF18
	.uleb128 0x7
	.long	.LASF89
	.byte	0x2
	.byte	0x5
	.byte	0xc
	.long	0xfe
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xe
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xf
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0x10
	.long	0xd5
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0x5
	.byte	0x13
	.long	0x12c
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x15
	.long	0x4d
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x16
	.long	0xfe
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0x17
	.long	0x109
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.byte	0x5
	.byte	0x1a
	.long	0x15a
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x1c
	.long	0x5f
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x1d
	.long	0xfe
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.byte	0x1e
	.long	0x137
	.uleb128 0xb
	.byte	0x1a
	.byte	0x5
	.byte	0x22
	.long	.LASF90
	.long	0x28a
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.byte	0x24
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.byte	0x26
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.byte	0x28
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.byte	0x32
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5
	.byte	0x33
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0x36
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0x37
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0x38
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0x39
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0x3a
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0x3b
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x3c
	.long	0x165
	.uleb128 0x5
	.long	.LASF50
	.byte	0x1
	.byte	0x6
	.byte	0xe
	.long	0x2b4
	.uleb128 0x6
	.long	.LASF51
	.sleb128 1
	.uleb128 0x6
	.long	.LASF52
	.sleb128 2
	.uleb128 0x6
	.long	.LASF53
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x13
	.long	0x295
	.uleb128 0xc
	.string	"_br"
	.byte	0x1
	.byte	0x7
	.byte	0x26
	.long	0x314
	.uleb128 0x6
	.long	.LASF55
	.sleb128 0
	.uleb128 0x6
	.long	.LASF56
	.sleb128 1
	.uleb128 0x6
	.long	.LASF57
	.sleb128 2
	.uleb128 0x6
	.long	.LASF58
	.sleb128 3
	.uleb128 0x6
	.long	.LASF59
	.sleb128 4
	.uleb128 0x6
	.long	.LASF60
	.sleb128 5
	.uleb128 0x6
	.long	.LASF61
	.sleb128 6
	.uleb128 0x6
	.long	.LASF62
	.sleb128 7
	.uleb128 0x6
	.long	.LASF63
	.sleb128 8
	.uleb128 0x6
	.long	.LASF64
	.sleb128 9
	.uleb128 0x6
	.long	.LASF65
	.sleb128 10
	.uleb128 0x6
	.long	.LASF66
	.sleb128 11
	.byte	0
	.uleb128 0xd
	.long	.LASF91
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x353
	.uleb128 0xe
	.long	.LASF92
	.byte	0x2
	.byte	0x8e
	.long	0x353
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF67
	.byte	0x2
	.byte	0x90
	.long	0x353
	.uleb128 0x10
	.long	.LASF68
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x11
	.byte	0x1
	.long	.LASF93
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x12
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF69
	.uleb128 0x13
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0xd
	.long	.LASF72
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4e9
	.uleb128 0x14
	.long	0x314
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x1b
	.long	0x3b2
	.uleb128 0x15
	.long	0x320
	.byte	0x4
	.long	0x41a00000
	.uleb128 0x16
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x17
	.long	0x32c
	.byte	0x4
	.long	0x489c4000
	.uleb128 0x18
	.long	0x337
	.long	0x4e200
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0x20
	.long	0x3ed
	.uleb128 0x15
	.long	0x320
	.byte	0x4
	.long	0x42c80000
	.uleb128 0x16
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x17
	.long	0x32c
	.byte	0x4
	.long	0x49c35000
	.uleb128 0x18
	.long	0x337
	.long	0x186a00
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.byte	0x28
	.long	0x428
	.uleb128 0x15
	.long	0x320
	.byte	0x4
	.long	0x41a00000
	.uleb128 0x16
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x17
	.long	0x32c
	.byte	0x4
	.long	0x489c4000
	.uleb128 0x18
	.long	0x337
	.long	0x4e200
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x2c
	.long	0x463
	.uleb128 0x15
	.long	0x320
	.byte	0x4
	.long	0x41a00000
	.uleb128 0x16
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x17
	.long	0x32c
	.byte	0x4
	.long	0x489c4000
	.uleb128 0x18
	.long	0x337
	.long	0x4e200
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LVL0
	.long	0x8a7
	.long	0x476
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x19
	.long	.LVL1
	.long	0x8be
	.long	0x48a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x19
	.long	.LVL2
	.long	0x8be
	.long	0x49e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.byte	0
	.uleb128 0x19
	.long	.LVL3
	.long	0x8be
	.long	0x4b1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x19
	.long	.LVL4
	.long	0x8a7
	.long	0x4c4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LVL5
	.long	0x8be
	.long	0x4d8
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x1b
	.long	.LVL6
	.long	0x8be
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x83
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x342
	.byte	0
	.long	0x4f9
	.uleb128 0x12
	.long	0x83
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x2f
	.long	.LASF73
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x528
	.uleb128 0x1d
	.long	.LVL7
	.byte	0x1
	.long	0x8be
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xad
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0x33
	.long	.LASF75
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.byte	0x1
	.long	0x821
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x1
	.byte	0x33
	.long	0x2b4
	.long	.LLST1
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.byte	0x33
	.long	0x821
	.long	.LLST2
	.uleb128 0x19
	.long	.LVL10
	.long	0x8be
	.long	0x577
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x8e
	.byte	0
	.uleb128 0x19
	.long	.LVL11
	.long	0x8be
	.long	0x58b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL12
	.long	0x8d5
	.uleb128 0x19
	.long	.LVL13
	.long	0x8e6
	.long	0x5ac
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LVL14
	.long	0x8e6
	.long	0x5c4
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	.LVL15
	.long	0x8e6
	.long	0x5dc
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	.LVL16
	.long	0x8e6
	.long	0x5f4
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x19
	.long	.LVL17
	.long	0x8e6
	.long	0x60c
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x19
	.long	.LVL18
	.long	0x8e6
	.long	0x624
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x19
	.long	.LVL19
	.long	0x8e6
	.long	0x63c
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x19
	.long	.LVL20
	.long	0x8e6
	.long	0x654
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x19
	.long	.LVL21
	.long	0x8e6
	.long	0x66c
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.long	.LVL22
	.long	0x8e6
	.long	0x684
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x20
	.long	.LVL23
	.long	0x8d5
	.uleb128 0x19
	.long	.LVL24
	.long	0x8e6
	.long	0x6a5
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LVL25
	.long	0x8e6
	.long	0x6bd
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	.LVL26
	.long	0x8e6
	.long	0x6d5
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	.LVL27
	.long	0x8e6
	.long	0x6ed
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x19
	.long	.LVL28
	.long	0x8e6
	.long	0x705
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x19
	.long	.LVL29
	.long	0x8e6
	.long	0x71d
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.long	.LVL30
	.long	0x8d5
	.uleb128 0x19
	.long	.LVL31
	.long	0x8e6
	.long	0x73e
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LVL32
	.long	0x8e6
	.long	0x756
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	.LVL33
	.long	0x8e6
	.long	0x76e
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	.LVL34
	.long	0x8e6
	.long	0x786
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x19
	.long	.LVL35
	.long	0x8e6
	.long	0x79e
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x19
	.long	.LVL36
	.long	0x8e6
	.long	0x7b6
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x19
	.long	.LVL37
	.long	0x8e6
	.long	0x7ce
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x19
	.long	.LVL38
	.long	0x8e6
	.long	0x7e6
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x19
	.long	.LVL39
	.long	0x8e6
	.long	0x7fe
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.long	.LVL40
	.long	0x8e6
	.long	0x816
	.uleb128 0x1a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.long	.LVL43
	.byte	0x1
	.long	0x901
	.byte	0
	.uleb128 0x22
	.byte	0x2
	.long	0x28a
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.byte	0x63
	.long	.LASF79
	.long	.LFB10
	.long	.LFE10
	.long	.LLST3
	.byte	0x1
	.long	0x8a7
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.byte	0x63
	.long	0x4d
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF81
	.byte	0x1
	.byte	0x63
	.long	0x4d
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL46
	.long	0x8be
	.long	0x876
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x89
	.byte	0
	.uleb128 0x20
	.long	.LVL47
	.long	0x8be
	.uleb128 0x19
	.long	.LVL48
	.long	0x8be
	.long	0x893
	.uleb128 0x1a
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL49
	.long	0x8be
	.uleb128 0x21
	.long	.LVL50
	.byte	0x1
	.long	0x8be
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF82
	.byte	0x4
	.byte	0x1c
	.long	.LASF84
	.byte	0x1
	.long	0x8be
	.uleb128 0x12
	.long	0xc3
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF83
	.byte	0x4
	.byte	0x11
	.long	.LASF85
	.byte	0x1
	.long	0x8d5
	.uleb128 0x12
	.long	0x3b
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF94
	.byte	0x4
	.byte	0x1d
	.long	.LASF95
	.long	0x3b
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.long	.LASF96
	.byte	0x4
	.byte	0x1f
	.long	.LASF97
	.long	0x3b
	.byte	0x1
	.long	0x901
	.uleb128 0x12
	.long	0x58
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF98
	.byte	0x4
	.byte	0x1e
	.long	.LASF99
	.byte	0x1
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB9
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
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL42
	.word	0x1
	.byte	0x61
	.long	.LVL42
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL10-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL41
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB10
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LFE10
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
.LLST4:
	.long	.LVL44
	.long	.LVL45
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL45
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL44
	.long	.LVL46-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"roomba_sensor_data_t"
.LASF54:
	.string	"ROOMBA_SENSOR_GROUP"
.LASF12:
	.string	"UART_19200"
.LASF56:
	.string	"ROOMBA_600BPS"
.LASF29:
	.string	"wall"
.LASF63:
	.string	"ROOMBA_28800BPS"
.LASF42:
	.string	"charging_state"
.LASF0:
	.string	"int8_t"
.LASF61:
	.string	"ROOMBA_14400BPS"
.LASF53:
	.string	"INTERNAL"
.LASF71:
	.string	"Roomba_Finish"
.LASF93:
	.string	"__builtin_avr_delay_cycles"
.LASF39:
	.string	"buttons"
.LASF76:
	.string	"group"
.LASF37:
	.string	"dirt_right"
.LASF72:
	.string	"_Z11Roomba_Initv"
.LASF82:
	.string	"Roomba_UART_Init"
.LASF36:
	.string	"dirt_left"
.LASF59:
	.string	"ROOMBA_4800BPS"
.LASF94:
	.string	"uart_bytes_received"
.LASF80:
	.string	"velocity"
.LASF87:
	.string	"../roomba/roomba.cpp"
.LASF21:
	.string	"int16_split"
.LASF20:
	.string	"high_byte"
.LASF31:
	.string	"cliff_front_left"
.LASF13:
	.string	"UART_38400"
.LASF17:
	.string	"UART_BPS"
.LASF41:
	.string	"angle"
.LASF1:
	.string	"uint8_t"
.LASF55:
	.string	"ROOMBA_300BPS"
.LASF74:
	.string	"Roomba_UpdateSensorPacket"
.LASF70:
	.string	"Roomba_Init"
.LASF19:
	.string	"low_byte"
.LASF62:
	.string	"ROOMBA_19200BPS"
.LASF67:
	.string	"__tmp"
.LASF73:
	.string	"_Z13Roomba_Finishv"
.LASF10:
	.string	"long long int"
.LASF35:
	.string	"motor_overcurrents"
.LASF7:
	.string	"long int"
.LASF43:
	.string	"voltage"
.LASF23:
	.string	"bytes"
.LASF91:
	.string	"_delay_ms"
.LASF38:
	.string	"remote_opcode"
.LASF34:
	.string	"virtual_wall"
.LASF14:
	.string	"UART_57600"
.LASF84:
	.string	"_Z16Roomba_UART_Init9_uart_bps"
.LASF95:
	.string	"_Z19uart_bytes_receivedv"
.LASF46:
	.string	"charge"
.LASF33:
	.string	"cliff_right"
.LASF90:
	.string	"20roomba_sensor_data_t"
.LASF65:
	.string	"ROOMBA_57600BPS"
.LASF3:
	.string	"unsigned char"
.LASF77:
	.string	"sensor_packet"
.LASF81:
	.string	"radius"
.LASF2:
	.string	"signed char"
.LASF47:
	.string	"capacity"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF5:
	.string	"uint16_t"
.LASF27:
	.string	"uint16_u"
.LASF57:
	.string	"ROOMBA_1200BPS"
.LASF44:
	.string	"current"
.LASF32:
	.string	"cliff_front_right"
.LASF58:
	.string	"ROOMBA_2400BPS"
.LASF16:
	.string	"UART_DEFAULT"
.LASF18:
	.string	"char"
.LASF40:
	.string	"distance"
.LASF96:
	.string	"uart_get_byte"
.LASF98:
	.string	"uart_reset_receive"
.LASF78:
	.string	"Roomba_Drive"
.LASF4:
	.string	"int16_t"
.LASF24:
	.string	"int16_u"
.LASF88:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF15:
	.string	"UART_115200"
.LASF50:
	.string	"_rsg"
.LASF9:
	.string	"long unsigned int"
.LASF79:
	.string	"_Z12Roomba_Driveii"
.LASF89:
	.string	"_i16s"
.LASF69:
	.string	"double"
.LASF25:
	.string	"_i16u"
.LASF66:
	.string	"ROOMBA_115200BPS"
.LASF75:
	.string	"_Z25Roomba_UpdateSensorPacket4_rsgP20roomba_sensor_data_t"
.LASF45:
	.string	"temperature"
.LASF83:
	.string	"Roomba_Send_Byte"
.LASF51:
	.string	"EXTERNAL_ROOMBA"
.LASF92:
	.string	"__ms"
.LASF68:
	.string	"__ticks_dc"
.LASF26:
	.string	"_u16u"
.LASF60:
	.string	"ROOMBA_9600BPS"
.LASF52:
	.string	"CHASSIS"
.LASF49:
	.string	"_uart_bps"
.LASF30:
	.string	"cliff_left"
.LASF64:
	.string	"ROOMBA_38400BPS"
.LASF28:
	.string	"bumps_wheeldrops"
.LASF22:
	.string	"value"
.LASF85:
	.string	"_Z16Roomba_Send_Byteh"
.LASF97:
	.string	"_Z13uart_get_bytei"
.LASF99:
	.string	"_Z18uart_reset_receivev"
.LASF86:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
