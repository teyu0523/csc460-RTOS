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
	.section	.text._Z18Send_Drive_Commandv,"ax",@progbits
.global	_Z18Send_Drive_Commandv
	.type	_Z18Send_Drive_Commandv, @function
_Z18Send_Drive_Commandv:
.LFB101:
	.file 1 ".././project2.cpp"
	.loc 1 75 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	.loc 1 77 0 discriminator 1
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-16)
	ldi r25,0
	call _Z12Roomba_Driveii
.LVL0:
	.loc 1 78 0 discriminator 1
	call Task_Next
.LVL1:
	rjmp .L2
	.cfi_endproc
.LFE101:
	.size	_Z18Send_Drive_Commandv, .-_Z18Send_Drive_Commandv
	.section	.text._Z15radio_rxhandlerh,"ax",@progbits
.global	_Z15radio_rxhandlerh
	.type	_Z15radio_rxhandlerh, @function
_Z15radio_rxhandlerh:
.LFB94:
	.loc 1 23 0
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
	.section	.text._Z18handleRoombaPacketP3_rp,"ax",@progbits
.global	_Z18handleRoombaPacketP3_rp
	.type	_Z18handleRoombaPacketP3_rp, @function
_Z18handleRoombaPacketP3_rp:
.LFB96:
	.loc 1 33 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE96:
	.size	_Z18handleRoombaPacketP3_rp, .-_Z18handleRoombaPacketP3_rp
	.section	.text._Z14handleIRPacketP3_rp,"ax",@progbits
.global	_Z14handleIRPacketP3_rp
	.type	_Z14handleIRPacketP3_rp, @function
_Z14handleIRPacketP3_rp:
.LFB97:
	.loc 1 37 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE97:
	.size	_Z14handleIRPacketP3_rp, .-_Z14handleIRPacketP3_rp
	.section	.text._Z19rr_roomba_controlerv,"ax",@progbits
.global	_Z19rr_roomba_controlerv
	.type	_Z19rr_roomba_controlerv, @function
_Z19rr_roomba_controlerv:
.LFB98:
	.loc 1 42 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE98:
	.size	_Z19rr_roomba_controlerv, .-_Z19rr_roomba_controlerv
	.section	.text._Z18per_roomba_timeoutv,"ax",@progbits
.global	_Z18per_roomba_timeoutv
	.type	_Z18per_roomba_timeoutv, @function
_Z18per_roomba_timeoutv:
.LFB99:
	.loc 1 50 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE99:
	.size	_Z18per_roomba_timeoutv, .-_Z18per_roomba_timeoutv
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
.LFB100:
	.loc 1 71 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 72 0
	jmp _Z11Roomba_Initv
.LVL5:
	.cfi_endproc
.LFE100:
	.size	setup, .-setup
	.section	.text._Z6r_mainv,"ax",@progbits
.global	_Z6r_mainv
	.type	_Z6r_mainv, @function
_Z6r_mainv:
.LFB102:
	.loc 1 83 0
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
.LBB4:
.LBB5:
	.loc 1 72 0
	call _Z11Roomba_Initv
.LVL6:
.LBE5:
.LBE4:
	.loc 1 86 0
	ldi r16,lo8(5)
	ldi r17,0
	ldi r18,lo8(4)
	ldi r19,0
	ldi r20,lo8(10)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(gs(_Z18Send_Drive_Commandv))
	ldi r25,hi8(gs(_Z18Send_Drive_Commandv))
	call Task_Create_Periodic
