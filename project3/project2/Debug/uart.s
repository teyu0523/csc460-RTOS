	.file	"uart.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z12uart_putcharc,"ax",@progbits
.global	_Z12uart_putcharc
	.type	_Z12uart_putcharc, @function
_Z12uart_putcharc:
.LFB0:
	.file 1 "../uart/uart.cpp"
	.loc 1 15 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 16 0
/* #APP */
 ;  16 "../uart/uart.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L3:
	.loc 1 18 0 discriminator 1
	lds r25,192
	sbrs r25,5
	rjmp .L3
	.loc 1 19 0
	sts 198,r24
	.loc 1 20 0
/* #APP */
 ;  20 "../uart/uart.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE0:
	.size	_Z12uart_putcharc, .-_Z12uart_putcharc
	.section	.text._Z12uart_getchari,"ax",@progbits
.global	_Z12uart_getchari
	.type	_Z12uart_getchari, @function
_Z12uart_getchari:
.LFB1:
	.loc 1 24 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 25 0
	cpi r24,100
	cpc r25,__zero_reg__
	brge .L7
	.loc 1 26 0
	movw r30,r24
	subi r30,lo8(-(_ZL2rx))
	sbci r31,hi8(-(_ZL2rx))
	ld r24,Z
.LVL2:
	ret
.LVL3:
.L7:
	.loc 1 28 0
	ldi r24,0
.LVL4:
	.loc 1 29 0
	ret
	.cfi_endproc
.LFE1:
	.size	_Z12uart_getchari, .-_Z12uart_getchari
	.section	.text._Z11uart_putstrPc,"ax",@progbits
.global	_Z11uart_putstrPc
	.type	_Z11uart_putstrPc, @function
_Z11uart_putstrPc:
.LFB2:
	.loc 1 32 0
	.cfi_startproc
.LVL5:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LVL6:
.L9:
	.loc 1 33 0 discriminator 1
	ld r24,Y+
.LVL7:
	tst r24
	breq .L11
.LVL8:
	.loc 1 33 0 is_stmt 0 discriminator 2
	call _Z12uart_putcharc
.LVL9:
	rjmp .L9
.LVL10:
.L11:
/* epilogue start */
	.loc 1 35 0 is_stmt 1
	pop r29
	pop r28
.LVL11:
	ret
	.cfi_endproc
.LFE2:
	.size	_Z11uart_putstrPc, .-_Z11uart_putstrPc
	.section	.text._Z10uart_writePhi,"ax",@progbits
.global	_Z10uart_writePhi
	.type	_Z10uart_writePhi, @function
_Z10uart_writePhi:
.LFB3:
	.loc 1 37 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 38 0
	call _Z11uart_putstrPc
.LVL13:
	.loc 1 40 0
	ldi r24,0
	ldi r25,0
	ret
	.cfi_endproc
.LFE3:
	.size	_Z10uart_writePhi, .-_Z10uart_writePhi
	.section	.text._Z9uart_initv,"ax",@progbits
.global	_Z9uart_initv
	.type	_Z9uart_initv, @function
_Z9uart_initv:
.LFB4:
	.loc 1 42 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB2:
	.loc 1 47 0
	sts _ZL3rxn+1,__zero_reg__
	sts _ZL3rxn,__zero_reg__
	.loc 1 48 0
	sts _ZL7uart_rx,__zero_reg__
.LVL14:
	.loc 1 52 0
	sts 197,__zero_reg__
	.loc 1 53 0
	ldi r24,lo8(103)
	sts 196,r24
	.loc 1 56 0
	ldi r24,lo8(-104)
	sts 193,r24
	.loc 1 59 0
	ldi r24,lo8(14)
	sts 194,r24
	ret
.LBE2:
	.cfi_endproc
.LFE4:
	.size	_Z9uart_initv, .-_Z9uart_initv
	.section	.text._Z15uart_bytes_recvv,"ax",@progbits
.global	_Z15uart_bytes_recvv
	.type	_Z15uart_bytes_recvv, @function
_Z15uart_bytes_recvv:
.LFB5:
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 64 0
	lds r24,_ZL3rxn
	lds r25,_ZL3rxn+1
	.loc 1 65 0
	ret
	.cfi_endproc
.LFE5:
	.size	_Z15uart_bytes_recvv, .-_Z15uart_bytes_recvv
	.section	.text._Z15uart_reset_recvv,"ax",@progbits
.global	_Z15uart_reset_recvv
	.type	_Z15uart_reset_recvv, @function
_Z15uart_reset_recvv:
.LFB6:
	.loc 1 68 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 69 0
	sts _ZL3rxn+1,__zero_reg__
	sts _ZL3rxn,__zero_reg__
	ret
	.cfi_endproc
.LFE6:
	.size	_Z15uart_reset_recvv, .-_Z15uart_reset_recvv
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB7:
	.loc 1 77 0
	.cfi_startproc
	push r1
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r21
.LCFI4:
	.cfi_def_cfa_offset 6
	.cfi_offset 21, -5
	push r22
.LCFI5:
	.cfi_def_cfa_offset 7
	.cfi_offset 22, -6
	push r23
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 23, -7
	push r24
.LCFI7:
	.cfi_def_cfa_offset 9
	.cfi_offset 24, -8
	push r25
.LCFI8:
	.cfi_def_cfa_offset 10
	.cfi_offset 25, -9
	push r26
.LCFI9:
	.cfi_def_cfa_offset 11
	.cfi_offset 26, -10
	push r27
.LCFI10:
	.cfi_def_cfa_offset 12
	.cfi_offset 27, -11
	push r30
