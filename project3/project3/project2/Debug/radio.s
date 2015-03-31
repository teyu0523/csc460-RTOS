	.file	"radio.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZL10get_statusv,"ax",@progbits
	.type	_ZL10get_statusv, @function
_ZL10get_statusv:
.LFB11:
	.file 1 "../radio/radio.cpp"
	.loc 1 57 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL0:
.LBB23:
	.loc 1 59 0
	ldi r28,lo8(2)
	ldi r29,lo8(1)
	ld r24,Y
	andi r24,lo8(-65)
	st Y,r24
	.loc 1 61 0
	ldi r24,lo8(-1)
	call _Z14SPI_Write_Byteh
.LVL1:
	.loc 1 63 0
	ld r25,Y
	ori r25,lo8(64)
	st Y,r25
/* epilogue start */
.LBE23:
	.loc 1 66 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE11:
	.size	_ZL10get_statusv, .-_ZL10get_statusv
	.section	.text._ZL12set_registerhPhh,"ax",@progbits
	.type	_ZL12set_registerhPhh, @function
_ZL12set_registerhPhh:
.LFB12:
	.loc 1 74 0
	.cfi_startproc
.LVL2:
	push r12
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r15
.LCFI4:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI5:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI7:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI8:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
	push __zero_reg__
.LCFI9:
	.cfi_def_cfa_offset 11
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI10:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r16,r22
.LBB24:
	.loc 1 76 0
	ldi r25,lo8(2)
	mov r12,r25
	clr r13
	inc r13
	movw r30,r12
	ld r25,Z
	andi r25,lo8(-65)
	st Z,r25
	.loc 1 78 0
	andi r24,lo8(31)
.LVL3:
	ori r24,lo8(32)
	std Y+1,r20
	call _Z14SPI_Write_Byteh
.LVL4:
	mov r15,r24
.LVL5:
	.loc 1 79 0
	ldd r20,Y+1
	mov r22,r20
	movw r24,r16
	call _Z15SPI_Write_BlockPhh
.LVL6:
	.loc 1 81 0
	movw r30,r12
	ld r25,Z
	ori r25,lo8(64)
	st Z,r25
.LBE24:
	.loc 1 84 0
	mov r24,r15
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL7:
	pop r15
.LVL8:
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE12:
	.size	_ZL12set_registerhPhh, .-_ZL12set_registerhPhh
	.section	.text._ZL16send_instructionhPhS_h,"ax",@progbits
	.type	_ZL16send_instructionhPhS_h, @function
_ZL16send_instructionhPhS_h:
.LFB14:
	.loc 1 120 0
	.cfi_startproc
.LVL9:
	push r14
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI16:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
	push __zero_reg__
.LCFI17:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI18:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r22
	movw r16,r20
	.loc 1 121 0
	lds r25,258
	andi r25,lo8(-65)
	sts 258,r25
	.loc 1 123 0
	std Y+1,r18
	call _Z14SPI_Write_Byteh
.LVL10:
	.loc 1 125 0
	ldd r18,Y+1
	tst r18
	breq .L4
	.loc 1 127 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L5
	.loc 1 128 0
	mov r22,r18
	movw r24,r14
	call _Z15SPI_Write_BlockPhh
.LVL11:
	rjmp .L4
.L5:
	.loc 1 130 0
	mov r20,r18
	movw r22,r16
	movw r24,r14
	call _Z19SPI_ReadWrite_BlockPhS_h
.LVL12:
.L4:
	.loc 1 133 0
	lds r24,258
	ori r24,lo8(64)
	sts 258,r24
/* epilogue start */
	.loc 1 134 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL13:
	pop r15
	pop r14
.LVL14:
	ret
	.cfi_endproc
.LFE14:
	.size	_ZL16send_instructionhPhS_h, .-_ZL16send_instructionhPhS_h
	.section	.text._ZL19reset_pipe0_addressv,"ax",@progbits
	.type	_ZL19reset_pipe0_addressv, @function
_ZL19reset_pipe0_addressv:
.LFB17:
	.loc 1 178 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 179 0
	lds r24,_ZL14rx_pipe_widths
	tst r24
	breq .L10
.LBB27:
.LBB28:
	.loc 1 182 0
	ldi r20,lo8(5)
	ldi r22,lo8(_ZL16rx_pipe0_address)
	ldi r23,hi8(_ZL16rx_pipe0_address)
	ldi r24,lo8(10)
	jmp _ZL12set_registerhPhh
.LVL15:
.L10:
	ret
.LBE28:
.LBE27:
	.cfi_endproc
.LFE17:
	.size	_ZL19reset_pipe0_addressv, .-_ZL19reset_pipe0_addressv
	.section	.text._ZL12get_registerhPhh.constprop.1,"ax",@progbits
	.type	_ZL12get_registerhPhh.constprop.1, @function
_ZL12get_registerhPhh.constprop.1:
.LFB29:
	.loc 1 93 0
	.cfi_startproc
.LVL16:
	push r14
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI20:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r17
.LCFI21:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI22:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI23:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	push __zero_reg__
	push __zero_reg__
.LCFI24:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI25:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 7 */
.L__stack_usage = 7
.LVL17:
.LBB29:
	.loc 1 100 0
	ldi r25,lo8(-1)
	movw r30,r22
	st Z,r25
.LVL18:
	.loc 1 102 0
	ldi r18,lo8(2)
	mov r14,r18
	clr r15
	inc r15
	movw r30,r14
	ld r25,Z
	andi r25,lo8(-65)
	st Z,r25
	.loc 1 104 0
	andi r24,lo8(31)
.LVL19:
	std Y+1,r22
	std Y+2,r23
	call _Z14SPI_Write_Byteh
.LVL20:
	mov r17,r24
.LVL21:
	.loc 1 105 0
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r23,Y+2
	ldi r24,0
	ldi r25,0
	call _Z19SPI_ReadWrite_BlockPhS_h
.LVL22:
	.loc 1 107 0
	movw r30,r14
	ld r25,Z
	ori r25,lo8(64)
	st Z,r25
.LBE29:
	.loc 1 110 0
	mov r24,r17
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL23:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE29:
	.size	_ZL12get_registerhPhh.constprop.1, .-_ZL12get_registerhPhh.constprop.1
	.section	.text._ZL11set_rx_modev,"ax",@progbits
	.type	_ZL11set_rx_modev, @function
_ZL11set_rx_modev:
.LFB15:
	.loc 1 140 0
	.cfi_startproc
	push r28
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI27:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI28:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI29:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB30:
	.loc 1 142 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	call _ZL12get_registerhPhh.constprop.1
.LVL24:
	.loc 1 143 0
	ldd r24,Y+1
	sbrc r24,0
	rjmp .L13
	.loc 1 145 0
	ori r24,lo8(1)
	std Y+1,r24
	.loc 1 146 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	call _ZL12set_registerhPhh
.LVL25:
.LBB31:
.LBB32:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 245 0
	ldi r24,lo8(259)
	ldi r25,hi8(259)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL26:
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	ldi r24,lo8(259)
	ldi r25,hi8(259)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL27:
.L13:
/* epilogue start */
.LBE34:
.LBE33:
.LBE30:
	.loc 1 151 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE15:
	.size	_ZL11set_rx_modev, .-_ZL11set_rx_modev
	.section	.text._Z10Radio_Initv,"ax",@progbits
.global	_Z10Radio_Initv
	.type	_Z10Radio_Initv, @function
_Z10Radio_Initv:
.LFB19:
	.loc 1 229 0
	.cfi_startproc
	push r28
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI32:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI33:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	.loc 1 231 0
	sts _ZL13transmit_lock,__zero_reg__
	.loc 1 232 0
	ldi r30,lo8(1)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(24)
	st Z,r24
	.loc 1 233 0
	ldi r26,lo8(2)
	ldi r27,lo8(1)
	ld r24,X
	andi r24,lo8(-17)
	st X,r24
	.loc 1 234 0
	ld r24,X
	andi r24,lo8(-9)
	st X,r24
	.loc 1 239 0
	ld r24,X
	andi r24,lo8(-33)
	st X,r24
	.loc 1 242 0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	.loc 1 243 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
	.loc 1 246 0
	cbi 0xd,4
	.loc 1 247 0
	ldi r30,lo8(106)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.loc 1 248 0
	ld r24,Z
	andi r24,lo8(-2)
	st Z,r24
	.loc 1 249 0
	sbi 0x1d,4
	.loc 1 250 0
	sbi 0x1c,4
.LVL28:
.LBB42:
.LBB43:
	.loc 2 163 0
	ldi r24,lo8(-21537)
	ldi r25,hi8(-21537)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 1 195 0
	call _Z8SPI_Initv
.LVL29:
	.loc 1 198 0
	ldi r24,lo8(3)
	std Y+1,r24
	.loc 1 199 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZL12set_registerhPhh
.LVL30:
	.loc 1 203 0
	ldi r24,lo8(21)
	std Y+1,r24
	.loc 1 205 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(4)
	call _ZL12set_registerhPhh