.LVL7:
	.loc 1 89 0
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE102:
	.size	_Z6r_mainv, .-_Z6r_mainv
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././radio/sensor_struct.h"
	.file 4 ".././radio/packet.h"
	.file 5 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 6 ".././os.h"
	.file 7 ".././roomba/roomba.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x75b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0x4
	.long	.LASF96
	.long	.LASF97
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
	.uleb128 0x7
	.long	.LASF45
	.byte	0x2
	.byte	0x3
	.byte	0xc
	.long	0xd9
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0xe
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0xf
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x10
	.long	0xb0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.byte	0x3
	.byte	0x13
	.long	0x107
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x15
	.long	0x4d
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.byte	0x16
	.long	0xd9
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0x17
	.long	0xe4
	.uleb128 0x9
	.long	.LASF22
	.byte	0x2
	.byte	0x3
	.byte	0x1a
	.long	0x135
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x1c
	.long	0x5f
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.byte	0x1d
	.long	0xd9
	.byte	0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3
	.byte	0x1e
	.long	0x112
	.uleb128 0xb
	.byte	0x1a
	.byte	0x3
	.byte	0x22
	.long	.LASF98
	.long	0x265
	.uleb128 0x8
	.long	.LASF24
	.byte	0x3
	.byte	0x24
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x3
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF26
	.byte	0x3
	.byte	0x26
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF27
	.byte	0x3
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF28
	.byte	0x3
	.byte	0x28
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF29
	.byte	0x3
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF30
	.byte	0x3
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF31
	.byte	0x3
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF32
	.byte	0x3
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF33
	.byte	0x3
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF34
	.byte	0x3
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.long	.LASF36
	.byte	0x3
	.byte	0x32
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF37
	.byte	0x3
	.byte	0x33
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF38
	.byte	0x3
	.byte	0x36
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF39
	.byte	0x3
	.byte	0x37
	.long	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.long	.LASF40
	.byte	0x3
	.byte	0x38
	.long	0x107
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x8
	.long	.LASF41
	.byte	0x3
	.byte	0x39
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x8
	.long	.LASF42
	.byte	0x3
	.byte	0x3a
	.long	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF43
	.byte	0x3
	.byte	0x3b
	.long	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x3
	.byte	0x3c
	.long	0x140
	.uleb128 0x7
	.long	.LASF46
	.byte	0x17
	.byte	0x4
	.byte	0x28
	.long	0x2b5
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0x2a
	.long	0x2b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x4
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF49
	.byte	0x4
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF50
	.byte	0x4
	.byte	0x2e
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xc
	.long	0x46
	.long	0x2c5
	.uleb128 0xd
	.long	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	0x46
	.long	0x2d5
	.uleb128 0xd
	.long	0xa9
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.byte	0x30
	.long	0x270
	.uleb128 0x7
	.long	.LASF52
	.byte	0x1b
	.byte	0x4
	.byte	0x32
	.long	0x309
	.uleb128 0x8
	.long	.LASF53
	.byte	0x4
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x4
	.byte	0x35
	.long	0x265
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.byte	0x37
	.long	0x2e0
	.uleb128 0x7
	.long	.LASF56
	.byte	0x8
	.byte	0x4
	.byte	0x39
	.long	0x359
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0x3a
	.long	0x2b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x4
	.byte	0x3b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF58
	.byte	0x4
	.byte	0x3c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF59
	.byte	0x4
	.byte	0x3d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x4
	.byte	0x3e
	.long	0x314
	.uleb128 0x7
	.long	.LASF61
	.byte	0x2
	.byte	0x4
	.byte	0x40
	.long	0x38d
	.uleb128 0x8
	.long	.LASF53
	.byte	0x4
	.byte	0x41
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x4
	.byte	0x42
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x4
	.byte	0x43
	.long	0x364
	.uleb128 0x7
	.long	.LASF63
	.byte	0x1d
	.byte	0x4
	.byte	0x45
	.long	0x3c1
	.uleb128 0x8
	.long	.LASF64
	.byte	0x4
	.byte	0x47
	.long	0x2b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x4
	.byte	0x48
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xc
	.long	0x46
	.long	0x3d1
	.uleb128 0xd
	.long	0xa9
	.byte	0x17
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x4
	.byte	0x49
	.long	0x398
	.uleb128 0xe
	.string	"_pf"
	.byte	0x1d
	.byte	0x4
	.byte	0x50
	.long	0x42b
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.byte	0x52
	.long	0x42b
	.uleb128 0xa
	.long	.LASF48
	.byte	0x4
	.byte	0x53
	.long	0x2d5
	.uleb128 0xa
	.long	.LASF54
	.byte	0x4
	.byte	0x54
	.long	0x309
	.uleb128 0xa
	.long	.LASF58
	.byte	0x4
	.byte	0x55
	.long	0x38d
	.uleb128 0xa
	.long	.LASF57
	.byte	0x4
	.byte	0x56
	.long	0x359
	.uleb128 0xa
	.long	.LASF68
	.byte	0x4
	.byte	0x57
	.long	0x3d1
	.byte	0
	.uleb128 0xc
	.long	0x46
	.long	0x43b
	.uleb128 0xd
	.long	0xa9
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x4
	.byte	0x58
	.long	0x3dc
	.uleb128 0xf
	.string	"_rp"
	.byte	0x20
	.byte	0x4
	.byte	0x5c
	.long	0x47d
	.uleb128 0x8
	.long	.LASF70
	.byte	0x4
	.byte	0x5e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x4
	.byte	0x5f
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF72
	.byte	0x4
	.byte	0x60
	.long	0x43b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x4
	.byte	0x61
	.long	0x446
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF74
	.uleb128 0x10
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x4b
	.long	.LASF77
	.long	.LFB101
	.long	.LFE101
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4e2
	.uleb128 0x12
	.long	.LVL0
	.long	0x703
	.long	0x4d8
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
	.long	.LVL1
	.long	0x71f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x17
	.long	.LASF78
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x50d
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.byte	0x17
	.long	0x3b
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.byte	0x1d
	.long	.LASF87
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x21
	.long	.LASF80
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x556
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.byte	0x21
	.long	0x556
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x47d
	.uleb128 0x11
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0x25
	.long	.LASF84
	.long	.LFB97
	.long	.LFE97
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x58c
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.byte	0x25
	.long	0x556
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.byte	0x2a
	.long	.LASF88
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.byte	0x32
	.long	.LASF90
	.long	.LFB99
	.long	.LFE99
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x17
	.long	0x48f
	.long	.LFB100
	.long	.LFE100
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5df
	.uleb128 0x18
	.long	.LVL5
	.byte	0x1
	.long	0x729
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.byte	0x52
	.long	.LASF100
	.long	0x58
	.long	.LFB102
	.long	.LFE102
	.long	.LLST0
	.byte	0x1
	.long	0x65f
	.uleb128 0x1a
	.long	0x48f
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x55
	.long	0x61d
	.uleb128 0x14
	.long	.LVL6
	.long	0x729
	.byte	0
	.uleb128 0x1b
	.long	.LVL7
	.long	0x736
	.uleb128 0x13
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_Z18Send_Drive_Commandv
	.uleb128 0x13
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3a
	.uleb128 0x13
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.uleb128 0x13
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
	.uleb128 0x1c
	.string	"SS"
	.byte	0x5
	.byte	0x28
	.long	0x66a
	.byte	0xa
	.uleb128 0x1d
	.long	0x3b
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x5
	.byte	0x29
	.long	0x66a
	.byte	0xb
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x5
	.byte	0x2a
	.long	0x66a
	.byte	0xc
	.uleb128 0x1c
	.string	"SCK"
	.byte	0x5
	.byte	0x2b
	.long	0x66a
	.byte	0xd
	.uleb128 0x1c
	.string	"SDA"
	.byte	0x5
	.byte	0x2d
	.long	0x66a
	.byte	0x12
	.uleb128 0x1c
	.string	"SCL"
	.byte	0x5
	.byte	0x2e
	.long	0x66a
	.byte	0x13
	.uleb128 0x1c
	.string	"A0"
	.byte	0x5
	.byte	0x31
	.long	0x66a
	.byte	0xe
	.uleb128 0x1c
	.string	"A1"
	.byte	0x5
	.byte	0x32
	.long	0x66a
	.byte	0xf
	.uleb128 0x1c
	.string	"A2"
	.byte	0x5
	.byte	0x33
	.long	0x66a
	.byte	0x10
	.uleb128 0x1c
	.string	"A3"
	.byte	0x5
	.byte	0x34
	.long	0x66a
	.byte	0x11
	.uleb128 0x1c
	.string	"A4"
	.byte	0x5
	.byte	0x35
	.long	0x66a
	.byte	0x12
	.uleb128 0x1c
	.string	"A5"
	.byte	0x5
	.byte	0x36
	.long	0x66a
	.byte	0x13
	.uleb128 0x1c
	.string	"A6"
	.byte	0x5
	.byte	0x37
	.long	0x66a
	.byte	0x14
	.uleb128 0x1c
	.string	"A7"
	.byte	0x5
	.byte	0x38
	.long	0x66a
	.byte	0x15
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF101
	.byte	0x7
	.byte	0x34
	.long	.LASF102
	.byte	0x1
	.long	0x71f
	.uleb128 0x20
	.long	0x4d
	.uleb128 0x20
	.long	0x4d
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF94
	.byte	0x6
	.word	0x12e
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF103
	.byte	0x7
	.byte	0x1b
	.long	.LASF104
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.long	.LASF105
	.byte	0x6
	.word	0x123
	.long	0x29
	.byte	0x1
	.uleb128 0x20
	.long	0xa2
	.uleb128 0x20
	.long	0x4d
	.uleb128 0x20
	.long	0x5f
	.uleb128 0x20
	.long	0x5f
	.uleb128 0x20
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x17
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
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
	.uleb128 0x20
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB102
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
	.long	.LFE102
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	.LFB102
	.long	.LFE102-.LFB102
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB101
	.long	.LFE101
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	.LFB100
	.long	.LFE100
	.long	.LFB102
	.long	.LFE102
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"timestamp"
.LASF85:
	.string	"ir_rxhandler"
