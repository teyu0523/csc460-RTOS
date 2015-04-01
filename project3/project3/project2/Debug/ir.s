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
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 68 0
	ldi r30,lo8(10)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(40)
	st Z,r24
	.loc 1 69 0
	ldi r26,lo8(32)
	ldi r27,lo8(1)
	st X,__zero_reg__
	.loc 1 70 0
	ldi r30,lo8(33)
	ldi r31,lo8(1)
	st Z,__zero_reg__
	.loc 1 73 0
	ld r24,X
	ori r24,lo8(3)
	st X,r24
	.loc 1 74 0
	ld r24,Z
	ori r24,lo8(24)
	st Z,r24
	.loc 1 77 0
	ld r24,X
	andi r24,lo8(-9)
	st X,r24
	.loc 1 80 0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 82 0
	ldi r24,lo8(-91)
	ldi r25,lo8(1)
	sts 296+1,r25
	sts 296,r24
	.loc 1 83 0
	ldi r24,lo8(-46)
	ldi r25,0
	sts 300+1,r25
	sts 300,r24
	.loc 1 87 0
	sts 144,__zero_reg__
	.loc 1 88 0
	ldi r30,lo8(-111)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 91 0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 93 0
	ldi r30,lo8(113)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 96 0
	cbi 0xd,5
	.loc 1 98 0
	ldi r30,lo8(106)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(12)
	st Z,r24
	.loc 1 99 0
	sbi 0x1d,5
	.loc 1 100 0
	sbi 0x1c,5
	ret
	.cfi_endproc
.LFE6:
	.size	_Z7IR_initv, .-_Z7IR_initv
	.section	.text.__vector_6,"ax",@progbits
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
.LFB7:
	.loc 1 119 0
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
	.loc 1 120 0
	lds r24,is_receiving
	cpse r24,__zero_reg__
	rjmp .L2
	.loc 1 122 0
	ldi r24,lo8(1)
	sts is_receiving,r24
	.loc 1 123 0
	sts currentBit,__zero_reg__
	.loc 1 124 0
	sts currentByte,__zero_reg__
	.loc 1 127 0
	sbi 0x18,1
	.loc 1 131 0
	lds r24,148
	lds r25,148+1
	subi r24,32
	sbci r25,-47
	sts 152+1,r25
	sts 152,r24
	.loc 1 133 0
	lds r24,113
	ori r24,lo8(2)
	sts 113,r24
.L2:
/* epilogue start */
	.loc 1 135 0
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
	.section	.text.__vector_32,"ax",@progbits
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
.LFB8:
	.loc 1 160 0
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
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI6:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
.LCFI7:
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r20
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 20, -7
	push r21
.LCFI9:
	.cfi_def_cfa_offset 9
	.cfi_offset 21, -8
	push r22
.LCFI10:
	.cfi_def_cfa_offset 10
	.cfi_offset 22, -9
	push r23
.LCFI11:
	.cfi_def_cfa_offset 11
	.cfi_offset 23, -10
	push r24
.LCFI12:
	.cfi_def_cfa_offset 12
	.cfi_offset 24, -11
	push r25
.LCFI13:
	.cfi_def_cfa_offset 13
	.cfi_offset 25, -12
	push r26
.LCFI14:
	.cfi_def_cfa_offset 14
	.cfi_offset 26, -13
	push r27
.LCFI15:
	.cfi_def_cfa_offset 15
	.cfi_offset 27, -14
	push r30
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -15
	push r31
.LCFI17:
	.cfi_def_cfa_offset 17
	.cfi_offset 31, -16
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	.loc 1 161 0
	lds r24,is_receiving
	tst r24
	breq .L6
	.loc 1 164 0
	sbic 0xc,5
	rjmp .L7
	.loc 1 165 0
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
	.loc 1 168 0
	lds r24,currentBit
	subi r24,lo8(-(1))
	sts currentBit,r24
	.loc 1 169 0
	lds r24,152
	lds r25,152+1
	subi r24,-64
	sbci r25,-32
	sts 152+1,r25
	sts 152,r24
	.loc 1 171 0
	lds r24,currentBit
	cpi r24,lo8(8)
	brlo .L5
	.loc 1 172 0
	sts is_receiving,__zero_reg__
	.loc 1 175 0
	lds r24,113
	andi r24,lo8(-3)
	sts 113,r24
	.loc 1 178 0
	sbi 0x18,1
	.loc 1 181 0
	sbi 0x1c,5
	.loc 1 184 0
	lds r24,currentByte
	sts outputByte,r24
	.loc 1 185 0
	call _Z12ir_rxhandlerv
