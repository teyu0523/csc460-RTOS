	.file	"scheduler.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z14Scheduler_Initv,"ax",@progbits
.global	_Z14Scheduler_Initv
	.type	_Z14Scheduler_Initv, @function
_Z14Scheduler_Initv:
.LFB90:
	.file 1 "../radio/scheduler.cpp"
	.loc 1 26 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 27 0
	call millis
.LVL0:
	sts last_runtime,r22
	sts last_runtime+1,r23
	sts last_runtime+2,r24
	sts last_runtime+3,r25
	ret
	.cfi_endproc
.LFE90:
	.size	_Z14Scheduler_Initv, .-_Z14Scheduler_Initv
	.section	.text._Z19Scheduler_StartTaskiiPFvvE,"ax",@progbits
.global	_Z19Scheduler_StartTaskiiPFvvE
	.type	_Z19Scheduler_StartTaskiiPFvvE, @function
_Z19Scheduler_StartTaskiiPFvvE:
.LFB91:
	.loc 1 31 0
	.cfi_startproc
.LVL1:
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
	movw r16,r24
	movw r24,r22
.LVL2:
.LBB2:
	.loc 1 33 0
	lds r22,_ZZ19Scheduler_StartTaskiiPFvvEE2id
.LVL3:
	cpi r22,lo8(8)
	brsh .L2
	.loc 1 35 0
	ldi r18,lo8(11)
	mul r22,r18
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(tasks))
	sbci r31,hi8(-(tasks))
	clr r18
	sbrc r17,7
	com r18
	mov r19,r18
	std Z+4,r16
	std Z+5,r17
	std Z+6,r18
	std Z+7,r19
	.loc 1 36 0
	clr r26
	sbrc r25,7
	com r26
	mov r27,r26
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	.loc 1 37 0
	ldi r24,lo8(1)
.LVL4:
	std Z+8,r24
	.loc 1 38 0
	std Z+10,r21
	std Z+9,r20
	.loc 1 39 0
	subi r22,lo8(-(1))
	sts _ZZ19Scheduler_StartTaskiiPFvvEE2id,r22
.LVL5:
.L2:
/* epilogue start */
.LBE2:
	.loc 1 41 0
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE91:
	.size	_Z19Scheduler_StartTaskiiPFvvE, .-_Z19Scheduler_StartTaskiiPFvvE
	.section	.text._Z18Scheduler_Dispatchv,"ax",@progbits
.global	_Z18Scheduler_Dispatchv
	.type	_Z18Scheduler_Dispatchv, @function
_Z18Scheduler_Dispatchv:
.LFB92:
	.loc 1 44 0
	.cfi_startproc
	push r6
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 6, -3
	push r7
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 7, -4
	push r8
.LCFI4:
	.cfi_def_cfa_offset 6
	.cfi_offset 8, -5
	push r9
.LCFI5:
	.cfi_def_cfa_offset 7
	.cfi_offset 9, -6
	push r10
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 10, -7
	push r11
.LCFI7:
	.cfi_def_cfa_offset 9
	.cfi_offset 11, -8
	push r12
.LCFI8:
	.cfi_def_cfa_offset 10
	.cfi_offset 12, -9
	push r13
.LCFI9:
	.cfi_def_cfa_offset 11
	.cfi_offset 13, -10
	push r14
.LCFI10:
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -11
	push r15
.LCFI11:
	.cfi_def_cfa_offset 13
	.cfi_offset 15, -12
	push r16
.LCFI12:
	.cfi_def_cfa_offset 14
	.cfi_offset 16, -13
	push r17
.LCFI13:
	.cfi_def_cfa_offset 15
	.cfi_offset 17, -14
	push r28
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_offset 28, -15
	push r29
.LCFI15:
	.cfi_def_cfa_offset 17
	.cfi_offset 29, -16
	rcall .
	push __zero_reg__
.LCFI16:
	.cfi_def_cfa_offset 21
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI17:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 18 */
.L__stack_usage = 18
.LBB3:
	.loc 1 47 0
	call millis
.LVL6:
	.loc 1 48 0
	lds r12,last_runtime
	lds r13,last_runtime+1
	lds r14,last_runtime+2
	lds r15,last_runtime+3
	movw r8,r22
	movw r10,r24
	sub r8,r12
	sbc r9,r13
	sbc r10,r14
	sbc r11,r15
.LVL7:
	.loc 1 49 0
	sts last_runtime,r22
	sts last_runtime+1,r23
	sts last_runtime+2,r24
	sts last_runtime+3,r25
.LVL8:
	ldi r24,lo8(tasks+8)
	mov r6,r24
	ldi r24,hi8(tasks+8)
	mov r7,r24
	ldi r16,lo8(tasks)
	ldi r17,hi8(tasks)
	.loc 1 51 0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
