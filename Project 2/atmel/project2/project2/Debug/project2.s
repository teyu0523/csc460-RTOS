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
	.section	.text._Z1pv,"ax",@progbits
.global	_Z1pv
	.type	_Z1pv, @function
_Z1pv:
.LFB95:
	.file 1 ".././project2.cpp"
	.loc 1 34 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	ldi r24,lo8(-128)
	out 0x4,r24
	.loc 1 40 0
	ldi r25,lo8(-64)
.L2:
.LVL0:
.LBB8:
.LBB9:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0 discriminator 1
	ldi r30,lo8(-25537)
	ldi r31,hi8(-25537)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.LBE9:
.LBE8:
	.loc 1 40 0 discriminator 1
	in r24,0x5
	eor r24,r25
	out 0x5,r24
	rjmp .L2
	.cfi_endproc
.LFE95:
	.size	_Z1pv, .-_Z1pv
	.section	.text._Z2p2v,"ax",@progbits
.global	_Z2p2v
	.type	_Z2p2v, @function
_Z2p2v:
.LFB94:
	.loc 1 14 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 24 0
	ldi r24,lo8(-64)
	out 0x4,r24
.L5:
.LVL1:
.LBB10:
.LBB11:
	.loc 2 163 0 discriminator 1
	ldi r18,lo8(15999999)
	ldi r24,hi8(15999999)
	ldi r25,hlo8(15999999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE11:
.LBE10:
	.loc 1 28 0 discriminator 1
	in r24,0x5
	subi r24,lo8(-(-128))
	out 0x5,r24
	.loc 1 29 0 discriminator 1
	call Task_Next
.LVL2:
	rjmp .L5
	.cfi_endproc
.LFE94:
	.size	_Z2p2v, .-_Z2p2v
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB96:
	.loc 1 46 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 49 0
	ldi r16,lo8(2)
	ldi r17,0
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1pv))
	ldi r25,hi8(gs(_Z1pv))
	call Task_Create_Periodic