.LVL31:
	.loc 1 208 0
	ldi r24,lo8(104)
	std Y+1,r24
	.loc 1 209 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(5)
	call _ZL12set_registerhPhh
.LVL32:
	.loc 1 212 0
	ldi r24,lo8(9)
	std Y+1,r24
	.loc 1 213 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(6)
	call _ZL12set_registerhPhh
.LVL33:
	.loc 1 216 0
	ldi r24,lo8(15)
	std Y+1,r24
	.loc 1 217 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	call _ZL12set_registerhPhh
.LVL34:
	.loc 1 220 0
	ldi r24,lo8(112)
	std Y+1,r24
	.loc 1 221 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(7)
	call _ZL12set_registerhPhh
.LVL35:
	.loc 1 224 0
	ldi r18,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-31)
	call _ZL16send_instructionhPhS_h
.LVL36:
	.loc 1 225 0
	ldi r18,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-30)
	call _ZL16send_instructionhPhS_h
.LVL37:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 2 163 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBE47:
.LBE46:
	.loc 1 263 0
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	.loc 1 264 0
	ld r24,Z
	ori r24,lo8(16)
	st Z,r24
/* epilogue start */
	.loc 1 265 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE19:
	.size	_Z10Radio_Initv, .-_Z10Radio_Initv
	.section	.text._Z18Radio_Configure_Rx11_radio_pipePh3_ed,"ax",@progbits
.global	_Z18Radio_Configure_Rx11_radio_pipePh3_ed
	.type	_Z18Radio_Configure_Rx11_radio_pipePh3_ed, @function
_Z18Radio_Configure_Rx11_radio_pipePh3_ed:
.LFB20:
	.loc 1 274 0
	.cfi_startproc
.LVL38:
	push r13
.LCFI34:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI35:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI36:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI37:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI38:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI39:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI40:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
	push __zero_reg__
	push __zero_reg__
.LCFI41:
	.cfi_def_cfa_offset 12
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI42:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r25,r24
	movw r30,r22
	mov r13,r20
.LVL39:
.LBB48:
	.loc 1 278 0
	cpi r24,lo8(6)
	brlo .+2
	rjmp .L16
	.loc 1 281 0
	cpse r24,__zero_reg__
	rjmp .L18
	.loc 1 283 0
	ld r24,Z
.LVL40:
	sts _ZL16rx_pipe0_address,r24
	.loc 1 284 0
	ldd r24,Z+1
	sts _ZL16rx_pipe0_address+1,r24
	.loc 1 285 0
	ldd r24,Z+2
	sts _ZL16rx_pipe0_address+2,r24
	.loc 1 286 0
	ldd r24,Z+3
	sts _ZL16rx_pipe0_address+3,r24
	.loc 1 287 0
	ldd r24,Z+4
	sts _ZL16rx_pipe0_address+4,r24
	rjmp .L24
.LVL41:
.L18:
	.loc 1 292 0
	cpi r24,lo8(1)
	breq .L24
	ldi r20,lo8(1)
.LVL42:
	rjmp .L19
.LVL43:
.L24:
	ldi r20,lo8(5)
.L19:
	.loc 1 292 0 is_stmt 0 discriminator 3
	movw r22,r30
.LVL44:
	ldi r24,lo8(10)
	add r24,r25
	std Y+2,r25
	call _ZL12set_registerhPhh
.LVL45:
	.loc 1 295 0 is_stmt 1 discriminator 3
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(1)
	call _ZL12get_registerhPhh.constprop.1
.LVL46:
	.loc 1 297 0 discriminator 3
	ldd r25,Y+2
	mov r14,r25
	mov r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,0
	rjmp 2f
	1:
	lsl r16
	2:
	dec r25
	brpl 1b
	ldd r24,Y+1
	or r24,r16
	std Y+1,r24
	.loc 1 300 0 discriminator 3
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(1)
	call _ZL12set_registerhPhh
.LVL47:
	.loc 1 303 0 discriminator 3
	ldd r25,Y+2
	tst r13
	breq .L25
	.loc 1 303 0 is_stmt 0
	ldi r24,lo8(32)
	rjmp .L20
.L25:
	ldi r24,0
.L20:
	.loc 1 303 0 discriminator 3
	std Y+1,r24
	.loc 1 304 0 is_stmt 1 discriminator 3
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(17)
	add r24,r25
	call _ZL12set_registerhPhh
.LVL48:
	.loc 1 305 0 discriminator 3
	ldd r24,Y+1
	movw r30,r14
	subi r30,lo8(-(_ZL14rx_pipe_widths))
	sbci r31,hi8(-(_ZL14rx_pipe_widths))
	st Z,r24
	.loc 1 308 0 discriminator 3
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(2)
	call _ZL12get_registerhPhh.constprop.1
.LVL49:
	ldd r24,Y+1
	.loc 1 309 0 discriminator 3
	tst r13
	breq .L21
	.loc 1 310 0
	or r16,r24
	rjmp .L26
.L21:
	.loc 1 312 0
	com r16
	and r16,r24
.L26:
	std Y+1,r16
	.loc 1 313 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(2)
	call _ZL12set_registerhPhh
.LVL50:
.L16:
/* epilogue start */
.LBE48:
	.loc 1 315 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL51:
	ret
	.cfi_endproc
.LFE20:
	.size	_Z18Radio_Configure_Rx11_radio_pipePh3_ed, .-_Z18Radio_Configure_Rx11_radio_pipePh3_ed
	.section	.text._Z17Radio_Set_Tx_AddrPh,"ax",@progbits
.global	_Z17Radio_Set_Tx_AddrPh
	.type	_Z17Radio_Set_Tx_AddrPh, @function
_Z17Radio_Set_Tx_AddrPh:
.LFB21:
	.loc 1 319 0
	.cfi_startproc
.LVL52:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 320 0
	ld r24,Z
.LVL53:
	sts _ZL10tx_address,r24
	.loc 1 321 0
	ldd r24,Z+1
	sts _ZL10tx_address+1,r24
	.loc 1 322 0
	ldd r24,Z+2
	sts _ZL10tx_address+2,r24
	.loc 1 323 0
	ldd r24,Z+3
	sts _ZL10tx_address+3,r24
	.loc 1 324 0
	ldd r24,Z+4
	sts _ZL10tx_address+4,r24
	.loc 1 325 0
	ldi r20,lo8(5)
	movw r22,r30
	ldi r24,lo8(16)
	jmp _ZL12set_registerhPhh
.LVL54:
	.cfi_endproc
.LFE21:
	.size	_Z17Radio_Set_Tx_AddrPh, .-_Z17Radio_Set_Tx_AddrPh
	.section	.text._Z15Radio_Configure9_radio_dr15_radio_tx_power,"ax",@progbits
.global	_Z15Radio_Configure9_radio_dr15_radio_tx_power
	.type	_Z15Radio_Configure9_radio_dr15_radio_tx_power, @function
_Z15Radio_Configure9_radio_dr15_radio_tx_power:
.LFB22:
	.loc 1 329 0
	.cfi_startproc
.LVL55:
	push r16
.LCFI43:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI44:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI45:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI46:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
	push __zero_reg__
.LCFI47:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI48:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r17,r24
	mov r16,r22
.LBB49:
	.loc 1 332 0
	cpi r22,lo8(4)
	brsh .L28
	.loc 1 332 0 is_stmt 0 discriminator 2
	cpi r24,lo8(2)
	brsh .L28
	.loc 1 338 0 is_stmt 1
	movw r22,r28
.LVL56:
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(6)
.LVL57:
	call _ZL12get_registerhPhh.constprop.1
.LVL58:
	.loc 1 341 0
	mov r22,r16
	lsl r22
	.loc 1 340 0
	ldd r25,Y+1
	ori r25,lo8(6)
	.loc 1 341 0
	and r22,r25
	.loc 1 343 0
	cpse r17,__zero_reg__
	.loc 1 344 0
	ori r22,lo8(8)
.L33:
	std Y+1,r22
	.loc 1 348 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(6)
	call _ZL12set_registerhPhh
.LVL59:
.L28:
/* epilogue start */
.LBE49:
	.loc 1 349 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL60:
	pop r16
.LVL61:
	ret
	.cfi_endproc
.LFE22:
	.size	_Z15Radio_Configure9_radio_dr15_radio_tx_power, .-_Z15Radio_Configure9_radio_dr15_radio_tx_power
	.section	.text._Z14Radio_TransmitP3_rp14_radio_tx_wait,"ax",@progbits
.global	_Z14Radio_TransmitP3_rp14_radio_tx_wait
	.type	_Z14Radio_TransmitP3_rp14_radio_tx_wait, @function
_Z14Radio_TransmitP3_rp14_radio_tx_wait:
.LFB23:
	.loc 1 352 0
	.cfi_startproc
.LVL62:
	push r15
.LCFI49:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI50:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI51:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI52:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI53:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	push __zero_reg__
.LCFI54:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI55:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	mov r15,r22
.LVL63:
.LBB58:
	.loc 1 358 0
	ldi r24,lo8(1)
