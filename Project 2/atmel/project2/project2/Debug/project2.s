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
.LFB97:
	.file 1 ".././tests/test1.cpp"
	.loc 1 41 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
	push __zero_reg__
.LCFI2:
	.cfi_def_cfa_offset 7
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
.LBB2:
	.loc 1 42 0
	ldi r24,lo8(1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	.loc 1 43 0
	call _Z12add_to_tracej
.LVL0:
	.loc 1 44 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	lds r24,serviceTest
	lds r25,serviceTest+1
	call Service_Subscribe
.LVL1:
	.loc 1 46 0
	ldi r24,lo8(1)
	ldi r25,0
	call _Z12add_to_tracej
.LVL2:
/* epilogue start */
.LBE2:
	.loc 1 48 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE97:
	.size	_Z1pv, .-_Z1pv
	.section	.text._Z2p2v,"ax",@progbits
.global	_Z2p2v
	.type	_Z2p2v, @function
_Z2p2v:
.LFB98:
	.loc 1 51 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL3:
.LBB3:
	.loc 1 53 0
	ldi r24,0
	ldi r25,0
	call _Z12add_to_tracej
.LVL4:
	.loc 1 54 0
	call _Z11print_tracev
.LVL5:
	.loc 1 55 0
	ldi r22,lo8(5)
	ldi r23,0
	lds r24,serviceTest
	lds r25,serviceTest+1
	jmp Service_Publish
.LVL6:
.LBE3:
	.cfi_endproc
.LFE98:
	.size	_Z2p2v, .-_Z2p2v
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB99:
	.loc 1 60 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 63 0
	call _Z9uart_initv
.LVL7:
	.loc 1 64 0
	ldi r24,lo8(1)
	call _Z14set_trace_testh
.LVL8:
	.loc 1 65 0
	ldi r24,0
	ldi r25,0
	call _Z12add_to_tracej
.LVL9:
	.loc 1 66 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1pv))
	ldi r25,hi8(gs(_Z1pv))
	call Task_Create_System
.LVL10:
	.loc 1 67 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z2p2v))
	ldi r25,hi8(gs(_Z2p2v))
	call Task_Create_System
.LVL11:
	.loc 1 68 0
	ldi r24,0
	ldi r25,0
	call _Z12add_to_tracej
.LVL12:
	.loc 1 70 0
	ldi r24,lo8(1)
	ldi r25,0
	ret
	.cfi_endproc
.LFE99:
	.size	_Z6r_mainv, .-_Z6r_mainv
.global	serviceTest
	.section	.bss.serviceTest,"aw",@nobits
	.type	serviceTest, @object
	.size	serviceTest, 2