.LVL3:
	.loc 1 51 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE96:
	.size	_Z6r_mainv, .-_Z6r_mainv
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 5 ".././os.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x32b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.long	.LASF24
	.long	.LASF25
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
	.uleb128 0x5
	.byte	0x2
	.long	0xb3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF15
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF16
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x101
	.uleb128 0x8
	.long	.LASF27
	.byte	0x2
	.byte	0x8e
	.long	0xa6
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF17
	.byte	0x2
	.byte	0x90
	.long	0xa6
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0xb
	.byte	0x1
	.long	.LASF28
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0xc
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"p"
	.byte	0x1
	.byte	0x21
	.long	.LASF19
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x154
	.uleb128 0xe
	.long	0xc2
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x26
	.uleb128 0xf
	.long	0xce
	.byte	0x4
	.long	0x41200000
	.uleb128 0x10
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x11
	.long	0xda
	.byte	0x4
	.long	0x481c4000
	.uleb128 0x12
	.long	0xe5
	.long	0x27100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xf0
	.byte	0
	.long	0x164
	.uleb128 0xc
	.long	0x83
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"p2"
	.byte	0x1
	.byte	0xd
	.long	.LASF20
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c5
	.uleb128 0x14
	.long	0xc2
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x1b
	.long	0x1bb
	.uleb128 0xf
	.long	0xce
	.byte	0x4
	.long	0x459c4000
	.uleb128 0x10
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x11
	.long	0xda
	.byte	0x4
	.long	0x4c989680
	.uleb128 0x12
	.long	0xe5
	.long	0x4c4b400
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LVL2
	.long	0x2fc
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x2d
	.long	.LASF30
	.long	0x58
	.long	.LFB96
	.long	.LFE96
	.long	.LLST0
	.byte	0x1
	.long	0x228
	.uleb128 0x17
	.long	.LVL3
	.long	0x306
	.uleb128 0x18
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z1pv
	.uleb128 0x18
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x44
	.uleb128 0x18
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
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
	.uleb128 0x19
	.string	"SS"
	.byte	0x4
	.byte	0x28
	.long	0x233
	.byte	0xa
	.uleb128 0x1a
	.long	0x3b
	.uleb128 0x1b
	.long	.LASF21
	.byte	0x4
	.byte	0x29
	.long	0x233
	.byte	0xb
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x4
	.byte	0x2a
	.long	0x233
	.byte	0xc
	.uleb128 0x19
	.string	"SCK"
	.byte	0x4
	.byte	0x2b
	.long	0x233
	.byte	0xd
	.uleb128 0x19
	.string	"SDA"
	.byte	0x4
	.byte	0x2d
	.long	0x233
	.byte	0x12
	.uleb128 0x19
	.string	"SCL"
	.byte	0x4
	.byte	0x2e
	.long	0x233
	.byte	0x13
	.uleb128 0x19
	.string	"A0"
	.byte	0x4
	.byte	0x31
	.long	0x233
	.byte	0xe
	.uleb128 0x19
	.string	"A1"
	.byte	0x4
	.byte	0x32
	.long	0x233
	.byte	0xf
	.uleb128 0x19
	.string	"A2"
	.byte	0x4
	.byte	0x33
	.long	0x233
	.byte	0x10
	.uleb128 0x19
	.string	"A3"
	.byte	0x4
	.byte	0x34
	.long	0x233
	.byte	0x11
	.uleb128 0x19
	.string	"A4"
	.byte	0x4
	.byte	0x35
	.long	0x233
	.byte	0x12
	.uleb128 0x19
	.string	"A5"
	.byte	0x4
	.byte	0x36
	.long	0x233
	.byte	0x13
	.uleb128 0x19
	.string	"A6"
	.byte	0x4
	.byte	0x37
	.long	0x233
	.byte	0x14
	.uleb128 0x19
	.string	"A7"
	.byte	0x4
	.byte	0x38
	.long	0x233
	.byte	0x15
	.uleb128 0x19
	.string	"PT"
	.byte	0x1
	.byte	0x8
	.long	0x2d7
	.byte	0x1
	.uleb128 0x1a
	.long	0x6a
	.uleb128 0x1c
	.long	0x46
	.long	0x2ec
	.uleb128 0x1d
	.long	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.string	"PPP"
	.byte	0x1
	.byte	0x9
	.long	0x2f7
	.uleb128 0x1a
	.long	0x2dc
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF31
	.byte	0x5
	.word	0x12e
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF32
	.byte	0x5
	.word	0x123
	.long	0x29
	.byte	0x1
	.uleb128 0xc
	.long	0xad
	.uleb128 0xc
	.long	0x4d
	.uleb128 0xc
	.long	0x5f
	.uleb128 0xc
	.long	0x5f
	.uleb128 0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.long	.LFE96
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB95
	.long	.LFE95
	.long	.LFB94
	.long	.LFE94
	.long	.LFB96
	.long	.LFE96
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"__tmp"
.LASF16:
	.string	"bool"
.LASF20:
	.string	"_Z2p2v"
.LASF19:
	.string	"_Z1pv"
.LASF28:
	.string	"__builtin_avr_delay_cycles"
.LASF0:
	.string	"int8_t"
.LASF13:
	.string	"float"
.LASF29:
	.string	"r_main"
.LASF9:
	.string	"long unsigned int"
.LASF26:
	.string	"_delay_ms"
.LASF31:
	.string	"Task_Next"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"Task_Create_Periodic"
.LASF14:
	.string	"double"
.LASF22:
	.string	"MISO"
.LASF21:
	.string	"MOSI"
.LASF6:
	.string	"unsigned int"
.LASF30:
	.string	"_Z6r_mainv"
.LASF11:
	.string	"long long unsigned int"
.LASF1:
	.string	"uint8_t"
.LASF4:
	.string	"int16_t"
.LASF15:
	.string	"sizetype"
.LASF10:
	.string	"long long int"
.LASF23:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF24:
	.string	".././project2.cpp"
.LASF12:
	.string	"char"
.LASF18:
	.string	"__ticks_dc"
.LASF5:
	.string	"uint16_t"
.LASF8:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"__ms"
.LASF25:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