.LVL0:
	rjmp .L5
.L6:
	.loc 1 187 0
	lds r24,is_transmitting
.L5:
/* epilogue start */
	.loc 1 190 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE8:
	.size	__vector_32, .-__vector_32
	.section	.text._Z16enable_interruptv,"ax",@progbits
.global	_Z16enable_interruptv
	.type	_Z16enable_interruptv, @function
_Z16enable_interruptv:
.LFB9:
	.loc 1 198 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 200 0
	sbi 0x1c,5
	.loc 1 201 0
	sbi 0x1d,5
	ret
	.cfi_endproc
.LFE9:
	.size	_Z16enable_interruptv, .-_Z16enable_interruptv
	.section	.text._Z17disable_interruptv,"ax",@progbits
.global	_Z17disable_interruptv
	.type	_Z17disable_interruptv, @function
_Z17disable_interruptv:
.LFB10:
	.loc 1 211 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 212 0
	cbi 0x1d,5
	.loc 1 213 0
	ldi r30,lo8(113)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 214 0
	sbi 0x18,1
	.loc 1 215 0
	sts is_receiving,__zero_reg__
	ret
	.cfi_endproc
.LFE10:
	.size	_Z17disable_interruptv, .-_Z17disable_interruptv
	.section	.text._Z4markv,"ax",@progbits
.global	_Z4markv
	.type	_Z4markv, @function
_Z4markv:
.LFB11:
	.loc 1 229 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 230 0
	ldi r30,lo8(32)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	.loc 1 231 0
	sbi 0x8,2
.LVL1:
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
	.loc 1 234 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 235 0
	ldi r30,lo8(32)
	ldi r31,lo8(1)
	ld r24,Z
	andi r24,lo8(-9)
	st Z,r24
	.loc 1 236 0
	cbi 0x8,2
.LVL2:
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
	.loc 1 257 0
	.cfi_startproc
.LVL3:
	push r16
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI21:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
.LBB12:
	.loc 1 262 0
	call _Z4markv
.LVL4:
	.loc 1 263 0
	call _Z5spacev
.LVL5:
.LBB13:
	.loc 1 264 0
	ldi r28,0
	ldi r29,0
	.loc 1 265 0
	ldi r17,0
.LVL6:
.L17:
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
	rjmp .L14
	.loc 1 266 0
	call _Z4markv
.LVL7:
	rjmp .L15
.L14:
	.loc 1 268 0
	call _Z5spacev
.LVL8:
.L15:
	.loc 1 264 0
	adiw r28,1
.LVL9:
	cpi r28,8
	cpc r29,__zero_reg__
	brne .L17
/* epilogue start */
.LBE13:
.LBE12:
	.loc 1 275 0
	pop r29
	pop r28
.LVL10:
	pop r17
	pop r16
.LVL11:
.LBB14:
	.loc 1 271 0
	jmp _Z5spacev
.LVL12:
.LBE14:
	.cfi_endproc
.LFE13:
	.size	_Z11IR_transmith, .-_Z11IR_transmith
	.section	.text._Z10IR_getLastv,"ax",@progbits
.global	_Z10IR_getLastv
	.type	_Z10IR_getLastv, @function
_Z10IR_getLastv:
.LFB14:
	.loc 1 277 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 278 0
	lds r24,outputByte
	.loc 1 279 0
	ret
	.cfi_endproc