.LVL64:
	sts _ZL13transmit_lock,r24
	.loc 1 360 0
	lds r24,258
	andi r24,lo8(-33)
	sts 258,r24
.LBB59:
.LBB60:
	.loc 1 159 0
	movw r22,r28
.LVL65:
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	call _ZL12get_registerhPhh.constprop.1
.LVL66:
	.loc 1 160 0
	ldd r24,Y+1
	sbrs r24,0
	rjmp .L35
	.loc 1 162 0
	andi r24,lo8(-2)
	std Y+1,r24
	.loc 1 163 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	call _ZL12set_registerhPhh
.LVL67:
.LBB61:
.LBB62:
	.loc 2 245 0
	ldi r24,lo8(259)
	ldi r25,hi8(259)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL68:
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	ldi r24,lo8(259)
	ldi r25,hi8(259)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL69:
.L35:
.LBE64:
.LBE63:
.LBE60:
.LBE59:
	.loc 1 366 0
	ldi r20,lo8(5)
	ldi r22,lo8(_ZL10tx_address)
	ldi r23,hi8(_ZL10tx_address)
	ldi r24,lo8(10)
	call _ZL12set_registerhPhh
.LVL70:
	.loc 1 369 0
	lds r24,258
	ori r24,lo8(8)
	sts 258,r24
	.loc 1 370 0
	ldi r18,lo8(32)
	ldi r20,0
	ldi r21,0
	movw r22,r16
	ldi r24,lo8(-96)
	call _ZL16send_instructionhPhS_h
.LVL71:
	.loc 1 372 0
	lds r24,258
	ori r24,lo8(32)
	sts 258,r24
	.loc 1 374 0
	cpse r15,__zero_reg__
	rjmp .L39
.L38:
	.loc 1 376 0
	lds r24,_ZL13transmit_lock
	cpse r24,__zero_reg__
	rjmp .L38
	.loc 1 377 0
	lds r24,_ZL14tx_last_status
	rjmp .L36
.L39:
	.loc 1 380 0
	ldi r24,lo8(1)
.L36:
/* epilogue start */
.LBE58:
	.loc 1 381 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL72:
	pop r15
.LVL73:
	ret
	.cfi_endproc
.LFE23:
	.size	_Z14Radio_TransmitP3_rp14_radio_tx_wait, .-_Z14Radio_TransmitP3_rp14_radio_tx_wait
	.section	.text._Z13Radio_ReceiveP3_rp,"ax",@progbits
.global	_Z13Radio_ReceiveP3_rp
	.type	_Z13Radio_ReceiveP3_rp, @function
_Z13Radio_ReceiveP3_rp:
.LFB24:
	.loc 1 384 0
	.cfi_startproc
.LVL74:
	push r28
.LCFI56:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI57:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LVL75:
.LBB65:
	.loc 1 391 0
	sts _ZL13transmit_lock,__zero_reg__
	.loc 1 393 0
	lds r24,258
.LVL76:
	andi r24,lo8(-33)
	sts 258,r24
	.loc 1 395 0
	call _ZL10get_statusv
.LVL77:
	.loc 1 396 0
	andi r24,lo8(14)
.LVL78:
	mov r18,r24
	ldi r19,0
	asr r19
	ror r18
.LVL79:
	.loc 1 404 0
	movw r30,r18
	subi r30,lo8(-(_ZL14rx_pipe_widths))
	sbci r31,hi8(-(_ZL14rx_pipe_widths))
	ld r24,Z
	cpi r24,lo8(33)
	brsh .L45
	.loc 1 411 0
	cpi r18,lo8(7)
	breq .L46
	.loc 1 414 0
	ld r18,Z
.LVL80:
	movw r20,r28
	movw r22,r28
	ldi r24,lo8(97)
	call _ZL16send_instructionhPhS_h
.LVL81:
	.loc 1 416 0
	call _ZL10get_statusv
.LVL82:
	.loc 1 417 0
	andi r24,lo8(14)
.LVL83:
	.loc 1 419 0
	cpi r24,lo8(14)
	breq .L47
	.loc 1 420 0
	ldi r24,lo8(3)
	rjmp .L44
.LVL84:
.L45:
	.loc 1 407 0
	ldi r24,0
	rjmp .L44
.L46:
	ldi r24,lo8(2)
	rjmp .L44
.LVL85:
.L47:
	.loc 1 422 0
	ldi r24,lo8(4)
.L44:
.LVL86:
	.loc 1 425 0
	lds r25,258
	ori r25,lo8(32)
	sts 258,r25
	.loc 1 427 0
	sts _ZL13transmit_lock,__zero_reg__
/* epilogue start */
.LBE65:
	.loc 1 432 0
	pop r29
	pop r28
.LVL87:
	ret
	.cfi_endproc
.LFE24:
	.size	_Z13Radio_ReceiveP3_rp, .-_Z13Radio_ReceiveP3_rp
	.section	.text._Z18Radio_Success_Ratev,"ax",@progbits
.global	_Z18Radio_Success_Ratev
	.type	_Z18Radio_Success_Ratev, @function
_Z18Radio_Success_Ratev:
.LFB25:
	.loc 1 436 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB66:
	.loc 1 437 0
	lds r24,_ZL10tx_history
	lds r25,_ZL10tx_history+1
.LVL88:
	.loc 1 438 0
	ldi r20,0
.LVL89:
.L49:
	.loc 1 439 0 discriminator 1
	sbiw r24,0
	breq .L55
	.loc 1 441 0
	sbrc r24,0
	.loc 1 441 0 is_stmt 0 discriminator 1
	subi r20,lo8(-(1))
.LVL90:
.L50:
	.loc 1 442 0 is_stmt 1
	lsr r25
	ror r24
.LVL91:
	rjmp .L49
.L55:
	.loc 1 444 0
	ldi r18,lo8(16)
	ldi r19,0
	sub r18,r20
	sbc r19,__zero_reg__
	ldi r20,lo8(100)
.LVL92:
	mul r20,r18
	movw r24,r0
	mul r20,r19
	add r25,r0
	clr __zero_reg__
.LVL93:
	.loc 1 445 0
	ldi r21,4
	1:
	lsr r25
	ror r24
	dec r21
	brne 1b
.LVL94:
.LBE66:
	.loc 1 447 0
	ret
	.cfi_endproc
.LFE25:
	.size	_Z18Radio_Success_Ratev, .-_Z18Radio_Success_Ratev
	.section	.text._Z11Radio_Flushv,"ax",@progbits
.global	_Z11Radio_Flushv
	.type	_Z11Radio_Flushv, @function
_Z11Radio_Flushv:
.LFB26:
	.loc 1 450 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 451 0
	ldi r18,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-31)
	call _ZL16send_instructionhPhS_h
.LVL95:
	.loc 1 452 0
	ldi r18,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-30)
	jmp _ZL16send_instructionhPhS_h
.LVL96:
	.cfi_endproc
.LFE26:
	.size	_Z11Radio_Flushv, .-_Z11Radio_Flushv
	.section	.text.__vector_5,"ax",@progbits
.global	__vector_5
	.type	__vector_5, @function
__vector_5:
.LFB27:
	.loc 1 458 0
	.cfi_startproc
	push r1
.LCFI58:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI59:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI60:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
.LCFI61:
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r20
.LCFI62:
	.cfi_def_cfa_offset 8
	.cfi_offset 20, -7
	push r21
.LCFI63:
	.cfi_def_cfa_offset 9
	.cfi_offset 21, -8
	push r22
.LCFI64:
	.cfi_def_cfa_offset 10
	.cfi_offset 22, -9
	push r23
.LCFI65:
	.cfi_def_cfa_offset 11
	.cfi_offset 23, -10
	push r24
.LCFI66:
	.cfi_def_cfa_offset 12
	.cfi_offset 24, -11
	push r25
.LCFI67:
	.cfi_def_cfa_offset 13
	.cfi_offset 25, -12
	push r26
.LCFI68:
	.cfi_def_cfa_offset 14
	.cfi_offset 26, -13
	push r27
.LCFI69:
	.cfi_def_cfa_offset 15
	.cfi_offset 27, -14
	push r30
.LCFI70:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -15
	push r31
.LCFI71:
	.cfi_def_cfa_offset 17
	.cfi_offset 31, -16
	push r28
.LCFI72:
	.cfi_def_cfa_offset 18
	.cfi_offset 28, -17
	push r29
.LCFI73:
	.cfi_def_cfa_offset 19
	.cfi_offset 29, -18
	push __zero_reg__
.LCFI74:
	.cfi_def_cfa_offset 20
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI75:
	.cfi_def_cfa_register 28
/* prologue: Signal */
/* frame size = 1 */
/* stack size = 19 */
.L__stack_usage = 19
.LBB67:
	.loc 1 462 0
	lds r24,258
	andi r24,lo8(-17)
	sts 258,r24
	.loc 1 463 0
	lds r24,258
	andi r24,lo8(-33)
	sts 258,r24
	.loc 1 465 0
	call _ZL10get_statusv
