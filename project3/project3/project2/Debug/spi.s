	.file	"spi.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z8SPI_Initv,"ax",@progbits
.global	_Z8SPI_Initv
	.type	_Z8SPI_Initv, @function
_Z8SPI_Initv:
.LFB11:
	.file 1 "../radio/spi.cpp"
	.loc 1 28 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 34 0
	in r24,0x4
	andi r24,lo8(-16)
	out 0x4,r24
	.loc 1 36 0
	in r24,0x4
	ori r24,lo8(7)
	out 0x4,r24
	.loc 1 52 0
	sbi 0x5,0
	.loc 1 54 0
	ldi r24,lo8(80)
	out 0x2c,r24
	.loc 1 56 0
	ldi r24,lo8(1)
	out 0x2d,r24
	.loc 1 58 0
	cbi 0x5,0
	ret
	.cfi_endproc
.LFE11:
	.size	_Z8SPI_Initv, .-_Z8SPI_Initv
	.section	.text._Z19SPI_ReadWrite_BlockPhS_h,"ax",@progbits
.global	_Z19SPI_ReadWrite_BlockPhS_h
	.type	_Z19SPI_ReadWrite_BlockPhS_h, @function
_Z19SPI_ReadWrite_BlockPhS_h:
.LFB12:
	.loc 1 62 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
.LBB2:
	.loc 1 64 0
	movw r30,r22
.LVL1:
.L3:
	mov r19,r30
	sub r19,r18
	.loc 1 64 0 is_stmt 0 discriminator 1
	cp r19,r20
	brsh .L8
	.loc 1 65 0 is_stmt 1
	movw r26,r24
	ld r19,X+
	movw r24,r26
	out 0x2e,r19
.L5:
	.loc 1 66 0 discriminator 1
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L5
	.loc 1 67 0
	in r19,0x2e
	st Z+,r19
.LVL2:
	rjmp .L3
.L8:
/* epilogue start */
.LBE2:
	.loc 1 69 0
	ret
	.cfi_endproc
.LFE12:
	.size	_Z19SPI_ReadWrite_BlockPhS_h, .-_Z19SPI_ReadWrite_BlockPhS_h
	.section	.text._Z15SPI_Write_BlockPhh,"ax",@progbits
.global	_Z15SPI_Write_BlockPhh
	.type	_Z15SPI_Write_BlockPhh, @function
_Z15SPI_Write_BlockPhh:
.LFB13:
	.loc 1 72 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
.LBB3:
	.loc 1 74 0
	movw r30,r24
.LVL4:
.L10:
	mov r24,r30
	sub r24,r18
	.loc 1 74 0 is_stmt 0 discriminator 1
	cp r24,r22
	brsh .L14
	.loc 1 75 0 is_stmt 1
	ld r24,Z+
.LVL5:
	out 0x2e,r24
.L12:
	.loc 1 76 0 discriminator 1
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L12
	rjmp .L10
.LVL6:
.L14:
/* epilogue start */
.LBE3:
	.loc 1 78 0
	ret
	.cfi_endproc
.LFE13:
	.size	_Z15SPI_Write_BlockPhh, .-_Z15SPI_Write_BlockPhh
	.section	.text._Z14SPI_Write_Byteh,"ax",@progbits
.global	_Z14SPI_Write_Byteh
	.type	_Z14SPI_Write_Byteh, @function
_Z14SPI_Write_Byteh:
.LFB14:
	.loc 1 81 0
	.cfi_startproc
.LVL7:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 82 0
	out 0x2e,r24
.L17:
	.loc 1 83 0 discriminator 1
	in __tmp_reg__,0x2d
	sbrs __tmp_reg__,7
	rjmp .L17
	.loc 1 84 0
	in r24,0x2e
.LVL8:
	.loc 1 85 0
	ret
	.cfi_endproc
.LFE14:
	.size	_Z14SPI_Write_Byteh, .-_Z14SPI_Write_Byteh
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x170
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.long	.LASF18
	.long	.LASF19
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF20
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
	.uleb128 0x5
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x1b
	.long	.LASF22
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x3d
	.long	.LASF12
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xef
	.uleb128 0x7
	.long	.LASF8
	.byte	0x1
	.byte	0x3d
	.long	0xef
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0x3d
	.long	0xef
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x3d
	.long	0x30
	.byte	0x1
	.byte	0x64
	.uleb128 0xa
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x3f
	.long	0x30
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x30
	.uleb128 0x6
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x47
	.long	.LASF13
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x146
	.uleb128 0x7
	.long	.LASF8
	.byte	0x1
	.byte	0x47
	.long	0xef
	.long	.LLST2
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x47
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0xa
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x49
	.long	0x30
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x50
	.long	.LASF15
	.long	0x30
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x50
	.long	0x30
	.long	.LLST4
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
	.uleb128 0x7
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LFE12
	.word	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
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
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL6
	.long	.LFE13
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LFE14
	.word	0x2
	.byte	0x8
	.byte	0x4e
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
.LASF19:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF13:
	.string	"_Z15SPI_Write_BlockPhh"
.LASF21:
	.string	"SPI_Init"
.LASF14:
	.string	"SPI_Write_Byte"
.LASF16:
	.string	"byte"
.LASF8:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"../radio/spi.cpp"
.LASF4:
	.string	"long unsigned int"
.LASF12:
	.string	"_Z19SPI_ReadWrite_BlockPhS_h"
.LASF10:
	.string	"SPI_ReadWrite_Block"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint8_t"
.LASF5:
	.string	"long long int"
.LASF17:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF7:
	.string	"char"
.LASF9:
	.string	"buffer"
.LASF3:
	.string	"long int"
.LASF11:
	.string	"SPI_Write_Block"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"_Z14SPI_Write_Byteh"
.LASF22:
	.string	"_Z8SPI_Initv"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
