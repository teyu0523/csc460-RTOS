	.file	"cops_and_robbers.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	ROOMBA_FREQUENCIES
	.section	.data.ROOMBA_FREQUENCIES,"aw",@progbits
	.type	ROOMBA_FREQUENCIES, @object
	.size	ROOMBA_FREQUENCIES, 4
ROOMBA_FREQUENCIES:
	.byte	104
	.byte	106
	.byte	108
	.byte	110
.global	BASE_FREQUENCY
	.section	.data.BASE_FREQUENCY,"aw",@progbits
	.type	BASE_FREQUENCY, @object
	.size	BASE_FREQUENCY, 1
BASE_FREQUENCY:
	.byte	102
.global	ROOMBA_ADDRESSES
	.section	.data.ROOMBA_ADDRESSES,"aw",@progbits
	.type	ROOMBA_ADDRESSES, @object
	.size	ROOMBA_ADDRESSES, 20
ROOMBA_ADDRESSES:
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
	.byte	74
.global	BASE_ADDRESS
	.section	.data.BASE_ADDRESS,"aw",@progbits
	.type	BASE_ADDRESS, @object
	.size	BASE_ADDRESS, 5
BASE_ADDRESS:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.text
.Letext0:
	.file 1 "../radio/cops_and_robbers.cpp"
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe2
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF12
	.byte	0x4
	.long	.LASF13
	.long	.LASF14
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x2
	.byte	0x7a
	.long	0x2f
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
	.uleb128 0x5
	.long	0x2f
	.long	0x70
	.uleb128 0x6
	.long	0x70
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.long	0x2f
	.long	0x87
	.uleb128 0x6
	.long	0x70
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF8
	.byte	0x1
	.byte	0xb
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	BASE_ADDRESS
	.uleb128 0x5
	.long	0x2f
	.long	0xaf
	.uleb128 0x6
	.long	0x70
	.byte	0x3
	.uleb128 0x6
	.long	0x70
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF9
	.byte	0x1
	.byte	0xc
	.long	0x99
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ROOMBA_ADDRESSES
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x13
	.long	0x24
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	BASE_FREQUENCY
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x14
	.long	0x60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ROOMBA_FREQUENCIES
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF11:
	.string	"ROOMBA_FREQUENCIES"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF8:
	.string	"BASE_ADDRESS"
.LASF10:
	.string	"BASE_FREQUENCY"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint8_t"
.LASF9:
	.string	"ROOMBA_ADDRESSES"
.LASF7:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"../radio/cops_and_robbers.cpp"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