.LVL97:
	std Y+1,r24
	.loc 1 467 0
	sbrs r24,6
	rjmp .L58
.LVL98:
	.loc 1 469 0
	andi r24,lo8(14)
.LVL99:
	.loc 1 470 0
	lsr r24
.LVL100:
	call _Z15radio_rxhandlerh
.LVL101:
.L58:
	.loc 1 473 0
	ldd r24,Y+1
	sbrs r24,5
	rjmp .L59
	.loc 1 476 0
	sts _ZL13transmit_lock,__zero_reg__
	.loc 1 477 0
	call _ZL19reset_pipe0_addressv
.LVL102:
	.loc 1 478 0
	call _ZL11set_rx_modev
.LVL103:
	.loc 1 481 0
	lds r24,_ZL10tx_history
	lds r25,_ZL10tx_history+1
	lsl r24
	rol r25
	sts _ZL10tx_history+1,r25
	sts _ZL10tx_history,r24
	.loc 1 482 0
	lds r24,_ZL10tx_history
	lds r25,_ZL10tx_history+1
	ori r24,1
	sts _ZL10tx_history+1,r25
	sts _ZL10tx_history,r24
	.loc 1 484 0
	ldi r24,lo8(1)
	sts _ZL14tx_last_status,r24
	rjmp .L60
.L59:
	.loc 1 486 0
	sbrs r24,4
	rjmp .L60
	.loc 1 488 0
	ldi r18,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-31)
	call _ZL16send_instructionhPhS_h
.LVL104:
	.loc 1 490 0
	sts _ZL13transmit_lock,__zero_reg__
	.loc 1 491 0
	call _ZL19reset_pipe0_addressv
.LVL105:
	.loc 1 492 0
	call _ZL11set_rx_modev
.LVL106:
	.loc 1 494 0
	lds r24,_ZL10tx_history
	lds r25,_ZL10tx_history+1
	lsl r24
	rol r25
	sts _ZL10tx_history+1,r25
	sts _ZL10tx_history,r24
	.loc 1 496 0
	sts _ZL14tx_last_status,__zero_reg__
.L60:
	.loc 1 500 0
	ldi r24,lo8(112)
	std Y+1,r24
	.loc 1 501 0
	ldi r20,lo8(1)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(7)
	call _ZL12set_registerhPhh
.LVL107:
	.loc 1 502 0
	lds r24,258
	ori r24,lo8(16)
	sts 258,r24
	.loc 1 504 0
	lds r24,258
	ori r24,lo8(32)
	sts 258,r24
/* epilogue start */
.LBE67:
	.loc 1 505 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE27:
	.size	__vector_5, .-__vector_5
	.section	.data._ZL14tx_last_status,"aw",@progbits
	.type	_ZL14tx_last_status, @object
	.size	_ZL14tx_last_status, 1
_ZL14tx_last_status:
	.byte	1
	.section	.data._ZL10tx_history,"aw",@progbits
	.type	_ZL10tx_history, @object
	.size	_ZL10tx_history, 2
_ZL10tx_history:
	.word	255
	.section	.data._ZL16rx_pipe0_address,"aw",@progbits
	.type	_ZL16rx_pipe0_address, @object
	.size	_ZL16rx_pipe0_address, 5
_ZL16rx_pipe0_address:
	.byte	-25
	.byte	-25
	.byte	-25
	.byte	-25
	.byte	-25
	.section	.data._ZL10tx_address,"aw",@progbits
	.type	_ZL10tx_address, @object
	.size	_ZL10tx_address, 5
_ZL10tx_address:
	.byte	-25
	.byte	-25
	.byte	-25
	.byte	-25
	.byte	-25
	.section	.data._ZL14rx_pipe_widths,"aw",@progbits
	.type	_ZL14rx_pipe_widths, @object
	.size	_ZL14rx_pipe_widths, 6
_ZL14rx_pipe_widths:
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.bss._ZL13transmit_lock,"aw",@nobits
	.type	_ZL13transmit_lock, @object
	.size	_ZL13transmit_lock, 1
