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
.LFB94:
	.file 1 ".././tests/test0.cpp"
	.loc 1 14 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 15 0
	ldi r25,lo8(64)
	out 0x4,r25
	.loc 1 16 0
	in r24,0x5
	eor r24,r25
	out 0x5,r24
	.loc 1 17 0
	ldi r24,lo8(1)
	ldi r25,0
	call _Z12add_to_tracej
.LVL0:
	.loc 1 18 0
	jmp _Z11print_tracev
.LVL1:
	.cfi_endproc
.LFE94:
	.size	_Z1pv, .-_Z1pv
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB95:
	.loc 1 23 0
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
	.loc 1 24 0
	call _Z9uart_initv
.LVL2:
	.loc 1 25 0
	ldi r24,0
	call _Z14set_trace_testh
.LVL3:
	.loc 1 26 0
	ldi r24,lo8(2)
	ldi r25,0
	call _Z12add_to_tracej
.LVL4:
	.loc 1 27 0
	ldi r16,lo8(1)
	ldi r17,0
	ldi r18,lo8(2)
	ldi r19,0
	ldi r20,lo8(50)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1pv))
	ldi r25,hi8(gs(_Z1pv))
	call Task_Create_Periodic
.LVL5:
	.loc 1 28 0
	ldi r16,lo8(25)
	ldi r17,0
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,lo8(50)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1pv))
	ldi r25,hi8(gs(_Z1pv))
	call Task_Create_Periodic
.LVL6:
	.loc 1 29 0
	ldi r24,lo8(3)
	ldi r25,0
	call _Z12add_to_tracej
.LVL7:
	.loc 1 32 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE95:
	.size	_Z6r_mainv, .-_Z6r_mainv
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 4 ".././trace/trace.h"
	.file 5 ".././uart/uart.h"
	.file 6 ".././os.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2fc
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.long	.LASF27
	.long	.LASF28
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
	.uleb128 0x5
	.byte	0x2
	.long	0xa8
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF15
	.uleb128 0x7
	.byte	0x1
	.string	"p"
	.byte	0x1
	.byte	0xd
	.long	.LASF29
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf5
	.uleb128 0x8
	.long	.LVL0
	.long	0x28f
	.long	0xea
	.uleb128 0x9
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
	.uleb128 0xa
	.long	.LVL1
	.byte	0x1
	.long	0x2a6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x16
	.long	.LASF31
	.long	0x58
	.long	.LFB95
	.long	.LFE95
	.long	.LLST0
	.byte	0x1
	.long	0x1eb
	.uleb128 0xc
	.long	.LVL2
	.long	0x2b3
	.uleb128 0x8
	.long	.LVL3
	.long	0x2c0
	.long	0x132
	.uleb128 0x9
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	.LVL4
	.long	0x28f
	.long	0x14a
	.uleb128 0x9
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
	.uleb128 0x8
	.long	.LVL5
	.long	0x2d7
	.long	0x190
	.uleb128 0x9
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
	.uleb128 0x9
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x9
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
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
	.uleb128 0x8
	.long	.LVL6
	.long	0x2d7
	.long	0x1d6
	.uleb128 0x9
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
	.uleb128 0x9
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x9
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.uleb128 0x9
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
	.uleb128 0xd
	.long	.LVL7
	.long	0x28f
	.uleb128 0x9
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
	.byte	0
	.uleb128 0xe
	.string	"SS"
	.byte	0x3
	.byte	0x28
	.long	0x1f6
	.byte	0xa
	.uleb128 0xf
	.long	0x3b
	.uleb128 0x10
	.long	.LASF16
	.byte	0x3
	.byte	0x29
	.long	0x1f6
	.byte	0xb
	.uleb128 0x10
	.long	.LASF17
	.byte	0x3
	.byte	0x2a
	.long	0x1f6
	.byte	0xc
	.uleb128 0xe
	.string	"SCK"
	.byte	0x3
	.byte	0x2b
	.long	0x1f6
	.byte	0xd
	.uleb128 0xe
	.string	"SDA"
	.byte	0x3
	.byte	0x2d
	.long	0x1f6
	.byte	0x12
	.uleb128 0xe
	.string	"SCL"
	.byte	0x3
	.byte	0x2e
	.long	0x1f6
	.byte	0x13
	.uleb128 0xe
	.string	"A0"
	.byte	0x3
	.byte	0x31
	.long	0x1f6
	.byte	0xe
	.uleb128 0xe
	.string	"A1"
	.byte	0x3
	.byte	0x32
	.long	0x1f6
	.byte	0xf
	.uleb128 0xe
	.string	"A2"
	.byte	0x3
	.byte	0x33
	.long	0x1f6
	.byte	0x10
	.uleb128 0xe
	.string	"A3"
	.byte	0x3
	.byte	0x34
	.long	0x1f6
	.byte	0x11
	.uleb128 0xe
	.string	"A4"
	.byte	0x3
	.byte	0x35
	.long	0x1f6
	.byte	0x12
	.uleb128 0xe
	.string	"A5"
	.byte	0x3
	.byte	0x36
	.long	0x1f6
	.byte	0x13
	.uleb128 0xe
	.string	"A6"
	.byte	0x3
	.byte	0x37
	.long	0x1f6
	.byte	0x14
	.uleb128 0xe
	.string	"A7"
	.byte	0x3
	.byte	0x38
	.long	0x1f6
	.byte	0x15
	.uleb128 0x11
	.byte	0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x1c
	.long	.LASF24
	.byte	0x1
	.long	0x2a6
	.uleb128 0x12
	.long	0x5f
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x1b
	.long	.LASF20
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.long	.LASF19
	.byte	0x5