serviceTest:
	.zero	2
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././os.h"
	.file 4 ".././kernel.h"
	.file 5 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 6 ".././trace/trace.h"
	.file 7 ".././uart/uart.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x547
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF53
	.byte	0x4
	.long	.LASF54
	.long	.LASF55
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0xe0
	.long	0xad
	.uleb128 0x5
	.long	.LASF25
	.byte	0x10
	.byte	0x4
	.byte	0x93
	.long	0x106
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.byte	0x94
	.long	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x4
	.byte	0x95
	.long	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
	.byte	0x96
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF18
	.byte	0x4
	.byte	0x97
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.byte	0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x98
	.byte	0x1
	.long	0xfe
	.uleb128 0x8
	.long	0x256
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x10c
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.byte	0x32
	.long	.LASF56
	.long	0x132
	.uleb128 0xc
	.long	.LASF19
	.sleb128 0
	.uleb128 0xc
	.long	.LASF20
	.sleb128 1
	.uleb128 0xc
	.long	.LASF21
	.sleb128 2
	.uleb128 0xc
	.long	.LASF22
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0x38
	.long	0x10d
	.uleb128 0x2
	.long	.LASF24
	.byte	0x4
	.byte	0x61
	.long	0x148
	.uleb128 0xd
	.long	.LASF26
	.word	0x114
	.byte	0x4
	.byte	0x65
	.long	0x208
	.uleb128 0x6
	.long	.LASF27
	.byte	0x4
	.byte	0x68
	.long	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"sp"
	.byte	0x4
	.byte	0x6a
	.long	0x21f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.long	.LASF28
	.byte	0x4
	.byte	0x6c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0x6
	.long	.LASF18
	.byte	0x4
	.byte	0x6e
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.long	.LASF29
	.byte	0x4
	.byte	0x6f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0x6
	.long	.LASF30
	.byte	0x4
	.byte	0x70
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.long	.LASF31
	.byte	0x4
	.byte	0x71
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a
	.uleb128 0x6
	.long	.LASF32
	.byte	0x4
	.byte	0x75
	.long	0x132
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"arg"
	.byte	0x4
	.byte	0x77
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0x6
	.long	.LASF33
	.byte	0x4
	.byte	0x79
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0x6
	.long	.LASF34
	.byte	0x4
	.byte	0x7b
	.long	0x22a
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x6
	.long	.LASF35
	.byte	0x4
	.byte	0x7d
	.long	0x22a
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x218
	.uleb128 0x10
	.long	0x218
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF36
	.uleb128 0x11
	.long	0x224
	.uleb128 0x9
	.byte	0x2
	.long	0x3b
	.uleb128 0x9
	.byte	0x2
	.long	0x13d
	.uleb128 0xf
	.long	0x22a
	.long	0x240
	.uleb128 0x10
	.long	0x218
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x250
	.long	0x250
	.uleb128 0x10
	.long	0x218
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x4d
	.uleb128 0x9
	.byte	0x2
	.long	0xad
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF37
	.uleb128 0x12
	.byte	0x1
	.string	"p"
	.byte	0x1
	.byte	0x28
	.long	.LASF38
	.long	.LFB97
	.long	.LFE97
	.long	.LLST0
	.byte	0x1
	.long	0x2dc
	.uleb128 0x13
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x14
	.long	.LASF17
	.byte	0x1
	.byte	0x2a
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LVL0
	.long	0x4b7
	.long	0x2ad
	.uleb128 0x16
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
	.uleb128 0x15
	.long	.LVL1
	.long	0x4ce
	.long	0x2c6
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x17
	.long	.LVL2
	.long	0x4b7
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"p2"
	.byte	0x1
	.byte	0x32
	.long	.LASF39
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x345
	.uleb128 0x13
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x19
	.long	.LASF17
	.byte	0x1
	.byte	0x34
	.long	0x4d
	.byte	0x5
	.uleb128 0x15
	.long	.LVL4
	.long	0x4b7
	.long	0x325
	.uleb128 0x16
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
	.uleb128 0x1a
	.long	.LVL5
	.long	0x4e7
	.uleb128 0x1b
	.long	.LVL6
	.byte	0x1
	.long	0x4f4
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x3b
	.long	.LASF58
	.long	0x58
	.long	.LFB99
	.long	.LFE99
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x3fb
	.uleb128 0x1a
	.long	.LVL7
	.long	0x50d
	.uleb128 0x15
	.long	.LVL8
	.long	0x51a
	.long	0x382
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL9
	.long	0x4b7
	.long	0x39a
	.uleb128 0x16
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
	.uleb128 0x15
	.long	.LVL10
	.long	0x531
	.long	0x3c0
	.uleb128 0x16
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
	.uleb128 0x16
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
	.uleb128 0x15
	.long	.LVL11
	.long	0x531
	.long	0x3e6
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z2p2v
	.uleb128 0x16
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
	.uleb128 0x17
	.long	.LVL12
	.long	0x4b7
	.uleb128 0x16
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
	.byte	0
	.uleb128 0x1d
	.string	"SS"
	.byte	0x5
	.byte	0x28
	.long	0x406
	.byte	0xa
	.uleb128 0x1e
	.long	0x3b
	.uleb128 0x19
	.long	.LASF40
	.byte	0x5
	.byte	0x29
	.long	0x406
	.byte	0xb
	.uleb128 0x19
	.long	.LASF41
	.byte	0x5
	.byte	0x2a
	.long	0x406
	.byte	0xc
	.uleb128 0x1d
	.string	"SCK"
	.byte	0x5
	.byte	0x2b
	.long	0x406
	.byte	0xd
	.uleb128 0x1d
	.string	"SDA"
	.byte	0x5
	.byte	0x2d
	.long	0x406
	.byte	0x12
	.uleb128 0x1d
	.string	"SCL"
	.byte	0x5
	.byte	0x2e
	.long	0x406
	.byte	0x13
	.uleb128 0x1d
	.string	"A0"
	.byte	0x5
	.byte	0x31
	.long	0x406
	.byte	0xe
	.uleb128 0x1d
	.string	"A1"
	.byte	0x5
	.byte	0x32
	.long	0x406
	.byte	0xf
	.uleb128 0x1d
	.string	"A2"
	.byte	0x5
	.byte	0x33
	.long	0x406
	.byte	0x10
	.uleb128 0x1d
	.string	"A3"
	.byte	0x5
	.byte	0x34
	.long	0x406
	.byte	0x11
	.uleb128 0x1d
	.string	"A4"
	.byte	0x5
	.byte	0x35
	.long	0x406
	.byte	0x12
	.uleb128 0x1d
	.string	"A5"
	.byte	0x5
	.byte	0x36
	.long	0x406
	.byte	0x13
	.uleb128 0x1d
	.string	"A6"
	.byte	0x5
	.byte	0x37
	.long	0x406
	.byte	0x14
	.uleb128 0x1d
	.string	"A7"
	.byte	0x5
	.byte	0x38
	.long	0x406
	.byte	0x15
	.uleb128 0x1f
	.long	.LASF59
	.byte	0x1
	.byte	0xe
	.long	0x4b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serviceTest
	.uleb128 0x9
	.byte	0x2
	.long	0xa2
	.uleb128 0x20
	.byte	0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x1c
	.long	.LASF50
	.byte	0x1
	.long	0x4ce
	.uleb128 0x21
	.long	0x5f
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF42
	.byte	0x3
	.word	0x148
	.byte	0x1
	.long	0x4e7
	.uleb128 0x21
	.long	0x4b1
	.uleb128 0x21
	.long	0x250
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x1b
	.long	.LASF46
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF43
	.byte	0x3
	.word	0x152
	.byte	0x1
	.long	0x50d
	.uleb128 0x21
	.long	0x4b1
	.uleb128 0x21
	.long	0x4d
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF45
	.byte	0x7
	.byte	0x11
	.long	.LASF47
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x1d
	.long	.LASF51
	.byte	0x1
	.long	0x531
	.uleb128 0x21
	.long	0x3b
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF52
	.byte	0x3
	.word	0x110
	.long	0x29
	.byte	0x1
	.uleb128 0x21
	.long	0x106
	.uleb128 0x21
	.long	0x4d
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
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.long	.LFB97
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
	.sleb128 7
	.long	.LCFI3
	.long	.LFE97
	.word	0x2
	.byte	0x8c
	.sleb128 7
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
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"service"
.LASF46:
	.string	"_Z11print_tracev"