.LCFI11:
	.cfi_def_cfa_offset 13
	.cfi_offset 30, -12
	push r31
.LCFI12:
	.cfi_def_cfa_offset 14
	.cfi_offset 31, -13
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
.L18:
	.loc 1 78 0 discriminator 1
	lds r24,192
	sbrs r24,7
	rjmp .L18
	.loc 1 82 0
	lds r30,_ZL3rxn
	lds r31,_ZL3rxn+1
	lds r24,198
	subi r30,lo8(-(_ZL2rx))
	sbci r31,hi8(-(_ZL2rx))
	st Z,r24
	.loc 1 83 0
	lds r24,_ZL3rxn
	lds r25,_ZL3rxn+1
	adiw r24,1
	ldi r22,lo8(100)
	ldi r23,0
	call __divmodhi4
	sts _ZL3rxn+1,r25
	sts _ZL3rxn,r24
	.loc 1 84 0
	ldi r24,lo8(1)
	sts _ZL7uart_rx,r24
/* epilogue start */
	.loc 1 86 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE7:
	.size	__vector_25, .-__vector_25
	.section	.bss._ZL7uart_rx,"aw",@nobits
	.type	_ZL7uart_rx, @object
	.size	_ZL7uart_rx, 1
_ZL7uart_rx:
	.zero	1
	.section	.bss._ZL2rx,"aw",@nobits
	.type	_ZL2rx, @object
	.size	_ZL2rx, 100
_ZL2rx:
	.zero	100
	.section	.bss._ZL3rxn,"aw",@nobits
	.type	_ZL3rxn, @object
	.size	_ZL3rxn, 2
_ZL3rxn:
	.zero	2
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x247
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.long	.LASF25
	.long	.LASF26
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
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
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7c
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
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
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0xe
	.long	.LASF13
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa0
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0xe
	.long	0xa0
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x7
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	.LASF17
	.long	0xa0
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd8
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0x17
	.long	0x42
	.long	.LLST0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x1f
	.long	.LASF14
	.long	.LFB2
	.long	.LFE2
	.long	.LLST1
	.byte	0x1
	.long	0x10c
	.uleb128 0xa
	.string	"s"
	.byte	0x1
	.byte	0x1f
	.long	0x10c
	.long	.LLST2
	.uleb128 0xb
	.long	.LVL9
	.long	0x77
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0xa0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x25
	.long	.LASF18
	.long	0x42
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x168
	.uleb128 0xa
	.string	"str"
	.byte	0x1
	.byte	0x25
	.long	0x168
	.long	.LLST3
	.uleb128 0xa
	.string	"len"
	.byte	0x1
	.byte	0x25
	.long	0x42
	.long	.LLST4
	.uleb128 0xd
	.long	.LVL13
	.long	0xd8
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x16d
	.uleb128 0xc
	.byte	0x2
	.long	0x30
	.uleb128 0x5
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x2a
	.long	.LASF20
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1a7
	.uleb128 0x10
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x11
	.long	.LASF21
	.byte	0x1
	.byte	0x33
	.long	0x49
	.byte	0x67
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x3e
	.long	.LASF28
	.long	0x30
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x43
	.long	.LASF30
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x4c
	.long	.LFB7
	.long	.LFE7
	.long	.LLST5
	.byte	0x1
	.uleb128 0x15
	.string	"rxn"
	.byte	0x1
	.byte	0xa
	.long	0x203
	.byte	0x5
	.byte	0x3
	.long	_ZL3rxn
	.uleb128 0x16
	.long	0x42
	.uleb128 0x17
	.long	0xa0
	.long	0x218
	.uleb128 0x18
	.long	0x218
	.byte	0x63
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF22
	.uleb128 0x15
	.string	"rx"
	.byte	0x1
	.byte	0xb
	.long	0x22f
	.byte	0x5
	.byte	0x3
	.long	_ZL2rx
	.uleb128 0x16
	.long	0x208
	.uleb128 0x19
	.long	.LASF23
	.byte	0x1
	.byte	0xc
	.long	0x245
	.byte	0x5
	.byte	0x3
	.long	_ZL7uart_rx
	.uleb128 0x16
	.long	0xa0
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL3
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	_ZL2rx
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LFB2
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
	.long	.LFE2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB7
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI12
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
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
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"_Z12uart_getchari"
.LASF29:
	.string	"uart_reset_recv"
.LASF20:
	.string	"_Z9uart_initv"
.LASF30:
	.string	"_Z15uart_reset_recvv"
.LASF16:
	.string	"uart_write"
.LASF28:
	.string	"_Z15uart_bytes_recvv"
.LASF14:
	.string	"_Z11uart_putstrPc"
.LASF19:
	.string	"uart_init"
.LASF21:
	.string	"baud_rate"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF15:
	.string	"uart_getchar"
.LASF25:
	.string	"../uart/uart.cpp"
.LASF11:
	.string	"uart_putchar"
.LASF27:
	.string	"uart_bytes_recv"
.LASF4:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF23:
	.string	"uart_rx"
.LASF26:
	.string	"D:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF22:
	.string	"sizetype"
.LASF13:
	.string	"_Z12uart_putcharc"
.LASF7:
	.string	"long long int"
.LASF24:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF9:
	.string	"char"
.LASF10:
	.string	"index"
.LASF3:
	.string	"uint16_t"
.LASF31:
	.string	"__vector_25"
.LASF5:
	.string	"long int"
.LASF12:
	.string	"uart_putstr"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"_Z10uart_writePhi"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