.LFE14:
	.size	_Z10IR_getLastv, .-_Z10IR_getLastv
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
	.long	0x2f6
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.long	.LASF29
	.long	.LASF30
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
	.long	.LASF31
	.byte	0x2
	.byte	0xe0
	.byte	0x3
	.long	0xb6
	.uleb128 0x6
	.long	.LASF32
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
	.long	.LASF33
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
	.long	.LASF12
	.byte	0x1
	.byte	0x40
	.long	.LASF14
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x77
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xa0
	.long	.LFB8
	.long	.LFE8
	.long	.LLST1
	.byte	0x1
	.long	0x10e
	.uleb128 0xe
	.long	.LVL0
	.long	0x2ec
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0xc6
	.long	.LASF15
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0xd3
	.long	.LASF17
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0xe5
	.long	.LASF20
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x193
	.uleb128 0x10
	.long	0x77
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0xe8
	.uleb128 0x11
	.long	0x83
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x12
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x13
	.long	0x8f
	.byte	0x4
	.long	0x45fa0000
	.uleb128 0x14
	.long	0x9a
	.word	0x1f40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xa5
	.byte	0
	.long	0x1a3
	.uleb128 0xa
	.long	0x62
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0xea
	.long	.LASF21
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1f6
	.uleb128 0x10
	.long	0x77
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0xed
	.uleb128 0x11
	.long	0x83
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x12
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x13
	.long	0x8f
	.byte	0x4
	.long	0x45fa0000
	.uleb128 0x14
	.long	0x9a
	.word	0x1f40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.word	0x101
	.long	.LASF36
	.long	.LFB13
	.long	.LFE13
	.long	.LLST2
	.byte	0x1
	.long	0x26f
	.uleb128 0x17
	.long	.LASF37
	.byte	0x1
	.word	0x101
	.long	0x30
	.long	.LLST3
	.uleb128 0x18
	.long	.LBB13
	.long	.LBE13
	.long	0x252
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.word	0x108
	.long	0x42
	.long	.LLST4
	.uleb128 0xe
	.long	.LVL7
	.long	0x140
	.uleb128 0xe
	.long	.LVL8
	.long	0x1a3
	.byte	0
	.uleb128 0xe
	.long	.LVL4
	.long	0x140
	.uleb128 0xe
	.long	.LVL5
	.long	0x1a3
	.uleb128 0x1a
	.long	.LVL12
	.byte	0x1
	.long	0x1a3
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.word	0x115
	.long	.LASF39
	.long	0x30
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x1
	.byte	0xf
	.long	0x29f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	is_receiving
	.uleb128 0x1d
	.long	0x30
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x1
	.byte	0x10
	.long	0x29f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	is_transmitting
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x1
	.byte	0x11
	.long	0x29f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	currentBit
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x1
	.byte	0x12
	.long	0x29f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	currentByte
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x1
	.byte	0x13
	.long	0x29f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	outputByte
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0xd
	.long	.LASF41
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI17
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	0
	.long	0
.LLST2:
	.long	.LFB13
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI21
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4-1
	.word	0x1
	.byte	0x68
	.long	.LVL4-1
	.long	.LVL11
	.word	0x1
	.byte	0x60
	.long	.LVL11
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
	.long	.LVL10
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
	.long	0x5c
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
	.long	.LFB14
	.long	.LFE14-.LFB14
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
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"_Z5spacev"
.LASF18:
	.string	"mark"
.LASF20:
	.string	"_Z4markv"
.LASF15:
	.string	"_Z16enable_interruptv"
.LASF26:
	.string	"currentByte"
.LASF39:
	.string	"_Z10IR_getLastv"
.LASF25:
	.string	"currentBit"
.LASF30:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF29:
	.string	"../ir/ir.cpp"
.LASF32:
	.string	"__us"
.LASF33:
	.string	"__builtin_avr_delay_cycles"
.LASF36:
	.string	"_Z11IR_transmith"
.LASF19:
	.string	"space"
.LASF37:
	.string	"data"
.LASF22:
	.string	"IR_transmit"
.LASF35:
	.string	"__vector_32"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF17:
	.string	"_Z17disable_interruptv"
.LASF40:
	.string	"ir_rxhandler"
.LASF11:
	.string	"double"
.LASF27:
	.string	"outputByte"
.LASF12:
	.string	"IR_init"
.LASF16:
	.string	"disable_interrupt"
.LASF2:
	.string	"unsigned int"
.LASF31:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF24:
	.string	"is_transmitting"
.LASF41:
	.string	"_Z12ir_rxhandlerv"
.LASF13:
	.string	"enable_interrupt"
.LASF7:
	.string	"long long int"
.LASF28:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF23:
	.string	"is_receiving"
.LASF10:
	.string	"__ticks_dc"
.LASF14:
	.string	"_Z7IR_initv"
.LASF9:
	.string	"__tmp"
.LASF38:
	.string	"IR_getLast"
.LASF34:
	.string	"__vector_6"
.LASF5:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