.LASF35:
	.string	"prev"
.LASF45:
	.string	"uart_init"
.LASF29:
	.string	"period"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"task_descriptor_t"
.LASF21:
	.string	"READY"
.LASF34:
	.string	"next"
.LASF19:
	.string	"DEAD"
.LASF4:
	.string	"int16_t"
.LASF50:
	.string	"_Z12add_to_tracej"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"task_state_t"
.LASF32:
	.string	"state"
.LASF7:
	.string	"long int"
.LASF22:
	.string	"WAITING"
.LASF5:
	.string	"uint16_t"
.LASF13:
	.string	"double"
.LASF30:
	.string	"wcet"
.LASF42:
	.string	"Service_Subscribe"
.LASF44:
	.string	"print_trace"
.LASF17:
	.string	"value"
.LASF47:
	.string	"_Z9uart_initv"
.LASF6:
	.string	"unsigned int"
.LASF58:
	.string	"_Z6r_mainv"
.LASF8:
	.string	"long unsigned int"
.LASF38:
	.string	"_Z1pv"
.LASF39:
	.string	"_Z2p2v"
.LASF56:
	.string	"12task_state_t"
.LASF33:
	.string	"level"
.LASF55:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF37:
	.string	"bool"
.LASF48:
	.string	"add_to_trace"
.LASF52:
	.string	"Task_Create_System"
.LASF28:
	.string	"remaining_wcet"
.LASF54:
	.string	".././project2.cpp"
.LASF15:
	.string	"tasks"
.LASF36:
	.string	"sizetype"
.LASF12:
	.string	"float"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"td_struct"
.LASF18:
	.string	"counter"
.LASF20:
	.string	"RUNNING"
.LASF57:
	.string	"r_main"
.LASF53:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF51:
	.string	"_Z14set_trace_testh"
.LASF11:
	.string	"char"
.LASF40:
	.string	"MOSI"
.LASF43:
	.string	"Service_Publish"
.LASF16:
	.string	"valueLocations"
.LASF59:
	.string	"serviceTest"
.LASF0:
	.string	"int8_t"
.LASF41:
	.string	"MISO"
.LASF1:
	.string	"uint8_t"
.LASF49:
	.string	"set_trace_test"
.LASF14:
	.string	"SERVICE"
.LASF31:
	.string	"start"
.LASF27:
	.string	"stack"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