_ZL13transmit_lock:
	.zero	1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../radio/nRF24L01.h"
	.file 5 "../radio/sensor_struct.h"
	.file 6 "../radio/packet.h"
	.file 7 "../radio/radio.h"
	.file 8 "../radio/spi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12ea
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF165
	.byte	0x4
	.long	.LASF166
	.long	.LASF167
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.long	.LASF2
	.byte	0x3
	.byte	0x79
	.long	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF3
	.byte	0x3
	.byte	0x7a
	.long	0x54
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x7b
	.long	0x29
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x7c
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x7e
	.long	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x19
	.long	0x49
	.uleb128 0x5
	.long	.LASF43
	.byte	0x2
	.byte	0x5
	.byte	0xc
	.long	0xcc
	.uleb128 0x6
	.long	.LASF13
	.byte	0x5
	.byte	0xe
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0xf
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x10
	.long	0xa3
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x5
	.byte	0x13
	.long	0xfa
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0x15
	.long	0x5b
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0x16
	.long	0xcc
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x5
	.byte	0x17
	.long	0xd7
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.byte	0x5
	.byte	0x1a
	.long	0x128
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0x1c
	.long	0x66
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0x1d
	.long	0xcc
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x5
	.byte	0x1e
	.long	0x105
	.uleb128 0x9
	.byte	0x1a
	.byte	0x5
	.byte	0x22
	.long	.LASF168
	.long	0x258
	.uleb128 0x6
	.long	.LASF22
	.byte	0x5
	.byte	0x24
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0x25
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF24
	.byte	0x5
	.byte	0x26
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF25
	.byte	0x5
	.byte	0x27
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF26
	.byte	0x5
	.byte	0x28
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF27
	.byte	0x5
	.byte	0x29
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF28
	.byte	0x5
	.byte	0x2a
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0x2b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0x2c
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF31
	.byte	0x5
	.byte	0x2d
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x30
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0x31
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x6
	.long	.LASF34
	.byte	0x5
	.byte	0x32
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x33
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.byte	0x36
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.long	.LASF37
	.byte	0x5
	.byte	0x37
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x6
	.long	.LASF38
	.byte	0x5
	.byte	0x38
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x6
	.long	.LASF39
	.byte	0x5
	.byte	0x39
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x6
	.long	.LASF40
	.byte	0x5
	.byte	0x3a
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x6
	.long	.LASF41
	.byte	0x5
	.byte	0x3b
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x5
	.byte	0x3c
	.long	0x133
	.uleb128 0x5
	.long	.LASF44
	.byte	0x17
	.byte	0x6
	.byte	0x28
	.long	0x2a8
	.uleb128 0x6
	.long	.LASF45
	.byte	0x6
	.byte	0x2a
	.long	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF46
	.byte	0x6
	.byte	0x2b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF47
	.byte	0x6
	.byte	0x2d
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF48
	.byte	0x6
	.byte	0x2e
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xa
	.long	0x54
	.long	0x2b8
	.uleb128 0xb
	.long	0x2b8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF49
	.uleb128 0xa
	.long	0x54
	.long	0x2cf
	.uleb128 0xb
	.long	0x2b8
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x6
	.byte	0x30
	.long	0x263
	.uleb128 0x5
	.long	.LASF51
	.byte	0x1b
	.byte	0x6
	.byte	0x32
	.long	0x303
	.uleb128 0x6
	.long	.LASF52
	.byte	0x6
	.byte	0x34
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF53
	.byte	0x6
	.byte	0x35
	.long	0x258
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF54
	.byte	0x6
	.byte	0x37
	.long	0x2da
	.uleb128 0x5
	.long	.LASF55
	.byte	0x8
	.byte	0x6
	.byte	0x39
	.long	0x353
	.uleb128 0x6
	.long	.LASF45
	.byte	0x6
	.byte	0x3a
	.long	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF56
	.byte	0x6
	.byte	0x3b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF57
	.byte	0x6
	.byte	0x3c
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF58
	.byte	0x6
	.byte	0x3d
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF59
	.byte	0x6
	.byte	0x3e
	.long	0x30e
	.uleb128 0x5
	.long	.LASF60
	.byte	0x2
	.byte	0x6
	.byte	0x40
	.long	0x387
	.uleb128 0x6
	.long	.LASF52
	.byte	0x6
	.byte	0x41
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF57
	.byte	0x6
	.byte	0x42
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF61
	.byte	0x6
	.byte	0x43
	.long	0x35e
	.uleb128 0x5
	.long	.LASF62
	.byte	0x1d
	.byte	0x6
	.byte	0x45
	.long	0x3bb
	.uleb128 0x6
	.long	.LASF63
	.byte	0x6
	.byte	0x47
	.long	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF64
	.byte	0x6
	.byte	0x48
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xa
	.long	0x54
	.long	0x3cb
	.uleb128 0xb
	.long	0x2b8
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.long	.LASF65
	.byte	0x6
	.byte	0x49
	.long	0x392
	.uleb128 0xc
	.string	"_pf"
	.byte	0x1d
	.byte	0x6
	.byte	0x50
	.long	0x425
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x52
	.long	0x425
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0x53
	.long	0x2cf
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x54
	.long	0x303
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x55
	.long	0x387
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x56
	.long	0x353
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x57
	.long	0x3cb
	.byte	0
	.uleb128 0xa
	.long	0x54
	.long	0x435
	.uleb128 0xb
	.long	0x2b8
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.long	.LASF68
	.byte	0x6
	.byte	0x58
	.long	0x3d6
	.uleb128 0xd
	.string	"_rp"
	.byte	0x20
	.byte	0x6
	.byte	0x5c
	.long	0x477
	.uleb128 0x6
	.long	.LASF69
	.byte	0x6
	.byte	0x5e
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF70
	.byte	0x6
	.byte	0x5f
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF71
	.byte	0x6
	.byte	0x60
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF72
	.byte	0x6
	.byte	0x61
	.long	0x440
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF73
	.uleb128 0xe
	.long	.LASF82
	.byte	0x1
	.byte	0x7
	.byte	0x1d
	.long	0x4c0
	.uleb128 0xf
	.long	.LASF74
	.sleb128 0
	.uleb128 0xf
	.long	.LASF75
	.sleb128 1
	.uleb128 0xf
	.long	.LASF76
	.sleb128 2
	.uleb128 0xf
	.long	.LASF77
	.sleb128 3
	.uleb128 0xf
	.long	.LASF78
	.sleb128 4
	.uleb128 0xf
	.long	.LASF79
	.sleb128 5
	.uleb128 0xf
	.long	.LASF80
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.long	.LASF81
	.byte	0x7
	.byte	0x25
	.long	0x489
	.uleb128 0xe
	.long	.LASF83
	.byte	0x1
	.byte	0x7
	.byte	0x27
	.long	0x4f0
	.uleb128 0xf
	.long	.LASF84
	.sleb128 0
	.uleb128 0xf
	.long	.LASF85
	.sleb128 1
	.uleb128 0xf
	.long	.LASF86
	.sleb128 2
	.uleb128 0xf
	.long	.LASF87
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF88
	.byte	0x7
	.byte	0x2c
	.long	0x4cb
	.uleb128 0xe
	.long	.LASF89
	.byte	0x1
	.byte	0x7
	.byte	0x2e
	.long	0x514
	.uleb128 0xf
	.long	.LASF90
	.sleb128 0
	.uleb128 0xf
	.long	.LASF91
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF92
	.byte	0x7
	.byte	0x31
	.long	0x4fb
	.uleb128 0xe
	.long	.LASF93
	.byte	0x1
	.byte	0x7
	.byte	0x33
	.long	0x54a
	.uleb128 0xf
	.long	.LASF94
	.sleb128 0
	.uleb128 0xf
	.long	.LASF95
	.sleb128 1
	.uleb128 0xf
	.long	.LASF96
	.sleb128 2
	.uleb128 0xf
	.long	.LASF97
	.sleb128 3
	.uleb128 0xf
	.long	.LASF98
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF99
	.byte	0x7
	.byte	0x39
	.long	0x51f
	.uleb128 0xe
	.long	.LASF100
	.byte	0x1
	.byte	0x7
	.byte	0x3b
	.long	0x56e
	.uleb128 0xf
	.long	.LASF101
	.sleb128 0
	.uleb128 0xf
	.long	.LASF102
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF103
	.byte	0x7
	.byte	0x3e
	.long	0x555
	.uleb128 0xe
	.long	.LASF104
	.byte	0x1
	.byte	0x7
	.byte	0x40
	.long	0x592
	.uleb128 0xf
	.long	.LASF105
	.sleb128 0
	.uleb128 0xf
	.long	.LASF106
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF107
	.byte	0x7
	.byte	0x43
	.long	0x579
	.uleb128 0x10
	.string	"_ed"
	.byte	0x1
	.byte	0x7
	.byte	0x4a
	.long	0x5b6
	.uleb128 0xf
	.long	.LASF108
	.sleb128 0
	.uleb128 0xf
	.long	.LASF109
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF110
	.byte	0x7
	.byte	0x4d
	.long	0x59d
	.uleb128 0x11
	.long	.LASF169
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF114
	.byte	0x2
	.byte	0xe0
	.byte	0x3
	.long	0x608
	.uleb128 0x13
	.long	.LASF116
	.byte	0x2
	.byte	0xe0
	.long	0x608
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF111
	.byte	0x2
	.byte	0xe2
	.long	0x608
	.uleb128 0x15
	.long	.LASF112
	.byte	0x2
	.byte	0xe6
	.long	0x78
	.uleb128 0x16
	.byte	0x1
	.long	.LASF118
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.uleb128 0x17
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF113
	.uleb128 0x12
	.long	.LASF115
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x64e
	.uleb128 0x13
	.long	.LASF117
	.byte	0x2
	.byte	0x8e
	.long	0x608
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF111
	.byte	0x2
	.byte	0x90
	.long	0x608
	.uleb128 0x15
	.long	.LASF112
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x16
	.byte	0x1
	.long	.LASF118
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x17
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF170
	.byte	0x1
	.byte	0x5d
	.long	0x49
	.byte	0x1
	.long	0x696
	.uleb128 0x19
	.string	"reg"
	.byte	0x1
	.byte	0x5d
	.long	0x98
	.uleb128 0x13
	.long	.LASF119
	.byte	0x1
	.byte	0x5d
	.long	0x696
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x5d
	.long	0x49
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.byte	0x5f
	.long	0x49
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x49
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x2
	.long	0x49
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x1
	.byte	0x38
	.long	0x49
	.long	.LFB11
	.long	.LFE11
	.long	.LLST0
	.byte	0x1
	.long	0x6e2
	.uleb128 0x1d
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x1
	.byte	0x3a
	.long	0x49
	.long	.LLST1
	.uleb128 0x1f
	.long	.LVL1
	.long	0x1275
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0x49
	.long	0x49
	.long	.LFB12
	.long	.LFE12
	.long	.LLST2
	.byte	0x1
	.long	0x774
	.uleb128 0x21
	.string	"reg"
	.byte	0x1
	.byte	0x49
	.long	0x98
	.long	.LLST3
	.uleb128 0x22
	.long	.LASF16
	.byte	0x1
	.byte	0x49
	.long	0x696
	.long	.LLST4
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x49
	.long	0x49
	.long	.LLST5
	.uleb128 0x1d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x1
	.byte	0x4b
	.long	0x49
	.long	.LLST6
	.uleb128 0x23
	.long	.LVL4
	.long	0x1275
	.long	0x75d
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x4f
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0
	.uleb128 0x1f
	.long	.LVL6
	.long	0x1290
	.uleb128 0x20
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF125
	.byte	0x1
	.byte	0x77
	.long	.LFB14
	.long	.LFE14
	.long	.LLST7
	.byte	0x1
	.long	0x817
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.byte	0x77
	.long	0x49
	.long	.LLST8
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.byte	0x77
	.long	0x696
	.long	.LLST9
	.uleb128 0x22
	.long	.LASF119
	.byte	0x1
	.byte	0x77
	.long	0x696
	.long	.LLST10
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x77
	.long	0x49
	.long	.LLST11
	.uleb128 0x23
	.long	.LVL10
	.long	0x1275
	.long	0x7dd
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x23
	.long	.LVL11
	.long	0x1290
	.long	0x7f6
	.uleb128 0x20
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL12
	.long	0x12ac
	.uleb128 0x20
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x5c1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x851
	.uleb128 0x26
	.long	.LVL15
	.byte	0x1
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3a
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL16rx_pipe0_address
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x64e
	.long	.LFB29
	.long	.LFE29
	.long	.LLST12
	.byte	0x1
	.long	0x8cc
	.uleb128 0x28
	.long	0x65e
	.long	.LLST13
	.uleb128 0x28
	.long	0x669
	.long	.LLST14
	.uleb128 0x29
	.long	0x674
	.byte	0x1
	.uleb128 0x1d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2a
	.long	0x680
	.long	.LLST15
	.uleb128 0x2a
	.long	0x68b
	.long	.LLST16
	.uleb128 0x23
	.long	.LVL20
	.long	0x1275
	.long	0x8b1
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x4f
	.byte	0x1a
	.byte	0
	.uleb128 0x1f
	.long	.LVL22
	.long	0x12ac
	.uleb128 0x20
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF126
	.byte	0x1
	.byte	0x8b
	.long	.LFB15
	.long	.LFE15
	.long	.LLST17
	.byte	0x1
	.long	0x9ac
	.uleb128 0x1d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.long	.LASF127
	.byte	0x1
	.byte	0x8d
	.long	0x49
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2c
	.long	0x5c9
	.long	.LBB31
	.long	.LBE31
	.byte	0x1
	.byte	0x94
	.long	0x934
	.uleb128 0x28
	.long	0x5d5
	.long	.LLST18
	.uleb128 0x1d
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.long	0x5e1
	.long	.LLST19
	.uleb128 0x2a
	.long	0x5ec
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x5c9
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.byte	0x95
	.long	0x96d
	.uleb128 0x28
	.long	0x5d5
	.long	.LLST21
	.uleb128 0x1d
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	0x5e1
	.long	.LLST22
	.uleb128 0x2a
	.long	0x5ec
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL24
	.long	0x851
	.long	0x98b
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
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
	.uleb128 0x1f
	.long	.LVL25
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x5f7
	.byte	0
	.long	0x9bc
	.uleb128 0x17
	.long	0x83
	.byte	0
	.uleb128 0x12
	.long	.LASF128
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x9d6
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF16
	.byte	0x1
	.byte	0xc1
	.long	0x49
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.byte	0xe4
	.long	.LASF171
	.long	.LFB19
	.long	.LFE19
	.long	.LLST24
	.byte	0x1
	.long	0xbbd
	.uleb128 0x2c
	.long	0x60f
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.byte	0xfe
	.long	0xa2e
	.uleb128 0x2f
	.long	0x61b
	.byte	0x4
	.long	0x41300000
	.uleb128 0x1d
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x30
	.long	0x627
	.byte	0x4
	.long	0x482be000
	.uleb128 0x31
	.long	0x632
	.long	0x2af80
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x9bc
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x101
	.long	0xb86
	.uleb128 0x1d
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x33
	.long	0x9c9
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x34
	.long	.LVL29
	.long	0x12cd
	.uleb128 0x23
	.long	.LVL30
	.long	0x6e2
	.long	0xa7f
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL31
	.long	0x6e2
	.long	0xaa2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL32
	.long	0x6e2
	.long	0xac5
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL33
	.long	0x6e2
	.long	0xae8
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL34
	.long	0x6e2
	.long	0xb0b
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL35
	.long	0x6e2
	.long	0xb2e
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL36
	.long	0x774
	.long	0xb5b
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xe1
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.long	.LVL37
	.long	0x774
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xe2
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x60f
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.word	0x104
	.uleb128 0x2f
	.long	0x61b
	.byte	0x4
	.long	0x40000000
	.uleb128 0x1d
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x30
	.long	0x627
	.byte	0x4
	.long	0x46fa0000
	.uleb128 0x36
	.long	0x632
	.word	0x7d00
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x63d
	.byte	0
	.long	0xbcd
	.uleb128 0x17
	.long	0x83
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF130
	.byte	0x1
	.word	0x111
	.long	.LASF136
	.long	.LFB20
	.long	.LFE20
	.long	.LLST25
	.byte	0x1
	.long	0xd0e
	.uleb128 0x38
	.long	.LASF131
	.byte	0x1
	.word	0x111
	.long	0x4c0
	.long	.LLST26
	.uleb128 0x38
	.long	.LASF63
	.byte	0x1
	.word	0x111
	.long	0x696
	.long	.LLST27
	.uleb128 0x38
	.long	.LASF132
	.byte	0x1
	.word	0x111
	.long	0x5b6
	.long	.LLST28
	.uleb128 0x1d
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x39
	.long	.LASF16
	.byte	0x1
	.word	0x113
	.long	0x49
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3a
	.long	.LASF133
	.byte	0x1
	.word	0x114
	.long	0x49
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF134
	.byte	0x1
	.word	0x115
	.long	0x49
	.byte	0x20
	.uleb128 0x23
	.long	.LVL45
	.long	0x6e2
	.long	0xc70
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x23
	.long	.LVL46
	.long	0x851
	.long	0xc8e
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x20
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
	.uleb128 0x23
	.long	.LVL47
	.long	0x6e2
	.long	0xcb1
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL48
	.long	0x6e2
	.long	0xccf
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL49
	.long	0x851
	.long	0xced
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x20
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
	.uleb128 0x1f
	.long	.LVL50
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.word	0x13e
	.long	.LASF137
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd5e
	.uleb128 0x38
	.long	.LASF63
	.byte	0x1
	.word	0x13e
	.long	0x696
	.long	.LLST29
	.uleb128 0x26
	.long	.LVL54
	.byte	0x1
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF138
	.byte	0x1
	.word	0x148
	.long	.LASF139
	.long	.LFB22
	.long	.LFE22
	.long	.LLST30
	.byte	0x1
	.long	0xdf2
	.uleb128 0x3c
	.string	"dr"
	.byte	0x1
	.word	0x148
	.long	0x514
	.long	.LLST31
	.uleb128 0x38
	.long	.LASF140
	.byte	0x1
	.word	0x148
	.long	0x4f0
	.long	.LLST32
	.uleb128 0x1d
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x39
	.long	.LASF16
	.byte	0x1
	.word	0x14a
	.long	0x49
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x23
	.long	.LVL58
	.long	0x851
	.long	0xdd1
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.uleb128 0x20
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
	.uleb128 0x1f
	.long	.LVL59
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF141
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe0c
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF127
	.byte	0x1
	.byte	0x9e
	.long	0x49
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF143
	.byte	0x1
	.word	0x15f
	.long	.LASF145
	.long	0x49
	.long	.LFB23
	.long	.LFE23
	.long	.LLST33
	.byte	0x1
	.long	0xf8d
	.uleb128 0x38
	.long	.LASF71
	.byte	0x1
	.word	0x15f
	.long	0xf8d
	.long	.LLST34
	.uleb128 0x38
	.long	.LASF142
	.byte	0x1
	.word	0x15f
	.long	0x592
	.long	.LLST35
	.uleb128 0x1d
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x3e
	.string	"len"
	.byte	0x1
	.word	0x163
	.long	0x49
	.byte	0x20
	.uleb128 0x32
	.long	0xdf2
	.long	.LBB59
	.long	.LBE59
	.byte	0x1
	.word	0x16a
	.long	0xf3a
	.uleb128 0x1d
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x33
	.long	0xdff
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2c
	.long	0x5c9
	.long	.LBB61
	.long	.LBE61
	.byte	0x1
	.byte	0xa7
	.long	0xec2
	.uleb128 0x28
	.long	0x5d5
	.long	.LLST36
	.uleb128 0x1d
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2a
	.long	0x5e1
	.long	.LLST37
	.uleb128 0x2a
	.long	0x5ec
	.long	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x5c9
	.long	.LBB63
	.long	.LBE63
	.byte	0x1
	.byte	0xa8
	.long	0xefb
	.uleb128 0x28
	.long	0x5d5
	.long	.LLST39
	.uleb128 0x1d
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2a
	.long	0x5e1
	.long	.LLST40
	.uleb128 0x2a
	.long	0x5ec
	.long	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL66
	.long	0x851
	.long	0xf19
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
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
	.uleb128 0x1f
	.long	.LVL67
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
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
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL70
	.long	0x6e2
	.long	0xf60
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3a
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL10tx_address
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1f
	.long	.LVL71
	.long	0x774
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xa0
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x2
	.long	0x477
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.word	0x17f
	.long	.LASF146
	.long	0x54a
	.long	.LFB24
	.long	.LFE24
	.long	.LLST42
	.byte	0x1
	.long	0x1059
	.uleb128 0x38
	.long	.LASF119
	.byte	0x1
	.word	0x17f
	.long	0xf8d
	.long	.LLST43
	.uleb128 0x1d
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x3e
	.string	"len"
	.byte	0x1
	.word	0x181
	.long	0x49
	.byte	0x20
	.uleb128 0x3f
	.long	.LASF120
	.byte	0x1
	.word	0x182
	.long	0x49
	.long	.LLST44
	.uleb128 0x3f
	.long	.LASF147
	.byte	0x1
	.word	0x183
	.long	0x49
	.long	.LLST45
	.uleb128 0x3f
	.long	.LASF148
	.byte	0x1
	.word	0x184
	.long	0x49
	.long	.LLST46
	.uleb128 0x3f
	.long	.LASF149
	.byte	0x1
	.word	0x185
	.long	0x54a
	.long	.LLST47
	.uleb128 0x34
	.long	.LVL77
	.long	0x69c
	.uleb128 0x23
	.long	.LVL81
	.long	0x774
	.long	0x104e
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	.LVL82
	.long	0x69c
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF150
	.byte	0x1
	.word	0x1b3
	.long	.LASF151
	.long	0x49
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x10a5
	.uleb128 0x1d
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x41
	.string	"wh"
	.byte	0x1
	.word	0x1b5
	.long	0x66
	.long	.LLST48
	.uleb128 0x3f
	.long	.LASF152
	.byte	0x1
	.word	0x1b6
	.long	0x49
	.long	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF153
	.byte	0x1
	.word	0x1c1
	.long	.LASF154
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x111b
	.uleb128 0x23
	.long	.LVL95
	.long	0x774
	.long	0x10f0
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xe1
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.long	.LVL96
	.byte	0x1
	.long	0x774
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xe2
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.long	.LASF172
	.byte	0x1
	.word	0x1c9
	.long	.LFB27
	.long	.LFE27
	.long	.LLST50
	.byte	0x1
	.long	0x11e1
	.uleb128 0x1d
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x39
	.long	.LASF120
	.byte	0x1
	.word	0x1cb
	.long	0x49
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3f
	.long	.LASF147
	.byte	0x1
	.word	0x1cc
	.long	0x49
	.long	.LLST51
	.uleb128 0x34
	.long	.LVL97
	.long	0x69c
	.uleb128 0x34
	.long	.LVL101
	.long	0x12da
	.uleb128 0x34
	.long	.LVL102
	.long	0x5c1
	.uleb128 0x34
	.long	.LVL103
	.long	0x8cc
	.uleb128 0x23
	.long	.LVL104
	.long	0x774
	.long	0x11ae
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xe1
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.long	.LVL105
	.long	0x5c1
	.uleb128 0x34
	.long	.LVL106
	.long	0x8cc
	.uleb128 0x1f
	.long	.LVL107
	.long	0x6e2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.uleb128 0x20
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x20
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF155
	.byte	0x1
	.byte	0x27
	.long	0x11f2
	.byte	0x5
	.byte	0x3
	.long	_ZL13transmit_lock
	.uleb128 0x43
	.long	0x49
	.uleb128 0xa
	.long	0x54
	.long	0x1207
	.uleb128 0xb
	.long	0x2b8
	.byte	0x5
	.byte	0
	.uleb128 0x2b
	.long	.LASF156
	.byte	0x1
	.byte	0x29
	.long	0x1218
	.byte	0x5
	.byte	0x3
	.long	_ZL14rx_pipe_widths
	.uleb128 0x43
	.long	0x11f7
	.uleb128 0x2b
	.long	.LASF157
	.byte	0x1
	.byte	0x2b
	.long	0x122e
	.byte	0x5
	.byte	0x3
	.long	_ZL10tx_address
	.uleb128 0x43
	.long	0x2a8
	.uleb128 0x2b
	.long	.LASF158
	.byte	0x1
	.byte	0x2d
	.long	0x1244
	.byte	0x5
	.byte	0x3
	.long	_ZL16rx_pipe0_address
	.uleb128 0x43
	.long	0x2a8
	.uleb128 0x2b
	.long	.LASF159
	.byte	0x1
	.byte	0x2f
	.long	0x125a
	.byte	0x5
	.byte	0x3
	.long	_ZL10tx_history
	.uleb128 0x43
	.long	0x66
	.uleb128 0x2b
	.long	.LASF160
	.byte	0x1
	.byte	0x31
	.long	0x1270
	.byte	0x5
	.byte	0x3
	.long	_ZL14tx_last_status
	.uleb128 0x43
	.long	0x56e
	.uleb128 0x44
	.byte	0x1
	.long	.LASF173
	.byte	0x8
	.byte	0x31
	.long	.LASF174
	.long	0x49
	.byte	0x1
	.long	0x1290
	.uleb128 0x17
	.long	0x49
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF161
	.byte	0x8
	.byte	0x2c
	.long	.LASF163
	.byte	0x1
	.long	0x12ac
	.uleb128 0x17
	.long	0x696
	.uleb128 0x17
	.long	0x49
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF162
	.byte	0x8
	.byte	0x25
	.long	.LASF164
	.byte	0x1
	.long	0x12cd
	.uleb128 0x17
	.long	0x696
	.uleb128 0x17
	.long	0x696
	.uleb128 0x17
	.long	0x49
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF175
	.byte	0x8
	.byte	0x1c
	.long	.LASF176
	.byte	0x1
	.uleb128 0x47
	.byte	0x1
	.long	.LASF177
	.byte	0x1
	.byte	0x33
	.long	.LASF178
	.byte	0x1
	.uleb128 0x17
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LFE11
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LFB12
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
	.long	.LFE12
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL4-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-1
	.long	.LVL7
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL2
	.long	.LVL4-1
	.word	0x1
	.byte	0x64
	.long	.LVL4-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL5
	.long	.LVL8
	.word	0x1
	.byte	0x5f
	.long	.LVL8
	.long	.LFE12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LFB14
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI18
	.long	.LFE14
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL10-1
	.word	0x1
	.byte	0x68
	.long	.LVL10-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL9
	.long	.LVL10-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL14
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL9
	.long	.LVL10-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL13
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL9
	.long	.LVL10-1
	.word	0x1
	.byte	0x62
	.long	.LVL10-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LFB29
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI25
	.long	.LFE29
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST13:
	.long	.LVL16
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL16
	.long	.LVL20-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20-1
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL21
	.long	.LVL23
	.word	0x1
	.byte	0x61
	.long	.LVL23
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST16:
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LFE29
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LFB15
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI29
	.long	.LFE15
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST18:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42820000
	.long	0
	.long	0