.LVL9:
	.loc 1 50 0
	ldi r30,0
	ldi r31,0
.LVL10:
.L10:
	.loc 1 56 0
	movw r26,r6
	ld r18,X
	tst r18
	breq .L6
	.loc 1 59 0
	movw r26,r16
	adiw r26,4
	ld r12,X+
	ld r13,X+
	ld r14,X+
	ld r15,X
	sbiw r26,4+3
	sub r12,r8
	sbc r13,r9
	sbc r14,r10
	sbc r15,r11
	adiw r26,4
	st X+,r12
	st X+,r13
	st X+,r14
	st X,r15
	sbiw r26,4+3
	.loc 1 60 0
	cp __zero_reg__,r12
	cpc __zero_reg__,r13
	cpc __zero_reg__,r14
	cpc __zero_reg__,r15
	brlt .L7
	.loc 1 62 0
	sbiw r30,0
	brne .L12
	.loc 1 66 0
	adiw r26,9
	ld r30,X+
	ld r31,X
	sbiw r26,9+1
.LVL11:
	.loc 1 67 0
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X
	sbiw r26,3
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	adiw r26,4
	st X+,r20
	st X+,r21
	st X+,r22
	st X,r23
	sbiw r26,4+3
	rjmp .L12
.L7:
	cp r12,r22
	cpc r13,r23
	cpc r14,r24
	cpc r15,r25
	brsh .L6
	movw r24,r14
	movw r22,r12
.LVL12:
	rjmp .L6
.LVL13:
.L12:
	.loc 1 69 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.LVL14:
.L6:
	ldi r27,11
	add r6,r27
	adc r7,__zero_reg__
	subi r16,-11
	sbci r17,-1
	.loc 1 54 0
	ldi r18,hi8(tasks+88)
	cpi r16,lo8(tasks+88)
	cpc r17,r18
	breq .+2
	rjmp .L10
	.loc 1 77 0
	sbiw r30,0
	breq .L11
	.loc 1 80 0
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	eicall
.LVL15:
	ldd r25,Y+4
	ldd r24,Y+3
	ldd r23,Y+2
	ldd r22,Y+1
.L11:
/* epilogue start */
.LBE3:
	.loc 1 83 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
.LVL16:
	pop r7
	pop r6
	ret
	.cfi_endproc
.LFE92:
	.size	_Z18Scheduler_Dispatchv, .-_Z18Scheduler_Dispatchv
	.section	.bss._ZZ19Scheduler_StartTaskiiPFvvEE2id,"aw",@nobits
	.type	_ZZ19Scheduler_StartTaskiiPFvvEE2id, @object
	.size	_ZZ19Scheduler_StartTaskiiPFvvEE2id, 1
_ZZ19Scheduler_StartTaskiiPFvvEE2id:
	.zero	1
.global	last_runtime
	.section	.bss.last_runtime,"aw",@nobits
	.type	last_runtime, @object
	.size	last_runtime, 4
last_runtime:
	.zero	4
.global	tasks
	.section	.bss.tasks,"aw",@nobits
	.type	tasks, @object
	.size	tasks, 88