.LASF37:
	.string	"angle"
.LASF88:
	.string	"_Z19rr_roomba_controlerv"
.LASF96:
	.string	".././project2.cpp"
.LASF0:
	.string	"int8_t"
.LASF102:
	.string	"_Z12Roomba_Driveii"
.LASF98:
	.string	"20roomba_sensor_data_t"
.LASF43:
	.string	"capacity"
.LASF57:
	.string	"ir_command"
.LASF33:
	.string	"dirt_right"
.LASF45:
	.string	"_i16s"
.LASF54:
	.string	"sensors"
.LASF104:
	.string	"_Z11Roomba_Initv"
.LASF32:
	.string	"dirt_left"
.LASF59:
	.string	"servo_angle"
.LASF83:
	.string	"handleIRPacket"
.LASF17:
	.string	"int16_split"
.LASF16:
	.string	"high_byte"
.LASF27:
	.string	"cliff_front_left"
.LASF7:
	.string	"long int"
.LASF18:
	.string	"value"
.LASF49:
	.string	"num_arg_bytes"
.LASF1:
	.string	"uint8_t"
.LASF93:
	.string	"setup"
.LASF95:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF103:
	.string	"Roomba_Init"
.LASF69:
	.string	"payloadformat_t"
.LASF74:
	.string	"bool"