<<<<<<< HEAD
	.byte	0x11
	.long	.LASF21
=======
	.word	0x12e
>>>>>>> origin/master
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x1d
	.long	.LASF25
	.byte	0x1
	.long	0x2d7
	.uleb128 0x12
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF32
<<<<<<< HEAD
	.byte	0x6
	.word	0x124
=======
	.byte	0x5
	.word	0x123
>>>>>>> origin/master
	.long	0x29
	.byte	0x1
	.uleb128 0x12
	.long	0xa2
	.uleb128 0x12
	.long	0x4d
	.uleb128 0x12
	.long	0x5f
	.uleb128 0x12
	.long	0x5f
	.uleb128 0x12
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.long	.LFB95
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
	.long	.LFE95
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"float"
.LASF24:
	.string	"_Z12add_to_tracej"
.LASF15:
	.string	"bool"
.LASF29:
	.string	"_Z1pv"
.LASF0:
	.string	"int8_t"
.LASF18:
	.string	"print_trace"
.LASF19:
	.string	"uart_init"
.LASF30:
	.string	"r_main"
.LASF8:
	.string	"long unsigned int"
.LASF22:
	.string	"add_to_trace"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"Task_Create_Periodic"
.LASF13:
	.string	"double"
<<<<<<< HEAD
.LASF25:
	.string	"_Z14set_trace_testh"
.LASF17:
	.string	"MISO"
.LASF28:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF16:
=======
.LASF22:
	.string	"MISO"
.LASF21:
>>>>>>> origin/master
	.string	"MOSI"
.LASF6:
	.string	"unsigned int"
.LASF31:
	.string	"_Z6r_mainv"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"uint8_t"
.LASF26:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF4:
	.string	"int16_t"
.LASF20:
	.string	"_Z11print_tracev"
.LASF14:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF21:
	.string	"_Z9uart_initv"
.LASF27:
	.string	".././project2.cpp"
.LASF11:
	.string	"char"
.LASF5:
	.string	"uint16_t"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
<<<<<<< HEAD
.LASF23:
	.string	"set_trace_test"
=======
.LASF27:
	.string	"__ms"
.LASF25:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
>>>>>>> origin/master
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
