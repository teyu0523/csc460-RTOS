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
	.file 1 ".././project2.cpp"
	.loc 1 14 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 15 0
	ldi r24,lo8(-128)
	out 0x4,r24
.L2:
.LVL0:
.LBB5:
.LBB6:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0 discriminator 1
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBE6:
.LBE5:
	.loc 1 18 0 discriminator 1
	in r24,0x5
	subi r24,lo8(-(-128))
	out 0x5,r24
	rjmp .L2
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 24 0
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z1pv))
	ldi r25,hi8(gs(_Z1pv))
	call Task_Create
.LVL1:
	.loc 1 26 0
	ldi r24,lo8(1)
	ldi r25,0
	ret
	.cfi_endproc
.LFE95:
	.size	_Z6r_mainv, .-_Z6r_mainv
.global	PPP
	.section	.rodata.PPP,"a",@progbits
	.type	PPP, @object
	.size	PPP, 2
PPP:
	.byte	1
	.byte	-1
.global	PT
	.section	.rodata.PT,"a",@progbits
	.type	PT, @object
	.size	PT, 2
PT:
	.word	1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 5 ".././os.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.long	.LASF19
	.long	.LASF20
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x5
	.byte	0x2
	.long	0x92
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0xe0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x2
	.byte	0x8e
	.long	0x85
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF14
	.byte	0x2
	.byte	0x90
	.long	0x85
	.uleb128 0xa
	.long	.LASF15
	.byte	0x2
	.byte	0x94
	.long	0x57
	.uleb128 0xb
	.byte	0x1
	.long	.LASF23
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0xc
	.long	0x62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"p"
	.byte	0x1
	.byte	0xd
	.long	.LASF24
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x133
	.uleb128 0xe
	.long	0xa1
	.long	.LBB5
	.long	.LBE5
	.byte	0x1
	.byte	0x11
	.uleb128 0xf
	.long	0xad
	.byte	0x4
	.long	0x41200000
	.uleb128 0x10
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x11
	.long	0xb9
	.byte	0x4
	.long	0x481c4000
	.uleb128 0x12
	.long	0xc4
	.long	0x27100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xcf
	.byte	0
	.long	0x143
	.uleb128 0xc
	.long	0x62
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x16
	.long	.LASF26
	.long	0x42
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x19b
	.uleb128 0x15
	.long	.LVL1
	.long	0x27c
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
	.uleb128 0x16
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"SS"
	.byte	0x4
	.byte	0x28
	.long	0x1a6
	.byte	0xa
	.uleb128 0x18
	.long	0x30
	.uleb128 0x19
	.long	.LASF16
	.byte	0x4
	.byte	0x29
	.long	0x1a6
	.byte	0xb
	.uleb128 0x19
	.long	.LASF17
	.byte	0x4
	.byte	0x2a
	.long	0x1a6
	.byte	0xc
	.uleb128 0x17
	.string	"SCK"
	.byte	0x4
	.byte	0x2b
	.long	0x1a6
	.byte	0xd
	.uleb128 0x17
	.string	"SDA"
	.byte	0x4
	.byte	0x2d
	.long	0x1a6
	.byte	0x12
	.uleb128 0x17
	.string	"SCL"
	.byte	0x4
	.byte	0x2e
	.long	0x1a6
	.byte	0x13
	.uleb128 0x17
	.string	"A0"
	.byte	0x4
	.byte	0x31
	.long	0x1a6
	.byte	0xe
	.uleb128 0x17
	.string	"A1"
	.byte	0x4
	.byte	0x32
	.long	0x1a6
	.byte	0xf
	.uleb128 0x17
	.string	"A2"
	.byte	0x4
	.byte	0x33
	.long	0x1a6
	.byte	0x10
	.uleb128 0x17
	.string	"A3"
	.byte	0x4
	.byte	0x34
	.long	0x1a6
	.byte	0x11
	.uleb128 0x17
	.string	"A4"
	.byte	0x4
	.byte	0x35
	.long	0x1a6
	.byte	0x12
	.uleb128 0x17
	.string	"A5"
	.byte	0x4
	.byte	0x36
	.long	0x1a6
	.byte	0x13
	.uleb128 0x17
	.string	"A6"
	.byte	0x4
	.byte	0x37
	.long	0x1a6
	.byte	0x14
	.uleb128 0x17
	.string	"A7"
	.byte	0x4
	.byte	0x38
	.long	0x1a6
	.byte	0x15
	.uleb128 0x1a
	.long	0x3b
	.long	0x24f
	.uleb128 0x1b
	.long	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.string	"PPP"
	.byte	0x1
	.byte	0x9
	.long	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PPP
	.uleb128 0x18
	.long	0x23f
	.uleb128 0x1c
	.string	"PT"
	.byte	0x1
	.byte	0x8
	.long	0x277
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PT
	.uleb128 0x18
	.long	0x49
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF27
	.byte	0x5
	.word	0x113
	.long	0x42
	.byte	0x1
	.uleb128 0xc
	.long	0x8c
	.uleb128 0xc
	.long	0x42
	.uleb128 0xc
	.long	0x49
	.uleb128 0xc
	.long	0x49
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
.LASF13:
	.string	"bool"
.LASF24:
	.string	"_Z1pv"
.LASF23:
	.string	"__builtin_avr_delay_cycles"
.LASF10:
	.string	"float"
.LASF25:
	.string	"r_main"
.LASF6:
	.string	"long unsigned int"
.LASF21:
	.string	"_delay_ms"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"double"
.LASF17:
	.string	"MISO"
.LASF20:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF16:
	.string	"MOSI"
.LASF2:
	.string	"unsigned int"
.LASF26:
	.string	"_Z6r_mainv"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF27:
	.string	"Task_Create"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF18:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF19:
	.string	".././project2.cpp"
.LASF9:
	.string	"char"
.LASF15:
	.string	"__ticks_dc"
.LASF14:
	.string	"__tmp"
.LASF5:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"__ms"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