tasks:
	.zero	88
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../radio/scheduler.h"
	.file 4 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\variants\\standard/pins_arduino.h"
	.file 5 "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\cores\\arduino/Arduino.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2ff
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.long	.LASF35
	.long	.LASF36
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7b
	.long	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x7d
	.long	0x66
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x7e
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x11
	.long	0x98
	.uleb128 0x5
	.byte	0x2
	.long	0x9e
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x7
	.byte	0xb
	.byte	0x1
	.byte	0xe
	.long	.LASF37
	.long	0xf9
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0xf
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x10
	.long	0x5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x11
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0x12
	.long	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x13
	.long	0xb4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF20
	.uleb128 0x9
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x19
	.long	.LASF23
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x132
	.uleb128 0xa
	.long	.LVL0
	.long	0x2f5
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x1e
	.long	.LASF24
	.long	.LFB91
	.long	.LFE91
	.long	.LLST0
	.byte	0x1
	.long	0x19a
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x1e
	.long	0x42
	.long	.LLST1
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.byte	0x1e
	.long	0x42
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF26
	.byte	0x1
	.byte	0x1e
	.long	0x8d
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xf
	.string	"id"
	.byte	0x1
	.byte	0x20
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	_ZZ19Scheduler_StartTaskiiPFvvEE2id
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x2b
	.long	.LASF39
	.long	0x6d
	.long	.LFB92
	.long	.LFE92
	.long	.LLST3
	.byte	0x1
	.long	0x216
	.uleb128 0xe
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.long	.LLST4
	.uleb128 0x11
	.string	"now"
	.byte	0x1
	.byte	0x2f
	.long	0x6d
	.long	.LLST5
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.byte	0x30
	.long	0x6d
	.long	.LLST6
	.uleb128 0x11
	.string	"t"
	.byte	0x1
	.byte	0x32
	.long	0x8d
	.long	.LLST7
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0x33
	.long	0x6d
	.long	.LLST8
	.uleb128 0xa
	.long	.LVL6
	.long	0x2f5
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"SS"
	.byte	0x4
	.byte	0x28
	.long	0x221
	.byte	0xa
	.uleb128 0x14
	.long	0x30
	.uleb128 0x15
	.long	.LASF29
	.byte	0x4
	.byte	0x29
	.long	0x221
	.byte	0xb
	.uleb128 0x15
	.long	.LASF30
	.byte	0x4
	.byte	0x2a
	.long	0x221
	.byte	0xc
	.uleb128 0x13
	.string	"SCK"
	.byte	0x4
	.byte	0x2b
	.long	0x221
	.byte	0xd
	.uleb128 0x13
	.string	"SDA"
	.byte	0x4
	.byte	0x2d
	.long	0x221
	.byte	0x12
	.uleb128 0x13
	.string	"SCL"
	.byte	0x4
	.byte	0x2e
	.long	0x221
	.byte	0x13
	.uleb128 0x13
	.string	"A0"
	.byte	0x4
	.byte	0x31
	.long	0x221
	.byte	0xe
	.uleb128 0x13
	.string	"A1"
	.byte	0x4
	.byte	0x32
	.long	0x221
	.byte	0xf
	.uleb128 0x13
	.string	"A2"
	.byte	0x4
	.byte	0x33
	.long	0x221
	.byte	0x10
	.uleb128 0x13
	.string	"A3"
	.byte	0x4
	.byte	0x34
	.long	0x221
	.byte	0x11
	.uleb128 0x13
	.string	"A4"
	.byte	0x4
	.byte	0x35
	.long	0x221
	.byte	0x12
	.uleb128 0x13
	.string	"A5"
	.byte	0x4
	.byte	0x36
	.long	0x221
	.byte	0x13
	.uleb128 0x13
	.string	"A6"
	.byte	0x4
	.byte	0x37
	.long	0x221
	.byte	0x14
	.uleb128 0x13
	.string	"A7"
	.byte	0x4
	.byte	0x38
	.long	0x221
	.byte	0x15
	.uleb128 0x16
	.long	0xf9
	.long	0x2ca
	.uleb128 0x17
	.long	0x2ca
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF31
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.byte	0x15
	.long	0x2ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tasks
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x17
	.long	0x6d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_runtime
	.uleb128 0x19
	.byte	0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x7f
	.long	0x78
	.byte	0x1
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.long	.LFB91
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
	.long	.LFE91
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL5
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE91
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
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
	.long	.LVL5
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL5
	.long	.LFE91
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB92
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 21
	.long	.LCFI17
	.long	.LFE92
	.word	0x2
	.byte	0x8c
	.sleb128 21
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL9
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL15-1
	.word	0x5
	.byte	0x3
	.long	last_runtime
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL16
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL15-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL8
	.long	.LVL10
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL10
	.long	.LVL12
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL15-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"task_cb"
.LASF19:
	.string	"task_t"
.LASF21:
	.string	"Scheduler_Init"
.LASF22:
	.string	"Scheduler_StartTask"
.LASF26:
	.string	"task"
.LASF23:
	.string	"_Z14Scheduler_Initv"
.LASF36:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF15:
	.string	"period"
.LASF20:
	.string	"bool"
.LASF24:
	.string	"_Z19Scheduler_StartTaskiiPFvvE"
.LASF33:
	.string	"last_runtime"
.LASF13:
	.string	"float"
.LASF38:
	.string	"Scheduler_Dispatch"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"callback"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"double"
.LASF28:
	.string	"idle_time"
.LASF30:
	.string	"MISO"
.LASF29:
	.string	"MOSI"
.LASF4:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF35:
	.string	"../radio/scheduler.cpp"
.LASF3:
	.string	"int16_t"
.LASF27:
	.string	"elapsed"
.LASF5:
	.string	"int32_t"
.LASF31:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF34:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF32:
	.string	"tasks"
.LASF12:
	.string	"char"
.LASF25:
	.string	"delay"
.LASF37:
	.string	"6task_t"
.LASF7:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF40:
	.string	"millis"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"is_running"
.LASF39:
	.string	"_Z18Scheduler_Dispatchv"
.LASF16:
	.string	"remaining_time"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
