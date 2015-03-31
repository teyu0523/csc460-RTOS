	.file	"ir.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z7IR_initv,"ax",@progbits
.global	_Z7IR_initv
	.type	_Z7IR_initv, @function
_Z7IR_initv:
.LFB6:
	.file 1 "../ir/ir.cpp"
	.loc 1 25 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 28 0
	sbi 0x4,4
	.loc 1 29 0
	ldi r26,lo8(-80)
	ldi r27,0
	st X,__zero_reg__
	.loc 1 30 0
	ldi r30,lo8(-79)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 32 0
	ld r24,X
	ori r24,lo8(3)
	st X,r24
	.loc 1 33 0
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	.loc 1 35 0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 36 0
	ldi r24,lo8(-91)
	ldi r25,lo8(1)
	sts 136+1,r25
	sts 136,r24
	.loc 1 37 0
	ldi r24,lo8(-46)
	ldi r25,0
	sts 140+1,r25
	sts 140,r24
	.loc 1 42 0
	sts 128,__zero_reg__
	.loc 1 43 0
	ldi r30,lo8(-127)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 46 0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 48 0
	ldi r30,lo8(111)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 52 0
	cbi 0xd,5
	.loc 1 53 0
	ldi r30,lo8(106)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(12)
	st Z,r24
	ret
	.cfi_endproc
.LFE6:
	.size	_Z7IR_initv, .-_Z7IR_initv
	.section	.text.__vector_6,"ax",@progbits
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
.LFB7:
	.loc 1 61 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 62 0
	lds r24,is_receiving
	cpse r24,__zero_reg__
	rjmp .L2
	.loc 1 64 0
	ldi r24,lo8(1)
	sts is_receiving,r24
	.loc 1 65 0
	sts currentBit,__zero_reg__
	.loc 1 66 0
	sts currentByte,__zero_reg__
	.loc 1 68 0
	sbi 0x16,1
	.loc 1 70 0
	lds r24,132
	lds r25,132+1
	subi r24,32
	sbci r25,-47
	sts 136+1,r25
	sts 136,r24
	.loc 1 71 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
.L2:
/* epilogue start */
	.loc 1 73 0
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE7:
	.size	__vector_6, .-__vector_6
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
.LFB8:
	.loc 1 76 0
	.cfi_startproc
	push r1
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI6:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
.LCFI7:
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r24
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 24, -7
	push r25
.LCFI9:
	.cfi_def_cfa_offset 9
	.cfi_offset 25, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 77 0
	lds r24,is_receiving
	tst r24
	breq .L6
	.loc 1 78 0
	sbis 0xc,4
	rjmp .L7
	.loc 1 79 0
	lds r19,currentBit
	lds r18,currentByte
	ldi r24,lo8(1)
	ldi r25,0
	mov r0,r19
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
	or r24,r18
	sts currentByte,r24
.L7:
	.loc 1 82 0
	lds r24,currentBit
	subi r24,lo8(-(1))
	sts currentBit,r24
	.loc 1 83 0
	lds r24,136
	lds r25,136+1
	subi r24,-64
	sbci r25,-32
	sts 136+1,r25
	sts 136,r24
	.loc 1 85 0
	lds r24,currentBit
	cpi r24,lo8(8)
	brlo .L5
	.loc 1 86 0
	sts is_receiving,__zero_reg__
	.loc 1 87 0
	lds r24,111
	andi r24,lo8(-3)
	sts 111,r24
	.loc 1 88 0
	sbi 0x16,1
	.loc 1 89 0
	sbi 0x1c,4
	rjmp .L5
.L6:
	.loc 1 91 0
	lds r24,is_transmitting
.L5:
/* epilogue start */
	.loc 1 95 0
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE8:
	.size	__vector_17, .-__vector_17
	.section	.text._Z15enable_interuptv,"ax",@progbits
.global	_Z15enable_interuptv
	.type	_Z15enable_interuptv, @function
_Z15enable_interuptv:
.LFB9:
	.loc 1 97 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 99 0
	sbi 0x1c,4
	.loc 1 100 0
	sbi 0x1d,4
	ret
	.cfi_endproc
.LFE9:
	.size	_Z15enable_interuptv, .-_Z15enable_interuptv
	.section	.text._Z16disable_interuptv,"ax",@progbits
.global	_Z16disable_interuptv
	.type	_Z16disable_interuptv, @function
