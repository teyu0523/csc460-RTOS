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
	.section	.text._Z15send_IR_Commandv,"ax",@progbits
.global	_Z15send_IR_Commandv
	.type	_Z15send_IR_Commandv, @function
_Z15send_IR_Commandv:
.LFB98:
	.file 1 ".././project2.cpp"
	.loc 1 62 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	.loc 1 65 0 discriminator 1
	ldi r24,lo8(66)
	call _Z11IR_transmith
.LVL0:
	.loc 1 66 0 discriminator 1
	call Task_Next
.LVL1:
	rjmp .L2
	.cfi_endproc
.LFE98:
	.size	_Z15send_IR_Commandv, .-_Z15send_IR_Commandv
	.section	.text._Z15radio_rxhandlerh,"ax",@progbits
.global	_Z15radio_rxhandlerh
	.type	_Z15radio_rxhandlerh, @function
_Z15radio_rxhandlerh:
.LFB94:
	.loc 1 25 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE94:
	.size	_Z15radio_rxhandlerh, .-_Z15radio_rxhandlerh
	.section	.text._Z12ir_rxhandlerv,"ax",@progbits
.global	_Z12ir_rxhandlerv
	.type	_Z12ir_rxhandlerv, @function
_Z12ir_rxhandlerv:
.LFB95:
	.loc 1 29 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE95:
	.size	_Z12ir_rxhandlerv, .-_Z12ir_rxhandlerv
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
.LFB96:
	.loc 1 50 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 51 0
	call _Z11Roomba_Initv
.LVL3:
	.loc 1 52 0
	jmp _Z7IR_initv
.LVL4:
	.cfi_endproc
.LFE96:
	.size	setup, .-setup
	.section	.text._Z18Send_Drive_Commandv,"ax",@progbits
.global	_Z18Send_Drive_Commandv
	.type	_Z18Send_Drive_Commandv, @function
_Z18Send_Drive_Commandv:
.LFB97:
	.loc 1 55 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L7:
	.loc 1 57 0 discriminator 1
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-16)
	ldi r25,0
	call _Z12Roomba_Driveii
.LVL5:
	.loc 1 58 0 discriminator 1
	call Task_Next
.LVL6:
	rjmp .L7
	.cfi_endproc
.LFE97:
	.size	_Z18Send_Drive_Commandv, .-_Z18Send_Drive_Commandv
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB99:
	.loc 1 71 0
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
	.loc 1 73 0
	call setup
