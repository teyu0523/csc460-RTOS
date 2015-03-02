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
	.section	.text._Z11round_robinv,"ax",@progbits
.global	_Z11round_robinv
	.type	_Z11round_robinv, @function
_Z11round_robinv:
.LFB90:
	.file 1 ".././project2.cpp"
	.loc 1 23 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE90:
	.size	_Z11round_robinv, .-_Z11round_robinv
	.text
.Letext0:
	.file 2 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.long	.LASF15
	.long	.LASF16
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF17
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x16
	.long	.LASF19
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x6
	.string	"SS"
	.byte	0x2
	.byte	0x28
	.long	0xac
	.byte	0xa
	.uleb128 0x7
	.long	0x30
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.byte	0x29
	.long	0xac
	.byte	0xb
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0x2a
	.long	0xac
	.byte	0xc
	.uleb128 0x6
	.string	"SCK"
	.byte	0x2
	.byte	0x2b
	.long	0xac
	.byte	0xd
	.uleb128 0x6
	.string	"SDA"
	.byte	0x2
	.byte	0x2d
	.long	0xac
	.byte	0x12
	.uleb128 0x6
	.string	"SCL"
	.byte	0x2
	.byte	0x2e
	.long	0xac
	.byte	0x13
	.uleb128 0x6
	.string	"A0"
	.byte	0x2
	.byte	0x31
	.long	0xac
	.byte	0xe
	.uleb128 0x6
	.string	"A1"
	.byte	0x2
	.byte	0x32
	.long	0xac
	.byte	0xf
	.uleb128 0x6
	.string	"A2"
	.byte	0x2
	.byte	0x33
	.long	0xac
	.byte	0x10
	.uleb128 0x6
	.string	"A3"
	.byte	0x2
	.byte	0x34
	.long	0xac
	.byte	0x11
	.uleb128 0x6
	.string	"A4"
	.byte	0x2
	.byte	0x35
	.long	0xac
	.byte	0x12
	.uleb128 0x6
	.string	"A5"
	.byte	0x2
	.byte	0x36
	.long	0xac
	.byte	0x13
	.uleb128 0x6
	.string	"A6"
	.byte	0x2
	.byte	0x37
	.long	0xac
	.byte	0x14
	.uleb128 0x6
	.string	"A7"
	.byte	0x2
	.byte	0x38
	.long	0xac
	.byte	0x15
	.uleb128 0x6
	.string	"PT"
	.byte	0x1
	.byte	0x11
	.long	0x150
	.byte	0
	.uleb128 0x7
	.long	0x49
	.uleb128 0x9
	.long	0x3b
	.long	0x166
	.uleb128 0xa
	.long	0x166
	.word	0xffff
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xb
	.string	"PPP"
	.byte	0x1
	.byte	0x12
	.long	0x178
	.uleb128 0x7
	.long	0x155
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB90
	.long	.LFE90
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"bool"
.LASF8:
	.string	"float"
.LASF4:
	.string	"long unsigned int"
.LASF19:
	.string	"_Z11round_robinv"
.LASF16:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\CSC 460\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"double"
.LASF13:
	.string	"ssizetype"
.LASF12:
	.string	"MISO"
.LASF11:
	.string	"MOSI"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint8_t"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF15:
	.string	".././project2.cpp"
.LASF7:
	.string	"char"
.LASF18:
	.string	"round_robin"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