.LLST19:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44820000
	.long	0
	.long	0
.LLST20:
	.long	.LVL25
	.long	.LVL27
	.word	0x4
	.byte	0xa
	.word	0x410
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42820000
	.long	0
	.long	0
.LLST22:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44820000
	.long	0
	.long	0
.LLST23:
	.long	.LVL26
	.long	.LVL27
	.word	0x4
	.byte	0xa
	.word	0x410
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LFB19
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI33
	.long	.LFE19
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST25:
	.long	.LFB20
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI42
	.long	.LFE20
	.word	0x2
	.byte	0x8c
	.sleb128 12
	.long	0
	.long	0
.LLST26:
	.long	.LVL38
	.long	.LVL40
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x69
	.long	.LVL41
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	.LVL43
	.long	.LVL45-1
	.word	0x1
	.byte	0x69
	.long	.LVL45-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL38
	.long	.LVL44
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LVL45-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL45-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL38
	.long	.LVL42
	.word	0x1
	.byte	0x64
	.long	.LVL42
	.long	.LVL51
	.word	0x1
	.byte	0x5d
	.long	.LVL51
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL54-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LFB22
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI48
	.long	.LFE22
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST31:
	.long	.LVL55
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LVL60
	.word	0x1
	.byte	0x61
	.long	.LVL60
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL55
	.long	.LVL56
	.word	0x1
	.byte	0x66
	.long	.LVL56
	.long	.LVL61
	.word	0x1
	.byte	0x60
	.long	.LVL61
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LFB23
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI55
	.long	.LFE23
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
.LLST34:
	.long	.LVL62
	.long	.LVL64
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL72
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL62
	.long	.LVL65
	.word	0x1
	.byte	0x66
	.long	.LVL65
	.long	.LVL73
	.word	0x1
	.byte	0x5f
	.long	.LVL73
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL67
	.long	.LVL69
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42820000
	.long	0
	.long	0
