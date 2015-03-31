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
	.section	.text._Z1sv,"ax",@progbits
.global	_Z1sv
	.type	_Z1sv, @function
_Z1sv:
.LFB94:
	.file 1 ".././tests/test13_service_subscribe_error.cpp"
	.loc 1 21 0
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
	.loc 1 22 0
	ldi r24,lo8(1)
	ldi r25,0
	std Y+2,r25
	std Y+1,r24
	.loc 1 23 0
	call _Z12add_to_tracej
.LVL0:
	.loc 1 24 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	lds r24,serviceTest
	lds r25,serviceTest+1
	call Service_Subscribe
.LVL1:
	.loc 1 25 0
	ldd r24,Y+1
	ldd r25,Y+2
	call _Z12add_to_tracej
.LVL2:
/* epilogue start */
.LBE2:
	.loc 1 26 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE94:
	.size	_Z1sv, .-_Z1sv
	.section	.text._Z2rrv,"ax",@progbits
.global	_Z2rrv
	.type	_Z2rrv, @function
_Z2rrv:
.LFB95:
	.loc 1 29 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL3:
.LBB3:
	.loc 1 31 0
	ldi r24,lo8(2)
	ldi r25,0
	call _Z12add_to_tracej
.LVL4:
	.loc 1 32 0
	ldi r22,lo8(5)
	ldi r23,0
	lds r24,serviceTest
	lds r25,serviceTest+1
	call Service_Publish
.LVL5:
	.loc 1 33 0
	ldi r24,lo8(2)
	ldi r25,0
	call _Z12add_to_tracej
.LVL6:
	.loc 1 34 0
	jmp _Z11print_tracev
.LVL7:
.LBE3:
	.cfi_endproc
.LFE95:
	.size	_Z2rrv, .-_Z2rrv
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB96:
	.loc 1 38 0
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
	.loc 1 39 0
	call Service_Init
.LVL8:
	sts serviceTest+1,r25
	sts serviceTest,r24
	.loc 1 41 0
	call _Z9uart_initv
.LVL9:
	.loc 1 42 0
	ldi r24,lo8(13)
	call _Z14set_trace_testh
.LVL10:
	.loc 1 43 0
	ldi r24,0
	ldi r25,0
	call _Z12add_to_tracej
.LVL11:
	.loc 1 44 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1sv))
	ldi r25,hi8(gs(_Z1sv))
	call Task_Create_System
.LVL12:
	.loc 1 45 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1sv))
	ldi r25,hi8(gs(_Z1sv))
	call Task_Create_System
.LVL13:
	.loc 1 46 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1sv))
	ldi r25,hi8(gs(_Z1sv))
	call Task_Create_System
.LVL14:
	.loc 1 47 0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1sv))
	ldi r25,hi8(gs(_Z1sv))
	call Task_Create_System
.LVL15:
	.loc 1 48 0
	ldi r16,lo8(5)
	ldi r17,0
	ldi r18,lo8(5)
	ldi r19,0
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z2rrv))
	ldi r25,hi8(gs(_Z2rrv))
	call Task_Create_Periodic
.LVL16:
	.loc 1 50 0
	ldi r24,0
	ldi r25,0
	call _Z12add_to_tracej
