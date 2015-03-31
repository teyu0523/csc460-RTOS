	.file	"trace.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"T%03d;"
.LC1:
	.string	"%u;"
	.section	.text._Z11print_tracev,"ax",@progbits
.global	_Z11print_tracev
	.type	_Z11print_tracev, @function
_Z11print_tracev:
.LFB11:
	.file 1 "../trace/trace.cpp"
	.loc 1 42 0
	.cfi_startproc
	push r12
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI5:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI6:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI7:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
.LBB2:
	.loc 1 49 0
	lds r24,trace_number
	push __zero_reg__
.LCFI8:
	.cfi_def_cfa_offset 12
	push r24
.LCFI9:
	.cfi_def_cfa_offset 13
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
.LCFI10:
	.cfi_def_cfa_offset 14
	push r24
.LCFI11:
	.cfi_def_cfa_offset 15
	ldi r24,lo8(trace_buffer)
	ldi r25,hi8(trace_buffer)
	push r25
.LCFI12:
	.cfi_def_cfa_offset 16
	push r24
.LCFI13:
	.cfi_def_cfa_offset 17
	call sprintf
.LVL0:
	ldi r28,lo8(trace_array)
	ldi r29,hi8(trace_array)
	.loc 1 54 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI14:
	.cfi_def_cfa_offset 11
	ldi r16,0
	ldi r17,0
	.loc 1 56 0
	ldi r24,lo8(.LC1)
	mov r14,r24
	ldi r24,hi8(.LC1)
	mov r15,r24
	ldi r25,lo8(trace_buffer)
	mov r12,r25
	ldi r25,hi8(trace_buffer)
	mov r13,r25
.LVL1:
.L2:
	.loc 1 54 0 discriminator 1
	lds r24,trace_counter
	lds r25,trace_counter+1
	cp r16,r24
	cpc r17,r25
	brge .L5
	.loc 1 56 0 discriminator 2
	ld r24,Y
	ldd r25,Y+1
	adiw r28,2
	push r25
.LCFI15:
	.cfi_def_cfa_offset 12
	push r24
.LCFI16:
	.cfi_def_cfa_offset 13
	push r15
.LCFI17:
	.cfi_def_cfa_offset 14
	push r14
.LCFI18:
	.cfi_def_cfa_offset 15
	push r13
.LCFI19:
	.cfi_def_cfa_offset 16
	push r12
.LCFI20:
	.cfi_def_cfa_offset 17
	call sprintf
.LVL2:
	.loc 1 54 0 discriminator 2
	subi r16,-1
	sbci r17,-1
.LVL3:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI21:
	.cfi_def_cfa_offset 11
	rjmp .L2
.L5:
	.loc 1 61 0
	ldi r24,lo8(1)
	sts trace_printed,r24
	.loc 1 62 0
	sts trace_counter+1,__zero_reg__
	sts trace_counter,__zero_reg__
/* epilogue start */
.LBE2:
	.loc 1 64 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL4:
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE11:
	.size	_Z11print_tracev, .-_Z11print_tracev
	.section	.text._Z12add_to_tracej,"ax",@progbits
.global	_Z12add_to_tracej
	.type	_Z12add_to_tracej, @function
_Z12add_to_tracej:
.LFB12:
	.loc 1 72 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 73 0
	lds r18,trace_counter
	lds r19,trace_counter+1
	cpi r18,-1
	cpc r19,__zero_reg__
	breq .+2
	brsh .L6
	.loc 1 75 0
	lds r30,trace_counter
	lds r31,trace_counter+1
	lsl r30
	rol r31
	subi r30,lo8(-(trace_array))
	sbci r31,hi8(-(trace_array))
	std Z+1,r25
	st Z,r24
	.loc 1 76 0
	lds r24,trace_counter
	lds r25,trace_counter+1
.LVL6:
	adiw r24,1
	sts trace_counter+1,r25
	sts trace_counter,r24
.LVL7:
.L6:
	ret
	.cfi_endproc
.LFE12:
	.size	_Z12add_to_tracej, .-_Z12add_to_tracej
	.section	.text._Z14set_trace_testh,"ax",@progbits
.global	_Z14set_trace_testh
	.type	_Z14set_trace_testh, @function
_Z14set_trace_testh:
.LFB13:
	.loc 1 86 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 87 0
	sts trace_number,r24
	ret
	.cfi_endproc
.LFE13:
	.size	_Z14set_trace_testh, .-_Z14set_trace_testh
	.section	.text._Z13is_trace_fullv,"ax",@progbits
.global	_Z13is_trace_fullv
	.type	_Z13is_trace_fullv, @function
_Z13is_trace_fullv:
.LFB14:
	.loc 1 91 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 92 0
	lds r18,trace_counter
	lds r19,trace_counter+1
	ldi r24,lo8(1)
	ldi r25,0
	cp r18,__zero_reg__
	sbci r19,1
	breq .L10
	ldi r24,0
	ldi r25,0