_Z16disable_interuptv:
.LFB10:
	.loc 1 103 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 104 0
	cbi 0x1d,4
	.loc 1 105 0
	ldi r30,lo8(111)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 106 0
	sbi 0x16,1
	.loc 1 107 0
	sts is_receiving,__zero_reg__
	ret
	.cfi_endproc
.LFE10:
	.size	_Z16disable_interuptv, .-_Z16disable_interuptv
	.section	.text._Z4markv,"ax",@progbits
.global	_Z4markv
	.type	_Z4markv, @function
_Z4markv:
.LFB11:
	.loc 1 110 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 111 0
	ldi r30,lo8(-80)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
.LVL0:
.LBB8:
.LBB9:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 245 0
	ldi r24,lo8(1999)
	ldi r25,hi8(1999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	ret
.LBE9:
.LBE8:
	.cfi_endproc
.LFE11:
	.size	_Z4markv, .-_Z4markv
	.section	.text._Z5spacev,"ax",@progbits
.global	_Z5spacev
	.type	_Z5spacev, @function
_Z5spacev:
.LFB12:
	.loc 1 115 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 116 0
	ldi r30,lo8(-80)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(127)
	st Z,r24
.LVL1:
.LBB10:
.LBB11:
	.loc 2 245 0
	ldi r24,lo8(1999)
	ldi r25,hi8(1999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	ret
.LBE11:
.LBE10:
	.cfi_endproc
.LFE12:
	.size	_Z5spacev, .-_Z5spacev
	.section	.text._Z11IR_transmith,"ax",@progbits
.global	_Z11IR_transmith
	.type	_Z11IR_transmith, @function
_Z11IR_transmith:
.LFB13:
	.loc 1 121 0
	.cfi_startproc
.LVL2:
	push r16
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI11:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI12:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI13:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
.LBB12:
	.loc 1 122 0
/* #APP */
 ;  122 "../ir/ir.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 123 0
/* #NOAPP */
	call _Z16disable_interuptv
.LVL3:
	.loc 1 124 0
	call _Z4markv
.LVL4:
	.loc 1 125 0
	call _Z5spacev
.LVL5:
.LBB13:
	.loc 1 126 0
	ldi r28,0
	ldi r29,0
	.loc 1 127 0
	ldi r17,0
.LVL6:
.L20:
	movw r24,r16
	mov r0,r28
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbrs r24,0
	rjmp .L17
	.loc 1 128 0
	call _Z4markv
.LVL7:
	rjmp .L18
.L17:
	.loc 1 130 0
	call _Z5spacev
.LVL8:
.L18:
	.loc 1 126 0
	adiw r28,1
.LVL9:
	cpi r28,8
	cpc r29,__zero_reg__
	brne .L20
.LBE13:
	.loc 1 133 0
	call _Z5spacev
.LVL10:
	.loc 1 134 0
	call _Z15enable_interuptv
.LVL11:
	.loc 1 135 0
/* #APP */
 ;  135 "../ir/ir.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
.LBE12:
	.loc 1 136 0
	pop r29
	pop r28
.LVL12:
	pop r17
	pop r16
.LVL13:
	ret
	.cfi_endproc
.LFE13:
	.size	_Z11IR_transmith, .-_Z11IR_transmith
.global	outputByte
	.section	.bss.outputByte,"aw",@nobits
	.type	outputByte, @object
	.size	outputByte, 1
outputByte:
	.zero	1
.global	currentByte
	.section	.bss.currentByte,"aw",@nobits
	.type	currentByte, @object
	.size	currentByte, 1
currentByte:
	.zero	1
.global	currentBit
	.section	.bss.currentBit,"aw",@nobits
	.type	currentBit, @object
	.size	currentBit, 1
currentBit:
	.zero	1
.global	is_transmitting
	.section	.bss.is_transmitting,"aw",@nobits
	.type	is_transmitting, @object
	.size	is_transmitting, 1
is_transmitting:
	.zero	1
.global	is_receiving
	.section	.bss.is_receiving,"aw",@nobits
	.type	is_receiving, @object
	.size	is_receiving, 1
is_receiving:
	.zero	1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2cb
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.long	.LASF32
	.long	.LASF33
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x7e
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF34
	.byte	0x2
	.byte	0xe0
	.byte	0x3
	.long	0xb6
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0xe0
	.long	0xb6
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0xe2
	.long	0xb6
	.uleb128 0x8
	.long	.LASF10
	.byte	0x2
	.byte	0xe6
	.long	0x57
	.uleb128 0x9
	.byte	0x1
	.long	.LASF36
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.uleb128 0xa
	.long	0x62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0xb
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x19
	.long	.LASF16
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x3d
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x4c
	.long	.LFB8
	.long	.LFE8
	.long	.LLST1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x61
	.long	.LASF17
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x67
	.long	.LASF19
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x6e
	.long	.LASF22
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x185
	.uleb128 0xe
	.long	0x77
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x71
	.uleb128 0xf
	.long	0x83
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x10
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x11
	.long	0x8f
	.byte	0x4
	.long	0x45fa0000
	.uleb128 0x12
	.long	0x9a
	.word	0x1f40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xa5
	.byte	0
	.long	0x195
	.uleb128 0xa
	.long	0x62
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x73
	.long	.LASF23
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1e8
	.uleb128 0xe
	.long	0x77
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x76
	.uleb128 0xf
	.long	0x83
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x10
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x11
	.long	0x8f
	.byte	0x4
	.long	0x45fa0000
	.uleb128 0x12
	.long	0x9a
	.word	0x1f40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x79
	.long	.LASF25
	.long	.LFB13
	.long	.LFE13
	.long	.LLST2
	.byte	0x1
	.long	0x26f
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0x79
	.long	0x30
	.long	.LLST3
	.uleb128 0x16
	.long	.LBB13
	.long	.LBE13
	.long	0x241
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0x42
	.long	.LLST4
	.uleb128 0x18
	.long	.LVL7
	.long	0x132
	.uleb128 0x18
	.long	.LVL8
	.long	0x195
	.byte	0
	.uleb128 0x18
	.long	.LVL3
	.long	0x119
	.uleb128 0x18
	.long	.LVL4
	.long	0x132
	.uleb128 0x18
	.long	.LVL5
	.long	0x195
	.uleb128 0x18
	.long	.LVL10
	.long	0x195
	.uleb128 0x18
	.long	.LVL11
	.long	0x100
	.byte	0
	.uleb128 0x19
	.long	.LASF26
	.byte	0x1
	.byte	0xf
	.long	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	is_receiving
	.uleb128 0x1a
	.long	0x30
	.uleb128 0x19
	.long	.LASF27
	.byte	0x1
	.byte	0x10
	.long	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	is_transmitting
	.uleb128 0x19
	.long	.LASF28
	.byte	0x1
	.byte	0x11
	.long	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	currentBit
	.uleb128 0x19
	.long	.LASF29
	.byte	0x1
	.byte	0x12
	.long	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	currentByte
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x13
	.long	0x281
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	outputByte
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
	.uleb128 0x3
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB7
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
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI3
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST1:
	.long	.LFB8
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
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI9
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST2:
	.long	.LFB13
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI13
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3-1
	.word	0x1
	.byte	0x68
	.long	.LVL3-1
	.long	.LVL13
	.word	0x1
	.byte	0x60
	.long	.LVL13
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL12
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"_Z5spacev"
.LASF20:
	.string	"mark"
.LASF22:
	.string	"_Z4markv"
.LASF29:
	.string	"currentByte"
.LASF28:
	.string	"currentBit"
.LASF33:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF32:
	.string	"../ir/ir.cpp"
.LASF35:
	.string	"__us"
.LASF36:
	.string	"__builtin_avr_delay_cycles"
.LASF18:
	.string	"disable_interupt"
.LASF25:
	.string	"_Z11IR_transmith"
.LASF21:
	.string	"space"
.LASF24:
	.string	"IR_transmit"
.LASF37:
	.string	"data"
.LASF13:
	.string	"__vector_17"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF11:
	.string	"double"
.LASF15:
	.string	"enable_interupt"
.LASF30:
	.string	"outputByte"
.LASF14:
	.string	"IR_init"
.LASF2:
	.string	"unsigned int"
.LASF34:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF27:
	.string	"is_transmitting"
.LASF7:
	.string	"long long int"
.LASF31:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF26:
	.string	"is_receiving"
.LASF10:
	.string	"__ticks_dc"
.LASF16:
	.string	"_Z7IR_initv"
.LASF17:
	.string	"_Z15enable_interuptv"
.LASF9:
	.string	"__tmp"
.LASF12:
	.string	"__vector_6"
.LASF5:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"_Z16disable_interuptv"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