.LLST37:
	.long	.LVL67
	.long	.LVL69
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44820000
	.long	0
	.long	0
.LLST38:
	.long	.LVL67
	.long	.LVL69
	.word	0x4
	.byte	0xa
	.word	0x410
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42820000
	.long	0
	.long	0
.LLST40:
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44820000
	.long	0
	.long	0
.LLST41:
	.long	.LVL68
	.long	.LVL69
	.word	0x4
	.byte	0xa
	.word	0x410
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LFB24
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI57
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST43:
	.long	.LVL74
	.long	.LVL76
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL87
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL77
	.long	.LVL78
	.word	0x1
	.byte	0x68
	.long	.LVL82
	.long	.LVL83
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST45:
	.long	.LVL79
	.long	.LVL80
	.word	0x1
	.byte	0x62
	.long	.LVL80
	.long	.LVL81-1
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	_ZL14rx_pipe_widths
	.byte	0x1c
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0x3e
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST46:
	.long	.LVL75
	.long	.LVL79
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x2e
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81-1
	.word	0xe
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	_ZL14rx_pipe_widths
	.byte	0x1c
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x2e
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL79
	.long	.LVL86
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL86
	.long	.LFE24
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST48:
	.long	.LVL88
	.long	.LVL93
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL94
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.long	.LVL94
	.long	.LFE25
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST49:
	.long	.LVL88
	.long	.LVL89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LVL92
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST50:
	.long	.LFB27
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI72
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI73
	.long	.LCFI74
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI74
	.long	.LCFI75
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI75
	.long	.LFE27
	.word	0x2
	.byte	0x8c
	.sleb128 20
	.long	0
	.long	0
.LLST51:
	.long	.LVL98
	.long	.LVL99
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0x3e
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL99
	.long	.LVL100
	.word	0x9
	.byte	0x8c
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x3e
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL100
	.long	.LVL101-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
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
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB17
	.long	.LFE17
	.long	.LFB29
	.long	.LFE29
	.long	.LFB15
	.long	.LFE15
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF136:
	.string	"_Z18Radio_Configure_Rx11_radio_pipePh3_ed"
.LASF41:
	.string	"capacity"
.LASF146:
	.string	"_Z13Radio_ReceiveP3_rp"
.LASF30:
	.string	"dirt_left"