.L10:
	.loc 1 93 0
	ret
	.cfi_endproc
.LFE14:
	.size	_Z13is_trace_fullv, .-_Z13is_trace_fullv
	.section	.text._Z11reset_tracev,"ax",@progbits
.global	_Z11reset_tracev
	.type	_Z11reset_tracev, @function
_Z11reset_tracev:
.LFB15:
	.loc 1 95 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 96 0
	sts trace_counter+1,__zero_reg__
	sts trace_counter,__zero_reg__
	ret
	.cfi_endproc
.LFE15:
	.size	_Z11reset_tracev, .-_Z11reset_tracev
.global	trace_buffer
	.section	.bss.trace_buffer,"aw",@nobits
	.type	trace_buffer, @object
	.size	trace_buffer, 32
trace_buffer:
	.zero	32
.global	trace_counter
	.section	.bss.trace_counter,"aw",@nobits
	.type	trace_counter, @object
	.size	trace_counter, 2
trace_counter:
	.zero	2
.global	trace_array
	.section	.bss.trace_array,"aw",@nobits
	.type	trace_array, @object
	.size	trace_array, 512
trace_array:
	.zero	512
.global	trace_printed
	.section	.bss.trace_printed,"aw",@nobits
	.type	trace_printed, @object
	.size	trace_printed, 1
trace_printed:
	.zero	1
.global	trace_number
	.section	.bss.trace_number,"aw",@nobits
	.type	trace_number, @object
	.size	trace_number, 1
trace_number:
	.zero	1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x210
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.long	.LASF24
	.long	.LASF25
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0x7a
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x7c
	.long	0x29
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
	.uleb128 0x5
	.byte	0x2
	.long	0x7d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x6
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x29
	.long	.LASF12
	.long	.LFB11
	.long	.LFE11
	.long	.LLST0
	.byte	0x1
	.long	0xd6
	.uleb128 0x7
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.long	0x30
	.long	.LLST1
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x2c
	.long	0x30
	.uleb128 0xa
	.long	.LVL0
	.long	0x1ea
	.uleb128 0xa
	.long	.LVL2
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x47
	.long	.LASF13
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x103
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1
	.byte	0x47
	.long	0x57
	.long	.LLST2
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x55
	.long	.LASF15
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x12e
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0x55
	.long	0x45
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x5b
	.long	.LASF28
	.long	0x30
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x5f
	.long	.LASF30
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x10
	.long	.LASF17
	.byte	0x1
	.byte	0x14
	.long	0x45
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	trace_number
	.uleb128 0x10
	.long	.LASF18
	.byte	0x1
	.byte	0x17
	.long	0x45
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	trace_printed
	.uleb128 0x11
	.long	0x29
	.long	0x198
	.uleb128 0x12
	.long	0x198
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0x10
	.long	.LASF20
	.byte	0x1
	.byte	0x1a
	.long	0x188
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	trace_array
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.byte	0x1d
	.long	0x1c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	trace_counter
	.uleb128 0x13
	.long	0x57
	.uleb128 0x11
	.long	0x7d
	.long	0x1d8
	.uleb128 0x12
	.long	0x198
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x20
	.long	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	trace_buffer
	.uleb128 0x14
	.byte	0x1
	.long	.LASF31
	.byte	0x3
	.word	0x29d
	.long	0x30
	.byte	0x1
	.long	0x208
	.uleb128 0x15
	.long	0x77
	.uleb128 0x15
	.long	0x208
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x20e
	.uleb128 0x17
	.long	0x7d
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
	.uleb128 0x4
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB11
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
	.sleb128 6
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI21
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL4
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL7
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
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
	.long	.LFB15
	.long	.LFE15-.LFB15
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
	.long	.LFB15
	.long	.LFE15
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"trace_array"
.LASF24:
	.string	"../trace/trace.cpp"
.LASF25:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF13:
	.string	"_Z12add_to_tracej"
.LASF10:
	.string	"print_trace"
.LASF17:
	.string	"trace_number"
.LASF15:
	.string	"_Z14set_trace_testh"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"returned_chars"
.LASF6:
	.string	"long unsigned int"
.LASF18:
	.string	"trace_printed"
.LASF11:
	.string	"add_to_trace"
.LASF21:
	.string	"trace_counter"
.LASF22:
	.string	"trace_buffer"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF31:
	.string	"sprintf"
.LASF30:
	.string	"_Z11reset_tracev"
.LASF12:
	.string	"_Z11print_tracev"
.LASF19:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF9:
	.string	"char"
.LASF28:
	.string	"_Z13is_trace_fullv"
.LASF5:
	.string	"uint16_t"
.LASF1:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"is_trace_full"
.LASF29:
	.string	"reset_trace"
.LASF14:
	.string	"set_trace_test"
.LASF16:
	.string	"number"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