.LVL17:
	.loc 1 52 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE96:
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
	.long	0x613
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF55
	.byte	0x4
	.long	.LASF56
	.long	.LASF57
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
	.byte	0xa3
	.long	0xf2
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.byte	0xa4
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x4
	.byte	0xa5
	.long	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
	.byte	0xa6
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF18
	.byte	0x4
	.byte	0xa7
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xf8
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x1
	.byte	0x4
	.byte	0x36
	.long	.LASF58
	.long	0x11e
	.uleb128 0xa
	.long	.LASF19
	.sleb128 0
	.uleb128 0xa
	.long	.LASF20
	.sleb128 1
	.uleb128 0xa
	.long	.LASF21
	.sleb128 2
	.uleb128 0xa
	.long	.LASF22
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0x3c
	.long	0xf9
	.uleb128 0x2
	.long	.LASF24
	.byte	0x4
	.byte	0x6b
	.long	0x134
	.uleb128 0xb
	.long	.LASF26
	.word	0x114
	.byte	0x4
	.byte	0x6f
	.long	0x1f4
	.uleb128 0x6
	.long	.LASF27
	.byte	0x4
	.byte	0x72
	.long	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"sp"
	.byte	0x4
	.byte	0x74
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.long	.LASF18
	.byte	0x4
	.byte	0x76
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0x6
	.long	.LASF28
	.byte	0x4
	.byte	0x79
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.long	.LASF29
	.byte	0x4
	.byte	0x7c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0x6
	.long	.LASF30
	.byte	0x4
	.byte	0x7f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.long	.LASF31
	.byte	0x4
	.byte	0x82
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a
	.uleb128 0x6
	.long	.LASF32
	.byte	0x4
	.byte	0x85
	.long	0x11e
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"arg"
	.byte	0x4
	.byte	0x87
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0x6
	.long	.LASF33
	.byte	0x4
	.byte	0x89
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0x6
	.long	.LASF34
	.byte	0x4
	.byte	0x8b
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x6
	.long	.LASF35
	.byte	0x4
	.byte	0x8d
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x204
	.uleb128 0xe
	.long	0x204
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF36
	.uleb128 0xf
	.long	0x210
	.uleb128 0x7
	.byte	0x2
	.long	0x3b
	.uleb128 0x7
	.byte	0x2
	.long	0x129
	.uleb128 0xd
	.long	0x216
	.long	0x22c
	.uleb128 0xe
	.long	0x204
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x23c
	.long	0x23c
	.uleb128 0xe
	.long	0x204
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4d
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF37
	.uleb128 0x10
	.byte	0x1
	.string	"s"
	.byte	0x1
	.byte	0x14
	.long	.LASF38
	.long	.LFB94
	.long	.LFE94
	.long	.LLST0
	.byte	0x1
	.long	0x2b7
	.uleb128 0x11
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x12
	.long	.LASF17
	.byte	0x1
	.byte	0x16
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x13
	.long	.LVL0
	.long	0x549
	.long	0x293
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL1
	.long	0x560
	.long	0x2ac
	.uleb128 0x14
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
	.uleb128 0x15
	.long	.LVL2
	.long	0x549
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"rr"
	.byte	0x1
	.byte	0x1c
	.long	.LASF39
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x33c
	.uleb128 0x11
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.byte	0x1e
	.long	0x4d
	.byte	0x5
	.uleb128 0x13
	.long	.LVL4
	.long	0x549
	.long	0x300
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL5
	.long	0x579
	.long	0x318
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL6
	.long	0x549
	.long	0x330
	.uleb128 0x14
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
	.uleb128 0x18
	.long	.LVL7
	.byte	0x1
	.long	0x592
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x25
	.long	.LASF60
	.long	0x58
	.long	.LFB96
	.long	.LFE96
	.long	.LLST1
	.byte	0x1
	.long	0x48d
	.uleb128 0x15
	.long	.LVL8
	.long	0x59f
	.uleb128 0x15
	.long	.LVL9
	.long	0x5ad
	.uleb128 0x13
	.long	.LVL10
	.long	0x5ba
	.long	0x382
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x13
	.long	.LVL11
	.long	0x549
	.long	0x39a
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL12
	.long	0x5d1
	.long	0x3c0
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z1sv
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL13
	.long	0x5d1
	.long	0x3e6
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z1sv
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL14
	.long	0x5d1
	.long	0x40c
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z1sv
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL15
	.long	0x5d1
	.long	0x432
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z1sv
	.uleb128 0x14
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
	.uleb128 0x13
	.long	.LVL16
	.long	0x5ee
	.long	0x478
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z2rrv
	.uleb128 0x14
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x44
	.uleb128 0x14
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x14
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
	.uleb128 0x1a
	.long	.LVL17
	.long	0x549
	.uleb128 0x14
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
	.uleb128 0x1b
	.string	"SS"
	.byte	0x5
	.byte	0x28
	.long	0x498
	.byte	0xa
	.uleb128 0x1c
	.long	0x3b
	.uleb128 0x17
	.long	.LASF40
	.byte	0x5
	.byte	0x29
	.long	0x498
	.byte	0xb
	.uleb128 0x17
	.long	.LASF41
	.byte	0x5
	.byte	0x2a
	.long	0x498
	.byte	0xc
	.uleb128 0x1b
	.string	"SCK"
	.byte	0x5
	.byte	0x2b
	.long	0x498
	.byte	0xd
	.uleb128 0x1b
	.string	"SDA"
	.byte	0x5
	.byte	0x2d
	.long	0x498
	.byte	0x12
	.uleb128 0x1b
	.string	"SCL"
	.byte	0x5
	.byte	0x2e
	.long	0x498
	.byte	0x13
	.uleb128 0x1b
	.string	"A0"
	.byte	0x5
	.byte	0x31
	.long	0x498
	.byte	0xe
	.uleb128 0x1b
	.string	"A1"
	.byte	0x5
	.byte	0x32
	.long	0x498
	.byte	0xf
	.uleb128 0x1b
	.string	"A2"
	.byte	0x5
	.byte	0x33
	.long	0x498
	.byte	0x10
	.uleb128 0x1b
	.string	"A3"
	.byte	0x5
	.byte	0x34
	.long	0x498
	.byte	0x11
	.uleb128 0x1b
	.string	"A4"
	.byte	0x5
	.byte	0x35
	.long	0x498
	.byte	0x12
	.uleb128 0x1b
	.string	"A5"
	.byte	0x5
	.byte	0x36
	.long	0x498
	.byte	0x13
	.uleb128 0x1b
	.string	"A6"
	.byte	0x5
	.byte	0x37
	.long	0x498
	.byte	0x14
	.uleb128 0x1b
	.string	"A7"
	.byte	0x5
	.byte	0x38
	.long	0x498
	.byte	0x15
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x1
	.byte	0x12
	.long	0x543
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serviceTest
	.uleb128 0x7
	.byte	0x2
	.long	0xa2
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x1c
	.long	.LASF51
	.byte	0x1
	.long	0x560
	.uleb128 0x1f
	.long	0x5f
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF42
	.byte	0x3
	.word	0x148
	.byte	0x1
	.long	0x579
	.uleb128 0x1f
	.long	0x543
	.uleb128 0x1f
	.long	0x23c
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF43
	.byte	0x3
	.word	0x152
	.byte	0x1
	.long	0x592
	.uleb128 0x1f
	.long	0x543
	.uleb128 0x1f
	.long	0x4d
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x1b
	.long	.LASF47
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF45
	.byte	0x3
	.word	0x13e
	.long	0x543
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.long	.LASF46
	.byte	0x7
	.byte	0x11
	.long	.LASF48
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF50
	.byte	0x6
	.byte	0x1d
	.long	.LASF52
	.byte	0x1
	.long	0x5d1
	.uleb128 0x1f
	.long	0x3b
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF53
	.byte	0x3
	.word	0x110
	.long	0x29
	.byte	0x1
	.long	0x5ee
	.uleb128 0x1f
	.long	0xf2
	.uleb128 0x1f
	.long	0x4d
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF54
	.byte	0x3
	.word	0x123
	.long	0x29
	.byte	0x1
	.uleb128 0x1f
	.long	0xf2
	.uleb128 0x1f
	.long	0x4d
	.uleb128 0x1f
	.long	0x5f
	.uleb128 0x1f
	.long	0x5f
	.uleb128 0x1f
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.long	.LFB94
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
	.long	.LFE94
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	0
	.long	0