.LVL7:
	.loc 1 74 0
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
.LVL8:
	.loc 1 77 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE99:
	.size	_Z6r_mainv, .-_Z6r_mainv
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 4 ".././roomba/roomba.h"
	.file 5 ".././ir/ir.h"
	.file 6 ".././os.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x339
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.long	.LASF33
	.long	.LASF34
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
	.long	.LASF16
	.byte	0x1
	.byte	0x3e
	.long	.LASF18
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf2
	.uleb128 0x8
	.long	.LVL0
	.long	0x2bd
	.long	0xe8
	.uleb128 0x9
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.uleb128 0xa
	.long	.LVL1
	.long	0x2d4
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x19
	.long	.LASF19
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x11d
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x19
	.long	0x3b
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x1d
	.long	.LASF37
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x32
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x163
	.uleb128 0xa
	.long	.LVL3
	.long	0x2de
	.uleb128 0xe
	.long	.LVL4
	.byte	0x1
	.long	0x2eb
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x37
	.long	.LASF21
	.long	.LFB97
	.long	.LFE97
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1ad
	.uleb128 0x8
	.long	.LVL5
	.long	0x2f8
	.long	0x1a3
	.uleb128 0x9
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
	.byte	0
	.uleb128 0xa
	.long	.LVL6
	.long	0x2d4
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x46
	.long	.LASF40
	.long	0x58
	.long	.LFB99
	.long	.LFE99
	.long	.LLST0
	.byte	0x1
	.long	0x219
	.uleb128 0xa
	.long	.LVL7
	.long	0x136
	.uleb128 0x10
	.long	.LVL8
	.long	0x314
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
	.long	_Z15send_IR_Commandv
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
	.byte	0x1
	.byte	0x3a
	.uleb128 0x9
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
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
	.byte	0
	.uleb128 0x11
	.string	"SS"
	.byte	0x3
	.byte	0x28
	.long	0x224
	.byte	0xa
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x13
	.long	.LASF22
	.byte	0x3
	.byte	0x29
	.long	0x224
	.byte	0xb
	.uleb128 0x13
	.long	.LASF23
	.byte	0x3
	.byte	0x2a
	.long	0x224
	.byte	0xc
	.uleb128 0x11
	.string	"SCK"
	.byte	0x3
	.byte	0x2b
	.long	0x224
	.byte	0xd
	.uleb128 0x11
	.string	"SDA"
	.byte	0x3
	.byte	0x2d
	.long	0x224
	.byte	0x12
	.uleb128 0x11
	.string	"SCL"
	.byte	0x3
	.byte	0x2e
	.long	0x224
	.byte	0x13
	.uleb128 0x11
	.string	"A0"
	.byte	0x3
	.byte	0x31
	.long	0x224
	.byte	0xe
	.uleb128 0x11
	.string	"A1"
	.byte	0x3
	.byte	0x32
	.long	0x224
	.byte	0xf
	.uleb128 0x11
	.string	"A2"
	.byte	0x3
	.byte	0x33
	.long	0x224
	.byte	0x10
	.uleb128 0x11
	.string	"A3"
	.byte	0x3
	.byte	0x34
	.long	0x224
	.byte	0x11
	.uleb128 0x11
	.string	"A4"
	.byte	0x3
	.byte	0x35
	.long	0x224
	.byte	0x12
	.uleb128 0x11
	.string	"A5"
	.byte	0x3
	.byte	0x36
	.long	0x224
	.byte	0x13
	.uleb128 0x11
	.string	"A6"
	.byte	0x3
	.byte	0x37
	.long	0x224
	.byte	0x14
	.uleb128 0x11
	.string	"A7"
	.byte	0x3
	.byte	0x38
	.long	0x224
	.byte	0x15
	.uleb128 0x14
	.byte	0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x11
	.long	.LASF30
	.byte	0x1
	.long	0x2d4
	.uleb128 0x15
	.long	0x3b
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF41
	.byte	0x6
	.word	0x12e
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x1b
	.long	.LASF26
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x12
	.long	.LASF27
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x34
	.long	.LASF31
	.byte	0x1
	.long	0x314
	.uleb128 0x15
	.long	0x4d
	.uleb128 0x15
	.long	0x4d
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF42
	.byte	0x6
	.word	0x123
	.long	0x29
	.byte	0x1
	.uleb128 0x15
	.long	0xa2
	.uleb128 0x15
	.long	0x4d
	.uleb128 0x15
	.long	0x5f
	.uleb128 0x15
	.long	0x5f
	.uleb128 0x15
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0x2115
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.long	.LFB99
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
	.long	.LFE99
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB98
	.long	.LFE98
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB97
	.long	.LFE97
	.long	.LFB99
	.long	.LFE99
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"long long int"
.LASF38:
	.string	"setup"
.LASF36:
	.string	"ir_rxhandler"
.LASF34:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF7:
	.string	"long int"
.LASF15:
	.string	"bool"
.LASF16:
	.string	"send_IR_Command"
.LASF0:
	.string	"int8_t"
.LASF30:
	.string	"_Z11IR_transmith"
.LASF20:
	.string	"Send_Drive_Command"
.LASF12:
	.string	"float"
.LASF37:
	.string	"_Z12ir_rxhandlerv"
.LASF42:
	.string	"Task_Create_Periodic"
.LASF24:
	.string	"Roomba_Init"
.LASF39:
	.string	"r_main"
.LASF8:
	.string	"long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"Roomba_Drive"
.LASF13:
	.string	"double"
.LASF23:
	.string	"MISO"
.LASF25:
	.string	"IR_init"
.LASF22:
	.string	"MOSI"
.LASF6:
	.string	"unsigned int"
.LASF40:
	.string	"_Z6r_mainv"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"uint8_t"
.LASF4:
	.string	"int16_t"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"sizetype"
.LASF18:
	.string	"_Z15send_IR_Commandv"
.LASF32:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF33:
	.string	".././project2.cpp"
.LASF11:
	.string	"char"
.LASF21:
	.string	"_Z18Send_Drive_Commandv"
.LASF27:
	.string	"_Z7IR_initv"
.LASF26:
	.string	"_Z11Roomba_Initv"
.LASF28:
	.string	"IR_transmit"
.LASF5:
	.string	"uint16_t"
.LASF41:
	.string	"Task_Next"
.LASF19:
	.string	"_Z15radio_rxhandlerh"
.LASF35:
	.string	"pipenumber"
.LASF31:
	.string	"_Z12Roomba_Driveii"
.LASF17:
	.string	"radio_rxhandler"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