.LASF97:
	.string	"RADIO_RX_MORE_PACKETS"
.LASF95:
	.string	"RADIO_RX_TRANSMITTING"
.LASF102:
	.string	"RADIO_TX_SUCCESS"
.LASF115:
	.string	"_delay_ms"
.LASF175:
	.string	"SPI_Init"
.LASF168:
	.string	"20roomba_sensor_data_t"
.LASF43:
	.string	"_i16s"
.LASF69:
	.string	"type"
.LASF19:
	.string	"_i16u"
.LASF28:
	.string	"virtual_wall"
.LASF88:
	.string	"RADIO_TX_POWER"
.LASF94:
	.string	"RADIO_RX_INVALID_ARGS"
.LASF92:
	.string	"RADIO_DATA_RATE"
.LASF11:
	.string	"long long unsigned int"
.LASF35:
	.string	"angle"
.LASF170:
	.string	"get_register"
.LASF131:
	.string	"pipe"
.LASF37:
	.string	"voltage"
.LASF145:
	.string	"_Z14Radio_TransmitP3_rp14_radio_tx_wait"
.LASF162:
	.string	"SPI_ReadWrite_Block"
.LASF70:
	.string	"timestamp"
.LASF36:
	.string	"charging_state"
.LASF147:
	.string	"pipe_number"
.LASF5:
	.string	"int16_t"
.LASF18:
	.string	"int16_u"
.LASF10:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF45:
	.string	"sender_address"
.LASF167:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF99:
	.string	"RADIO_RX_STATUS"
.LASF142:
	.string	"wait"
.LASF141:
	.string	"set_tx_mode"
.LASF7:
	.string	"long int"
.LASF93:
	.string	"_radio_receive"
.LASF105:
	.string	"RADIO_WAIT_FOR_TX"
.LASF144:
	.string	"Radio_Receive"
.LASF161:
	.string	"SPI_Write_Block"
.LASF155:
	.string	"transmit_lock"
.LASF26:
	.string	"cliff_front_right"
.LASF109:
	.string	"ENABLE"
.LASF149:
	.string	"result"
.LASF6:
	.string	"uint16_t"
.LASF21:
	.string	"uint16_u"
.LASF85:
	.string	"RADIO_LOW_POWER"
.LASF39:
	.string	"temperature"
.LASF143:
	.string	"Radio_Transmit"
.LASF173:
	.string	"SPI_Write_Byte"
.LASF54:
	.string	"pf_sensors_t"
.LASF17:
	.string	"bytes"
.LASF101:
	.string	"RADIO_TX_MAX_RT"
.LASF84:
	.string	"RADIO_LOWEST_POWER"
.LASF33:
	.string	"buttons"
.LASF174:
	.string	"_Z14SPI_Write_Byteh"
.LASF16:
	.string	"value"
.LASF61:
	.string	"pf_ir_data_t"
.LASF176:
	.string	"_Z8SPI_Initv"
.LASF0:
	.string	"unsigned int"
.LASF98:
	.string	"RADIO_RX_SUCCESS"
.LASF29:
	.string	"motor_overcurrents"
.LASF129:
	.string	"Radio_Init"
.LASF46:
	.string	"command"
.LASF169:
	.string	"reset_pipe0_address"
.LASF9:
	.string	"long unsigned int"
.LASF40:
	.string	"charge"
.LASF24:
	.string	"cliff_left"
.LASF172:
	.string	"__vector_5"
.LASF124:
	.string	"data"
.LASF62:
	.string	"_msg"
.LASF87:
	.string	"RADIO_HIGHEST_POWER"
.LASF48:
	.string	"arguments"
.LASF138:
	.string	"Radio_Configure"
.LASF106:
	.string	"RADIO_RETURN_ON_TX"
.LASF117:
	.string	"__ms"
.LASF89:
	.string	"_radio_dr"
.LASF157:
	.string	"tx_address"
.LASF158:
	.string	"rx_pipe0_address"
.LASF163:
	.string	"_Z15SPI_Write_BlockPhh"
.LASF31:
	.string	"dirt_right"
.LASF72:
	.string	"radiopacket_t"
.LASF58:
	.string	"servo_angle"
.LASF52:
	.string	"roomba_number"
.LASF116:
	.string	"__us"
.LASF103:
	.string	"RADIO_TX_STATUS"
.LASF114:
	.string	"_delay_us"
.LASF133:
	.string	"use_aa"
.LASF82:
	.string	"_radio_pipe"
.LASF27:
	.string	"cliff_right"
.LASF49:
	.string	"sizetype"
.LASF59:
	.string	"pf_ir_command_t"
.LASF153:
	.string	"Radio_Flush"
.LASF159:
	.string	"tx_history"
.LASF63:
	.string	"address"
.LASF135:
	.string	"Radio_Set_Tx_Addr"
.LASF132:
	.string	"enable"
.LASF139:
	.string	"_Z15Radio_Configure9_radio_dr15_radio_tx_power"
.LASF71:
	.string	"payload"
.LASF57:
	.string	"ir_data"
.LASF123:
	.string	"instruction"
.LASF67:
	.string	"message"
.LASF23:
	.string	"wall"
.LASF32:
	.string	"remote_opcode"
.LASF91:
	.string	"RADIO_2MBPS"
.LASF126:
	.string	"set_rx_mode"
.LASF166:
	.string	"../radio/radio.cpp"
.LASF14:
	.string	"high_byte"
.LASF22:
	.string	"bumps_wheeldrops"
.LASF51:
	.string	"_sensors"
.LASF134:
	.string	"payload_width"
.LASF56:
	.string	"ir_command"
.LASF74:
	.string	"RADIO_PIPE_0"
.LASF75:
	.string	"RADIO_PIPE_1"
.LASF76:
	.string	"RADIO_PIPE_2"
.LASF77:
	.string	"RADIO_PIPE_3"
.LASF78:
	.string	"RADIO_PIPE_4"
.LASF79:
	.string	"RADIO_PIPE_5"
.LASF86:
	.string	"RADIO_HIGH_POWER"
.LASF107:
	.string	"RADIO_TX_WAIT"
.LASF118:
	.string	"__builtin_avr_delay_cycles"
.LASF4:
	.string	"unsigned char"
.LASF96:
	.string	"RADIO_RX_FIFO_EMPTY"
.LASF50:
	.string	"pf_command_t"
.LASF44:
	.string	"_cmd"
.LASF156:
	.string	"rx_pipe_widths"
.LASF130:
	.string	"Radio_Configure_Rx"
.LASF90:
	.string	"RADIO_1MBPS"
.LASF100:
	.string	"_radio_transmit"
.LASF154:
	.string	"_Z11Radio_Flushv"
.LASF108:
	.string	"DISABLE"
.LASF165:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF38:
	.string	"current"
.LASF55:
	.string	"_ir_command"
.LASF66:
	.string	"_filler"
.LASF8:
	.string	"uint32_t"
.LASF53:
	.string	"sensors"
.LASF20:
	.string	"_u16u"
.LASF178:
	.string	"_Z15radio_rxhandlerh"
.LASF73:
	.string	"char"
.LASF127:
	.string	"config"
.LASF13:
	.string	"low_byte"
.LASF150:
	.string	"Radio_Success_Rate"
.LASF68:
	.string	"payloadformat_t"
.LASF119:
	.string	"buffer"
.LASF164:
	.string	"_Z19SPI_ReadWrite_BlockPhS_h"
.LASF34:
	.string	"distance"
.LASF151:
	.string	"_Z18Radio_Success_Ratev"
.LASF140:
	.string	"power"
.LASF111:
	.string	"__tmp"
.LASF112:
	.string	"__ticks_dc"
.LASF15:
	.string	"int16_split"
.LASF12:
	.string	"radio_register_t"
.LASF137:
	.string	"_Z17Radio_Set_Tx_AddrPh"
.LASF2:
	.string	"int8_t"
.LASF128:
	.string	"configure_registers"
.LASF171:
	.string	"_Z10Radio_Initv"
.LASF81:
	.string	"RADIO_PIPE"
.LASF121:
	.string	"get_status"
.LASF120:
	.string	"status"
.LASF65:
	.string	"pf_message_t"
.LASF122:
	.string	"set_register"
.LASF25:
	.string	"cliff_front_left"
.LASF42:
	.string	"roomba_sensor_data_t"
.LASF3:
	.string	"uint8_t"
.LASF110:
	.string	"ON_OFF"
.LASF160:
	.string	"tx_last_status"
.LASF60:
	.string	"_ir_data"
.LASF104:
	.string	"_radio_tx_wait"
.LASF148:
	.string	"doMove"
.LASF64:
	.string	"messagecontent"
.LASF80:
	.string	"RADIO_PIPE_EMPTY"
.LASF177:
	.string	"radio_rxhandler"
.LASF125:
	.string	"send_instruction"
.LASF47:
	.string	"num_arg_bytes"
.LASF113:
	.string	"double"
.LASF83:
	.string	"_radio_tx_power"
.LASF152:
	.string	"weight"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