.LLST1:
	.long	.LFB96
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
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"service"
.LASF47:
	.string	"_Z11print_tracev"
.LASF35:
	.string	"prev"
.LASF46:
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
.LASF51:
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
.LASF57:
	.string	"D:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF30:
	.string	"wcet"
.LASF42:
	.string	"Service_Subscribe"
.LASF44:
	.string	"print_trace"
.LASF17:
	.string	"value"
.LASF48:
	.string	"_Z9uart_initv"
.LASF6:
	.string	"unsigned int"
.LASF60:
	.string	"_Z6r_mainv"
.LASF8:
	.string	"long unsigned int"
.LASF58:
	.string	"12task_state_t"
.LASF33:
	.string	"level"
.LASF39:
	.string	"_Z2rrv"
.LASF37:
	.string	"bool"
.LASF49:
	.string	"add_to_trace"
.LASF53:
	.string	"Task_Create_System"
.LASF28:
	.string	"remaining_wcet"
.LASF56:
	.string	".././project2.cpp"
.LASF15:
	.string	"tasks"
.LASF36:
	.string	"sizetype"
.LASF45:
	.string	"Service_Init"
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
.LASF59:
	.string	"r_main"
.LASF55:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF52:
	.string	"_Z14set_trace_testh"
.LASF38:
	.string	"_Z1sv"
.LASF11:
	.string	"char"
.LASF40:
	.string	"MOSI"
.LASF43:
	.string	"Service_Publish"
.LASF16:
	.string	"valueLocations"
.LASF61:
	.string	"serviceTest"
.LASF0:
	.string	"int8_t"
.LASF41:
	.string	"MISO"
.LASF1:
	.string	"uint8_t"
.LASF50:
	.string	"set_trace_test"
.LASF14:
	.string	"SERVICE"
.LASF54:
	.string	"Task_Create_Periodic"
.LASF31:
	.string	"start"
.LASF27:
	.string	"stack"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