.LASF15:
	.string	"low_byte"
.LASF12:
	.string	"float"
.LASF46:
	.string	"_cmd"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF99:
	.string	"r_main"
.LASF44:
	.string	"roomba_sensor_data_t"
.LASF61:
	.string	"_ir_data"
.LASF39:
	.string	"voltage"
.LASF64:
	.string	"address"
.LASF51:
	.string	"pf_command_t"
.LASF53:
	.string	"roomba_number"
.LASF62:
	.string	"pf_ir_data_t"
.LASF34:
	.string	"remote_opcode"
.LASF73:
	.string	"radiopacket_t"
.LASF30:
	.string	"virtual_wall"
.LASF76:
	.string	"radio_rxhandler"
.LASF60:
	.string	"pf_ir_command_t"
.LASF42:
	.string	"charge"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"cliff_right"
.LASF94:
	.string	"Task_Next"
.LASF80:
	.string	"_Z18handleRoombaPacketP3_rp"
.LASF66:
	.string	"pf_message_t"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"wall"
.LASF70:
	.string	"type"
.LASF79:
	.string	"handleRoombaPacket"
.LASF6:
	.string	"unsigned int"
.LASF58:
	.string	"ir_data"
.LASF5:
	.string	"uint16_t"
.LASF23:
	.string	"uint16_u"
.LASF8:
	.string	"long unsigned int"
.LASF86:
	.string	"rr_roomba_controler"
.LASF40:
	.string	"current"
.LASF67:
	.string	"_filler"
.LASF65:
	.string	"messagecontent"
.LASF28:
	.string	"cliff_front_right"
.LASF84:
	.string	"_Z14handleIRPacketP3_rp"
.LASF77:
	.string	"_Z18Send_Drive_Commandv"
.LASF11:
	.string	"char"
.LASF36:
	.string	"distance"
.LASF92:
	.string	"MISO"
.LASF105:
	.string	"Task_Create_Periodic"
.LASF101:
	.string	"Roomba_Drive"
.LASF4:
	.string	"int16_t"
.LASF20:
	.string	"int16_u"
.LASF97:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF90:
	.string	"_Z18per_roomba_timeoutv"
.LASF47:
	.string	"sender_address"
.LASF68:
	.string	"message"
.LASF19:
	.string	"bytes"
.LASF13:
	.string	"double"
.LASF21:
	.string	"_i16u"
.LASF63:
	.string	"_msg"
.LASF41:
	.string	"temperature"
.LASF82:
	.string	"packet"
.LASF87:
	.string	"_Z12ir_rxhandlerv"
.LASF75:
	.string	"Send_Drive_Command"
.LASF56:
	.string	"_ir_command"
.LASF22:
	.string	"_u16u"
.LASF89:
	.string	"per_roomba_timeout"
.LASF14:
	.string	"sizetype"
.LASF81:
	.string	"pipenumber"
.LASF55:
	.string	"pf_sensors_t"
.LASF26:
	.string	"cliff_left"
.LASF100:
	.string	"_Z6r_mainv"
.LASF31:
	.string	"motor_overcurrents"
.LASF91:
	.string	"MOSI"
.LASF24:
	.string	"bumps_wheeldrops"
.LASF38:
	.string	"charging_state"
.LASF52:
	.string	"_sensors"
.LASF50:
	.string	"arguments"
.LASF35:
	.string	"buttons"
.LASF48:
	.string	"command"
.LASF72:
	.string	"payload"
.LASF78:
	.string	"_Z15radio_rxhandlerh"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
