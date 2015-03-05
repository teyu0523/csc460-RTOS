	.file	"os.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZL4idlev,"ax",@progbits
	.type	_ZL4idlev, @function
_ZL4idlev:
.LFB6:
	.file 1 ".././os.cpp"
	.loc 1 123 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	rjmp .L2
	.cfi_endproc
.LFE6:
	.size	_ZL4idlev, .-_ZL4idlev
	.section	.text._ZL11exit_kernelv,"ax",@progbits
	.type	_ZL11exit_kernelv, @function
_ZL11exit_kernelv:
.LFB10:
	.loc 1 428 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 433 0
/* #APP */
 ;  433 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  433 ".././os.cpp" 1
	push   r31             
	push   r30             
	push   r29             
	push   r28             
	push   r27             
	push   r26             
	push   r25             
	push   r24             
	push   r23             
	push   r22             
	push   r21             
	push   r20             
	push   r19             
	push   r18             
	push   r17             
	push   r16             
	push   r15             
	push   r14             
	push   r13             
	push   r12             
	push   r11             
	push   r10             
	push   r9              
	push   r8              
	push   r7              
	push   r6              
	push   r5              
	push   r4              
	push   r3              
	push   r2              
	push   r1              
	push   r0              
	
 ;  0 "" 2
	.loc 1 438 0
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts _ZL9kernel_sp+1,r25
	sts _ZL9kernel_sp,r24
	.loc 1 443 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	inc r31
	ld r24,Z
	ldd r25,Z+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 448 0
/* #APP */
 ;  448 ".././os.cpp" 1
	pop    r0                
	pop    r1                
	pop    r2                
	pop    r3                
	pop    r4                
	pop    r5                
	pop    r6                
	pop    r7                
	pop    r8                
	pop    r9                
	pop    r10             
	pop    r11             
	pop    r12             
	pop    r13             
	pop    r14             
	pop    r15             
	pop    r16             
	pop    r17             
	pop    r18             
	pop    r19             
	pop    r20             
	pop    r21             
	pop    r22             
	pop    r23             
	pop    r24             
	pop    r25             
	pop    r26             
	pop    r27             
	pop    r28             
	pop    r29             
	pop    r30             
	
 ;  0 "" 2
 ;  448 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 459 0
 ;  459 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 460 0
/* #NOAPP */
	.cfi_endproc
.LFE10:
	.size	_ZL11exit_kernelv, .-_ZL11exit_kernelv
	.section	.text._ZL12enter_kernelv,"ax",@progbits
	.type	_ZL12enter_kernelv, @function
_ZL12enter_kernelv:
.LFB11:
	.loc 1 473 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 478 0
/* #APP */
 ;  478 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  478 ".././os.cpp" 1
	push   r31             
	push   r30             
	push   r29             
	push   r28             
	push   r27             
	push   r26             
	push   r25             
	push   r24             
	push   r23             
	push   r22             
	push   r21             
	push   r20             
	push   r19             
	push   r18             
	push   r17             
	push   r16             
	push   r15             
	push   r14             
	push   r13             
	push   r12             
	push   r11             
	push   r10             
	push   r9              
	push   r8              
	push   r7              
	push   r6              
	push   r5              
	push   r4              
	push   r3              
	push   r2              
	push   r1              
	push   r0              
	
 ;  0 "" 2
	.loc 1 483 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 488 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 493 0
/* #APP */
 ;  493 ".././os.cpp" 1
	pop    r0                
	pop    r1                
	pop    r2                
	pop    r3                
	pop    r4                
	pop    r5                
	pop    r6                
	pop    r7                
	pop    r8                
	pop    r9                
	pop    r10             
	pop    r11             
	pop    r12             
	pop    r13             
	pop    r14             
	pop    r15             
	pop    r16             
	pop    r17             
	pop    r18             
	pop    r19             
	pop    r20             
	pop    r21             
	pop    r22             
	pop    r23             
	pop    r24             
	pop    r25             
	pop    r26             
	pop    r27             
	pop    r28             
	pop    r29             
	pop    r30             
	
 ;  0 "" 2
 ;  493 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 501 0
 ;  501 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 502 0
/* #NOAPP */
	.cfi_endproc
.LFE11:
	.size	_ZL12enter_kernelv, .-_ZL12enter_kernelv
	.section	.text._ZL7enqueueP7queue_tP9td_struct,"ax",@progbits
	.type	_ZL7enqueueP7queue_tP9td_struct, @function
_ZL7enqueueP7queue_tP9td_struct:
.LFB18:
	.loc 1 820 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 821 0
	movw r26,r22
	subi r26,-12
	sbci r27,-2
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 823 0
	ld r24,Z
	ldd r25,Z+1
.LVL1:
	or r24,r25
	brne .L6
	.loc 1 826 0
	std Z+1,r23
	st Z,r22
	rjmp .L8
.L6:
	.loc 1 832 0
	ldd r26,Z+2
	ldd r27,Z+3
	subi r26,-12
	sbci r27,-2
	st X+,r22
	st X,r23
.L8:
	.loc 1 833 0
	std Z+3,r23
	std Z+2,r22
	ret
	.cfi_endproc
.LFE18:
	.size	_ZL7enqueueP7queue_tP9td_struct, .-_ZL7enqueueP7queue_tP9td_struct
	.section	.text.Task_Terminate,"ax",@progbits
.global	Task_Terminate
	.type	Task_Terminate, @function
Task_Terminate:
.LFB31:
	.loc 1 1325 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB29:
	.loc 1 1328 0
	in r28,__SREG__
.LVL2:
	.loc 1 1329 0
/* #APP */
 ;  1329 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1331 0
/* #NOAPP */
	ldi r24,lo8(3)
	sts _ZL14kernel_request,r24
	.loc 1 1332 0
	call _ZL12enter_kernelv
.LVL3:
	.loc 1 1334 0
	out __SREG__,r28
/* epilogue start */
.LBE29:
	.loc 1 1335 0
	pop r28
.LVL4:
	ret
	.cfi_endproc
.LFE31:
	.size	Task_Terminate, .-Task_Terminate
	.section	.text._ZL7dequeueP7queue_t.isra.1,"ax",@progbits
	.type	_ZL7dequeueP7queue_t.isra.1, @function
_ZL7dequeueP7queue_t.isra.1:
.LFB35:
	.loc 1 844 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
.LVL5:
.LBB30:
	.loc 1 846 0
	ld r24,X+
	ld r25,X
	sbiw r26,1
.LVL6:
	.loc 1 848 0
	sbiw r24,0
	breq .L12
	.loc 1 850 0
	movw r30,r24
	subi r30,-12
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	st X+,r18
	st X,r19
	.loc 1 851 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
.LBE30:
	.loc 1 855 0
	ret
	.cfi_endproc
.LFE35:
	.size	_ZL7dequeueP7queue_t.isra.1, .-_ZL7dequeueP7queue_t.isra.1
	.section	.text._ZL18kernel_create_taskv,"ax",@progbits
	.type	_ZL18kernel_create_taskv, @function
_ZL18kernel_create_taskv:
.LFB13:
	.loc 1 592 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB34:
	.loc 1 598 0
	lds r24,_ZL15dead_pool_queue
	lds r25,_ZL15dead_pool_queue+1
	or r24,r25
	brne .+2
	rjmp .L23
	.loc 1 629 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L24
	.loc 1 636 0
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL7:
	movw r22,r24
.LVL8:
	rjmp .L18
.LVL9:
.L24:
	.loc 1 631 0
	ldi r22,lo8(_ZL9task_desc+2176)
	ldi r23,hi8(_ZL9task_desc+2176)
.L18:
.LVL10:
	.loc 1 657 0
	movw r30,r22
	subi r30,36
	sbci r31,-1
	st Z,__zero_reg__
	.loc 1 659 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 668 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 669 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r25
	.loc 1 670 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r24
	.loc 1 673 0
	ldi r24,lo8(gs(Task_Terminate))
	ldi r25,hi8(gs(Task_Terminate))
	adiw r30,3
	st Z,r24
	.loc 1 684 0
	movw r24,r22
	subi r24,38
	sbci r25,-1
	sbiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 686 0
	ldi r24,lo8(2)
	adiw r30,8
	st Z,r24
	.loc 1 687 0
	lds r24,_ZL26kernel_request_create_args+2
	lds r25,_ZL26kernel_request_create_args+2+1
	adiw r30,1
	std Z+1,r25
	st Z,r24
	.loc 1 688 0
	lds r24,_ZL26kernel_request_create_args+4
	adiw r30,2
	st Z,r24
	.loc 1 691 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	breq .L19
	cpi r24,lo8(3)
	breq .L20
	cpi r24,lo8(1)
	brne .L26
	.loc 1 706 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L27
.L19:
.LVL11:
.LBB35:
.LBB36:
	.loc 1 792 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 793 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L22
	.loc 1 796 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 797 0
	sts _ZL14periodic_queue+1,r23
	sts _ZL14periodic_queue,r22
	rjmp .L28
.L22:
	.loc 1 803 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-12
	sbci r27,-2
	st X+,r22
	st X,r23
	.loc 1 804 0
	std Z+1,r25
	st Z,r24
.L28:
	.loc 1 805 0
	sts _ZL14periodic_queue+2+1,r23
	sts _ZL14periodic_queue+2,r22
	rjmp .L26
.LVL12:
.L20:
.LBE36:
.LBE35:
	.loc 1 701 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
.L27:
	.loc 1 706 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL13:
	rjmp .L26
.L23:
	.loc 1 601 0
	ldi r24,0
	ldi r25,0
	ret
.L26:
	.loc 1 715 0
	ldi r24,lo8(1)
	ldi r25,0
.LBE34:
	.loc 1 716 0
	ret
	.cfi_endproc
.LFE13:
	.size	_ZL18kernel_create_taskv, .-_ZL18kernel_create_taskv
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
.LFB12:
	.loc 1 520 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 533 0
/* #APP */
 ;  533 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
	.loc 1 535 0
 ;  535 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 537 0
 ;  537 ".././os.cpp" 1
	push   r31             
	push   r30             
	push   r29             
	push   r28             
	push   r27             
	push   r26             
	push   r25             
	push   r24             
	push   r23             
	push   r22             
	push   r21             
	push   r20             
	push   r19             
	push   r18             
	push   r17             
	push   r16             
	push   r15             
	push   r14             
	push   r13             
	push   r12             
	push   r11             
	push   r10             
	push   r9              
	push   r8              
	push   r7              
	push   r6              
	push   r5              
	push   r4              
	push   r3              
	push   r2              
	push   r1              
	push   r0              
	
 ;  0 "" 2
	.loc 1 539 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 546 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 551 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 556 0
	ldi r30,lo8(-120)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	subi r24,-16
	sbci r25,-40
	std Z+1,r25
	st Z,r24
	.loc 1 561 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 566 0
/* #APP */
 ;  566 ".././os.cpp" 1
	pop    r0                
	pop    r1                
	pop    r2                
	pop    r3                
	pop    r4                
	pop    r5                
	pop    r6                
	pop    r7                
	pop    r8                
	pop    r9                
	pop    r10             
	pop    r11             
	pop    r12             
	pop    r13             
	pop    r14             
	pop    r15             
	pop    r16             
	pop    r17             
	pop    r18             
	pop    r19             
	pop    r20             
	pop    r21             
	pop    r22             
	pop    r23             
	pop    r24             
	pop    r25             
	pop    r26             
	pop    r27             
	pop    r28             
	pop    r29             
	pop    r30             
	
 ;  0 "" 2
 ;  566 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 576 0
 ;  576 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 577 0
/* #NOAPP */
	.cfi_endproc
.LFE12:
	.size	__vector_17, .-__vector_17
	.section	.text.OS_Abort,"ax",@progbits
.global	OS_Abort
	.type	OS_Abort, @function
OS_Abort:
.LFB23:
	.loc 1 1062 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB37:
	.loc 1 1066 0
/* #APP */
 ;  1066 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1069 0
/* #NOAPP */
	ldi r24,lo8(-16)
	out 0xa,r24
	.loc 1 1071 0
	lds r24,_ZL9error_msg
	cpi r24,lo8(6)
	brsh .L31
	.loc 1 1073 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(1))
.LVL14:
	.loc 1 1074 0
	ldi r19,lo8(96)
	rjmp .L32
.LVL15:
.L31:
	.loc 1 1078 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL16:
	.loc 1 1079 0
	ldi r19,lo8(-112)
.LVL17:
.L32:
	.loc 1 1085 0
	ldi r20,lo8(-16)
.L44:
.LVL18:
	out 0xb,r20
.LVL19:
	ldi r25,lo8(100)
.LVL20:
.L34:
.LBB38:
.LBB39:
.LBB40:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0
	ldi r18,lo8(79999)
	ldi r21,hi8(79999)
	ldi r22,hlo8(79999)
	1: subi r18,1
	sbci r21,0
	sbci r22,0
	brne 1b
	rjmp .
	nop
.LVL21:
	subi r25,lo8(-(-1))
.LVL22:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 1087 0
	brne .L34
	.loc 1 1092 0
	out 0xb,__zero_reg__
.LVL23:
	ldi r25,lo8(40)
.LVL24:
.L37:
.LBB41:
.LBB42:
.LBB43:
	.loc 2 163 0
	ldi r23,lo8(79999)
	ldi r18,hi8(79999)
	ldi r21,hlo8(79999)
	1: subi r23,1
	sbci r18,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
.LVL25:
	subi r25,lo8(-(-1))
.LVL26:
.LBE43:
.LBE42:
.LBE41:
	.loc 1 1094 0
	brne .L37
.LVL27:
.L36:
	.loc 1 1100 0 discriminator 1
	cp r25,r24
	breq .L46
	.loc 1 1102 0
	out 0xb,r19
.LVL28:
	ldi r18,lo8(10)
.LVL29:
.L39:
.LBB44:
.LBB45:
.LBB46:
	.loc 2 163 0
	ldi r22,lo8(79999)
	ldi r23,hi8(79999)
	ldi r21,hlo8(79999)
	1: subi r22,1
	sbci r23,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
.LVL30:
	subi r18,lo8(-(-1))
.LVL31:
.LBE46:
.LBE45:
.LBE44:
	.loc 1 1104 0
	brne .L39
	.loc 1 1109 0
	out 0xb,__zero_reg__
.LVL32:
	ldi r18,lo8(10)
.LVL33:
.L41:
.LBB47:
.LBB48:
.LBB49:
	.loc 2 163 0
	ldi r22,lo8(79999)
	ldi r23,hi8(79999)
	ldi r21,hlo8(79999)
	1: subi r22,1
	sbci r23,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
.LVL34:
	subi r18,lo8(-(-1))
.LVL35:
.LBE49:
.LBE48:
.LBE47:
	.loc 1 1111 0
	brne .L41
	.loc 1 1100 0
	subi r25,lo8(-(1))
.LVL36:
	rjmp .L36
.LVL37:
.L46:
	ldi r25,lo8(20)
.LVL38:
.L45:
.LBB50:
.LBB51:
.LBB52:
	.loc 2 163 0
	ldi r22,lo8(79999)
	ldi r23,hi8(79999)
	ldi r18,hlo8(79999)
	1: subi r22,1
	sbci r23,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
.LVL39:
	subi r25,lo8(-(-1))
.LVL40:
.LBE52:
.LBE51:
.LBE50:
	.loc 1 1117 0
	brne .L45
	rjmp .L44
.LBE37:
	.cfi_endproc
.LFE23:
	.size	OS_Abort, .-OS_Abort
	.section	.text._Z7OS_Initv,"ax",@progbits
.global	_Z7OS_Initv
	.type	_Z7OS_Initv, @function
_Z7OS_Initv:
.LFB21:
	.loc 1 981 0
	.cfi_startproc
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI3:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI4:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB75:
	.loc 1 986 0
	lds r24,129
	ori r24,lo8(2)
	sts 129,r24
.LVL41:
	ldi r30,lo8(_ZL9task_desc+264)
	ldi r31,hi8(_ZL9task_desc+264)
	ldi r26,lo8(_ZL16name_to_task_ptr)
	ldi r27,hi8(_ZL16name_to_task_ptr)
.LVL42:
.L49:
	.loc 1 1001 0 discriminator 2
	st Z,__zero_reg__
	.loc 1 1002 0 discriminator 2
	st X+,__zero_reg__
	st X+,__zero_reg__
	movw r24,r30
	adiw r24,8
	.loc 1 1003 0 discriminator 2
	std Z+5,r25
	std Z+4,r24
	subi r30,-16
	sbci r31,-2
	.loc 1 999 0 discriminator 2
	ldi r24,hi8(_ZL9task_desc+2168)
	cpi r30,lo8(_ZL9task_desc+2168)
	cpc r31,r24
	brne .L49
	.loc 1 1005 0
	sts _ZL9task_desc+2172+1,__zero_reg__
	sts _ZL9task_desc+2172,__zero_reg__
	.loc 1 1006 0
	ldi r16,lo8(_ZL9task_desc)
	ldi r17,hi8(_ZL9task_desc)
	sts _ZL15dead_pool_queue+1,r17
	sts _ZL15dead_pool_queue,r16
	.loc 1 1007 0
	ldi r24,lo8(_ZL9task_desc+1904)
	ldi r25,hi8(_ZL9task_desc+1904)
	sts _ZL15dead_pool_queue+2+1,r25
	sts _ZL15dead_pool_queue+2,r24
	.loc 1 1010 0
	ldi r24,lo8(gs(_ZL4idlev))
	ldi r25,hi8(gs(_ZL4idlev))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1011 0
	sts _ZL26kernel_request_create_args+4,__zero_reg__
	.loc 1 1012 0
	call _ZL18kernel_create_taskv
.LVL43:
	.loc 1 1015 0
	ldi r24,lo8(gs(_Z6r_mainv))
	ldi r25,hi8(gs(_Z6r_mainv))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1016 0
	ldi r24,lo8(3)
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1017 0
	call _ZL18kernel_create_taskv
.LVL44:
	.loc 1 1020 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
	.loc 1 1021 0
	ldi r24,lo8(1)
	sts _ZL9task_desc+264,r24
	.loc 1 1022 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL45:
	.loc 1 1031 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 1032 0
	lds r24,132
	lds r25,132+1
	subi r24,-16
	sbci r25,-40
	sts 136+1,r25
	sts 136,r24
	.loc 1 1034 0
	ldi r24,lo8(2)
	out 0x16,r24
.LBB76:
.LBB77:
.LBB78:
.LBB79:
	.loc 1 198 0
	clr r15
	inc r15
	.loc 1 195 0
	ldi r16,lo8(_ZL9task_desc+2176)
	ldi r17,hi8(_ZL9task_desc+2176)
.LBE79:
.LBE78:
.LBB83:
.LBB84:
	.loc 1 287 0
	ldi r24,lo8(2)
	mov r14,r24
.LBB85:
.LBB86:
	.loc 1 893 0
	ldi r25,lo8(100)
	mov r13,r25
	.loc 1 883 0
	ldi r18,lo8(20)
	mov r12,r18
.L89:
.LBE86:
.LBE85:
.LBE84:
.LBE83:
.LBB96:
.LBB82:
	.loc 1 173 0
	lds r20,_ZL8cur_task
	lds r21,_ZL8cur_task+1
	movw r30,r20
	subi r30,-8
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	brne .L50
	ldi r30,hi8(_ZL9task_desc+2176)
	cpi r20,lo8(_ZL9task_desc+2176)
	cpc r21,r30
	breq .+2
	rjmp .L51
.L50:
	.loc 1 175 0
	lds r18,_ZL12system_queue
	lds r19,_ZL12system_queue+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L52
	.loc 1 177 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L110
.L52:
	.loc 1 180 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	sbiw r24,0
	breq .L54
.LVL46:
.LBB80:
.LBB81:
	.loc 1 771 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L91
.L57:
.LVL47:
	movw r30,r24
	subi r30,-12
	sbci r31,-2
	.loc 1 778 0
	cp r24,r20
	cpc r25,r21
	brne .L56
	.loc 1 780 0
	ld r18,Z
	ldd r19,Z+1
	rjmp .L55
.L56:
	.loc 1 782 0
	ld r24,Z
	ldd r25,Z+1
.LVL48:
	.loc 1 776 0
	sbiw r24,0
	brne .L57
	rjmp .L55
.LVL49:
.L91:
	.loc 1 771 0
	movw r18,r24
.L55:
.LBE81:
.LBE80:
	.loc 1 185 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	.loc 1 186 0
	movw r30,r18
	subi r30,-2
	sbci r31,-2
	ld r24,Z
	sts _ZL15ticks_remaining,r24
	rjmp .L53
.LVL50:
.L54:
	.loc 1 188 0
	lds r24,_ZL8rr_queue
	lds r25,_ZL8rr_queue+1
	or r24,r25
	breq .L58
	.loc 1 190 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L110:
	call _ZL7dequeueP7queue_t.isra.1
.LVL51:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L53
.L58:
	.loc 1 195 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
.L53:
	.loc 1 198 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-8
	sbci r31,-2
	st Z,r15
.L51:
.LBE82:
.LBE96:
	.loc 1 149 0
	call _ZL11exit_kernelv
.LVL52:
.LBB97:
.LBB95:
	.loc 1 213 0
	lds r18,_ZL14kernel_request
	cpi r18,lo8(2)
	brne .+2
	rjmp .L60
	brsh .L61
	tst r18
	brne .+2
	rjmp .L62
	cpi r18,lo8(1)
	breq .L63
	rjmp .L59
.L61:
	lds r10,_ZL8cur_task
	lds r11,_ZL8cur_task+1
	cpi r18,lo8(4)
	brne .+2
	rjmp .L64
	brsh .+2
	rjmp .L65
	cpi r18,lo8(5)
	brne .+2
	rjmp .L62
	rjmp .L59
.L63:
.LBB88:
.LBB87:
	.loc 1 868 0
	lds r24,_ZL13ticks_counter
	subi r24,lo8(-(1))
	sts _ZL13ticks_counter,r24
	.loc 1 869 0
	lds r24,_ZL15ticks_remaining
	subi r24,lo8(-(-1))
	sts _ZL15ticks_remaining,r24
	.loc 1 870 0
	lds r24,_ZL15ticks_remaining
	cpse r24,__zero_reg__
	rjmp .L66
	.loc 1 873 0
	lds r18,_ZL18next_task_periodic
	lds r19,_ZL18next_task_periodic+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L67
	sts _ZL18next_task_periodic+1,__zero_reg__
	sts _ZL18next_task_periodic,__zero_reg__
	rjmp .L69
.L67:
	.loc 1 883 0
	lds r24,_ZL13ticks_counter
	mov r22,r12
	call __udivmodqi4
	mov r24,r25
	ldi r25,0
	movw r30,r18
	subi r30,-6
	sbci r31,-2
	ld r20,Z
	ldd r21,Z+1
	cp r20,r24
	cpc r21,r25
	brne .L69
	.loc 1 885 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	.loc 1 886 0
	sts _ZL18next_task_periodic+1,__zero_reg__
	sts _ZL18next_task_periodic,__zero_reg__
	.loc 1 887 0
	sbiw r30,4
	ld r24,Z
	sts _ZL15ticks_remaining,r24
	rjmp .L68
.L69:
	.loc 1 889 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL53:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L68
.L66:
	.loc 1 893 0
	lds r25,_ZL15ticks_remaining
	lds r24,_ZL13ticks_counter
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-6
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	add r18,r25
	adc r19,__zero_reg__
	mov r22,r13
	call __udivmodqi4
	mov r24,r25
	ldi r25,0
	cp r24,r18
	cpc r25,r19
	brsh .+2
	rjmp .L115
.L68:
.LBE87:
.LBE88:
	.loc 1 223 0
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	movw r30,r22
	subi r30,-11
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	breq .+2
	rjmp .L62
	sbiw r30,3
	ld r24,Z
	cpi r24,lo8(1)
	breq .+2
	rjmp .L62
	.loc 1 225 0
	st Z,r14
	rjmp .L90
.L60:
	.loc 1 231 0
	std Y+1,r18
	call _ZL18kernel_create_taskv
.LVL54:
	sts _ZL21kernel_request_retval+1,r25
	sts _ZL21kernel_request_retval,r24
	.loc 1 236 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
	ldd r18,Y+1
	or r24,r25
	brne .+2
	rjmp .L62
	.loc 1 239 0
	lds r19,_ZL26kernel_request_create_args+4
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	cpi r19,lo8(3)
	brne .L72
	movw r30,r22
	subi r30,-11
	sbci r31,-2
	ld r19,Z
	cpi r19,lo8(3)
	breq .+2
	rjmp .L73
.L72:
	.loc 1 245 0
	movw r30,r22
	subi r30,-11
	sbci r31,-2
	ld r18,Z
	cpi r18,lo8(1)
	breq .+2
	rjmp .L62
	.loc 1 246 0
	lds r18,_ZL26kernel_request_create_args+4
	sbiw r30,3
	.loc 1 245 0
	cpi r18,lo8(2)
	brne .L75
	.loc 1 249 0
	st Z,r18
.L75:
	.loc 1 253 0
	ld r18,Z
	cpi r18,lo8(2)
	breq .+2
	rjmp .L62
.L90:
	.loc 1 255 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L114
.L65:
	.loc 1 261 0
	ldi r31,lo8(_ZL9task_desc+2176)
	cp r10,r31
	ldi r31,hi8(_ZL9task_desc+2176)
	cpc r11,r31
	brne .+2
	rjmp .L62
.LBB89:
.LBB90:
	.loc 1 725 0
	movw r30,r10
	subi r30,-8
	sbci r31,-2
	st Z,__zero_reg__
	.loc 1 726 0
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(2)
	breq .+2
	rjmp .L76
.LVL55:
.LBB91:
.LBB92:
	.loc 1 739 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	cp r24,r10
	cpc r25,r11
	brne .L77
	adiw r30,1
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L77
	.loc 1 741 0
	sts _ZL14periodic_queue+1,r19
	sts _ZL14periodic_queue,r18
	.loc 1 742 0
	movw r30,r18
	subi r30,-14
	sbci r31,-2
	rjmp .L111
.L77:
	.loc 1 744 0
	lds r18,_ZL14periodic_queue+2
	lds r19,_ZL14periodic_queue+2+1
	cp r18,r10
	cpc r19,r11
	brne .L81
	movw r30,r10
	subi r30,-14
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L79
	.loc 1 745 0
	sts _ZL14periodic_queue+2+1,r19
	sts _ZL14periodic_queue+2,r18
	.loc 1 746 0
	movw r30,r18
	subi r30,-12
	sbci r31,-2
.L111:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L76
.L79:
	.loc 1 748 0
	cp r24,r10
	cpc r25,r11
	brne .L81
	.loc 1 749 0
	sts _ZL14periodic_queue+2+1,__zero_reg__
	sts _ZL14periodic_queue+2,__zero_reg__
	.loc 1 750 0
	sts _ZL14periodic_queue+1,__zero_reg__
	sts _ZL14periodic_queue,__zero_reg__
	rjmp .L76
.LVL56:
.L82:
	.loc 1 762 0
	movw r30,r24
	subi r30,-12
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL57:
.L81:
	.loc 1 754 0
	sbiw r24,0
	breq .L76
	.loc 1 756 0
	cp r24,r10
	cpc r25,r11
	brne .L82
	.loc 1 757 0
	movw r30,r10
	subi r30,-14
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL58:
	.loc 1 758 0
	movw r30,r24
	subi r30,-12
	sbci r31,-2
	ld r26,Z
	ldd r27,Z+1
	subi r26,-12
	sbci r27,-2
	ld r18,X+
	ld r19,X
	std Z+1,r19
	st Z,r18
	.loc 1 759 0
	movw r30,r18
	subi r30,-14
	sbci r31,-2
	std Z+1,r25
	st Z,r24
.LVL59:
.L76:
.LBE92:
.LBE91:
	.loc 1 730 0
	movw r22,r10
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
.L114:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL60:
	rjmp .L62
.L64:
.LBE90:
.LBE89:
	.loc 1 268 0
	movw r30,r10
	subi r30,-11
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(2)
	breq .L85
	cpi r24,lo8(3)
	breq .L86
	cpi r24,lo8(1)
	brne .L84
	.loc 1 280 0
	movw r22,r10
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L112
.L86:
	.loc 1 271 0
	movw r22,r10
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L112
.L85:
	.loc 1 275 0
	sts _ZL18slot_task_finished,r15
.LVL61:
.LBB93:
.LBB94:
	.loc 1 792 0
	movw r30,r10
	subi r30,-12
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 793 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L88
	.loc 1 796 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 797 0
	sts _ZL14periodic_queue+1,r11
	sts _ZL14periodic_queue,r10
	rjmp .L113
.L88:
	.loc 1 803 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-12
	sbci r27,-2
	st X+,r10
	st X,r11
	.loc 1 804 0
	std Z+1,r25
	st Z,r24
.L113:
	.loc 1 805 0
	sts _ZL14periodic_queue+2+1,r11
	sts _ZL14periodic_queue+2,r10
	rjmp .L84
.LVL62:
.L112:
.LBE94:
.LBE93:
	.loc 1 280 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL63:
.L84:
	.loc 1 287 0
	movw r30,r10
	subi r30,-8
	sbci r31,-2
	st Z,r14
	rjmp .L62
.L59:
	.loc 1 296 0
	ldi r24,lo8(-1)
	sts _ZL9error_msg,r24
.L115:
	.loc 1 297 0
	call OS_Abort
.LVL64:
.L62:
	.loc 1 300 0
	sts _ZL14kernel_request,__zero_reg__
	rjmp .L89
.L73:
	.loc 1 241 0
	movw r30,r22
	subi r30,-8
	sbci r31,-2
	st Z,r18
	rjmp .L72
.LBE95:
.LBE97:
.LBE77:
.LBE76:
.LBE75:
	.cfi_endproc
.LFE21:
	.size	_Z7OS_Initv, .-_Z7OS_Initv
	.section	.text.Service_Subscribe,"ax",@progbits
.global	Service_Subscribe
	.type	Service_Subscribe, @function
Service_Subscribe:
.LFB24:
	.loc 1 1151 0
	.cfi_startproc
.LVL65:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE24:
	.size	Service_Subscribe, .-Service_Subscribe
	.section	.text.Service_Publish,"ax",@progbits
.global	Service_Publish
	.type	Service_Publish, @function
Service_Publish:
.LFB25:
	.loc 1 1164 0
	.cfi_startproc
.LVL66:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE25:
	.size	Service_Publish, .-Service_Publish
	.section	.text.Task_Create_System,"ax",@progbits
.global	Task_Create_System
	.type	Task_Create_System, @function
Task_Create_System:
.LFB26:
	.loc 1 1182 0
	.cfi_startproc
.LVL67:
	.loc 1 1182 0
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB98:
	.loc 1 1186 0
	in r28,__SREG__
.LVL68:
	.loc 1 1187 0
/* #APP */
 ;  1187 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1189 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1190 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1191 0
	ldi r24,lo8(3)
.LVL69:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1194 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1195 0
	call _ZL12enter_kernelv
.LVL70:
	.loc 1 1197 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL71:
	.loc 1 1198 0
	out __SREG__,r28
/* epilogue start */
.LBE98:
	.loc 1 1201 0
	pop r28
.LVL72:
	ret
	.cfi_endproc
.LFE26:
	.size	Task_Create_System, .-Task_Create_System
	.section	.text.Task_Create_RR,"ax",@progbits
.global	Task_Create_RR
	.type	Task_Create_RR, @function
Task_Create_RR:
.LFB27:
	.loc 1 1204 0
	.cfi_startproc
.LVL73:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB99:
	.loc 1 1208 0
	in r28,__SREG__
.LVL74:
	.loc 1 1209 0
/* #APP */
 ;  1209 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1211 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1212 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1213 0
	ldi r24,lo8(1)
.LVL75:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1216 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1217 0
	call _ZL12enter_kernelv
.LVL76:
	.loc 1 1219 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL77:
	.loc 1 1220 0
	out __SREG__,r28
/* epilogue start */
.LBE99:
	.loc 1 1223 0
	pop r28
.LVL78:
	ret
	.cfi_endproc
.LFE27:
	.size	Task_Create_RR, .-Task_Create_RR
	.section	.text.Task_Create_Periodic,"ax",@progbits
.global	Task_Create_Periodic
	.type	Task_Create_Periodic, @function
Task_Create_Periodic:
.LFB28:
	.loc 1 1241 0
	.cfi_startproc
.LVL79:
	push r16
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB100:
	.loc 1 1245 0
	in r28,__SREG__
.LVL80:
	.loc 1 1246 0
/* #APP */
 ;  1246 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1248 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1249 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1250 0
	ldi r24,lo8(2)
.LVL81:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1251 0
	sts _ZL26kernel_request_create_args+5+1,r21
	sts _ZL26kernel_request_create_args+5,r20
	.loc 1 1252 0
	sts _ZL26kernel_request_create_args+7+1,r19
	sts _ZL26kernel_request_create_args+7,r18
	.loc 1 1253 0
	sts _ZL26kernel_request_create_args+9+1,r17
	sts _ZL26kernel_request_create_args+9,r16
	.loc 1 1256 0
	sts _ZL14kernel_request,r24
	.loc 1 1257 0
	call _ZL12enter_kernelv
.LVL82:
	.loc 1 1259 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL83:
	.loc 1 1260 0
	out __SREG__,r28
/* epilogue start */
.LBE100:
	.loc 1 1263 0
	pop r28
.LVL84:
	pop r17
	pop r16
.LVL85:
	ret
	.cfi_endproc
.LFE28:
	.size	Task_Create_Periodic, .-Task_Create_Periodic
	.section	.text.Task_Create,"ax",@progbits
.global	Task_Create
	.type	Task_Create, @function
Task_Create:
.LFB29:
	.loc 1 1282 0
	.cfi_startproc
.LVL86:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB101:
	.loc 1 1286 0
	in r28,__SREG__
.LVL87:
	.loc 1 1287 0
/* #APP */
 ;  1287 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1289 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1290 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1291 0
	sts _ZL26kernel_request_create_args+4,r20
	.loc 1 1294 0
	ldi r24,lo8(2)
.LVL88:
	sts _ZL14kernel_request,r24
	.loc 1 1295 0
	call _ZL12enter_kernelv
.LVL89:
	.loc 1 1297 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL90:
	.loc 1 1298 0
	out __SREG__,r28
/* epilogue start */
.LBE101:
	.loc 1 1301 0
	pop r28
.LVL91:
	ret
	.cfi_endproc
.LFE29:
	.size	Task_Create, .-Task_Create
	.section	.text.Task_Next,"ax",@progbits
.global	Task_Next
	.type	Task_Next, @function
Task_Next:
.LFB30:
	.loc 1 1308 0
	.cfi_startproc
	push r28
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI13:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI14:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB102:
	.loc 1 1311 0
	in r24,__SREG__
	std Y+1,r24
	.loc 1 1312 0
/* #APP */
 ;  1312 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1314 0
/* #NOAPP */
	ldi r24,lo8(4)
	sts _ZL14kernel_request,r24
	.loc 1 1315 0
	call _ZL12enter_kernelv
.LVL92:
	.loc 1 1317 0
	ldd r24,Y+1
	out __SREG__,r24
/* epilogue start */
.LBE102:
	.loc 1 1318 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE30:
	.size	Task_Next, .-Task_Next
	.section	.text.Task_GetArg,"ax",@progbits
.global	Task_GetArg
	.type	Task_GetArg, @function
Task_GetArg:
.LFB32:
	.loc 1 1341 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB103:
	.loc 1 1345 0
	in r18,__SREG__
.LVL93:
	.loc 1 1346 0
/* #APP */
 ;  1346 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1348 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-9
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL94:
	.loc 1 1350 0
	out __SREG__,r18
.LBE103:
	.loc 1 1353 0
	ret
	.cfi_endproc
.LFE32:
	.size	Task_GetArg, .-Task_GetArg
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB33:
	.loc 1 1359 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1360 0
	call _Z7OS_Initv
.LVL95:
	.cfi_endproc
.LFE33:
	.size	main, .-main
	.section	.data._ZL9error_msg,"aw",@progbits
	.type	_ZL9error_msg, @object
	.size	_ZL9error_msg, 1
_ZL9error_msg:
	.byte	6
	.section	.bss._ZL16name_to_task_ptr,"aw",@nobits
	.type	_ZL16name_to_task_ptr, @object
	.size	_ZL16name_to_task_ptr, 18
_ZL16name_to_task_ptr:
	.zero	18
	.section	.bss._ZL18slot_task_finished,"aw",@nobits
	.type	_ZL18slot_task_finished, @object
	.size	_ZL18slot_task_finished, 1
_ZL18slot_task_finished:
	.zero	1
	.section	.bss._ZL13ticks_counter,"aw",@nobits
	.type	_ZL13ticks_counter, @object
	.size	_ZL13ticks_counter, 1
_ZL13ticks_counter:
	.zero	1
	.section	.bss._ZL15ticks_remaining,"aw",@nobits
	.type	_ZL15ticks_remaining, @object
	.size	_ZL15ticks_remaining, 1
_ZL15ticks_remaining:
	.zero	1
	.section	.bss._ZL12system_queue,"aw",@nobits
	.type	_ZL12system_queue, @object
	.size	_ZL12system_queue, 4
_ZL12system_queue:
	.zero	4
	.section	.bss._ZL14periodic_queue,"aw",@nobits
	.type	_ZL14periodic_queue, @object
	.size	_ZL14periodic_queue, 4
_ZL14periodic_queue:
	.zero	4
	.section	.bss._ZL8rr_queue,"aw",@nobits
	.type	_ZL8rr_queue, @object
	.size	_ZL8rr_queue, 4
_ZL8rr_queue:
	.zero	4
	.section	.bss._ZL15dead_pool_queue,"aw",@nobits
	.type	_ZL15dead_pool_queue, @object
	.size	_ZL15dead_pool_queue, 4
_ZL15dead_pool_queue:
	.zero	4
	.section	.bss._ZL21kernel_request_retval,"aw",@nobits
	.type	_ZL21kernel_request_retval, @object
	.size	_ZL21kernel_request_retval, 2
_ZL21kernel_request_retval:
	.zero	2
	.section	.bss._ZL26kernel_request_create_args,"aw",@nobits
	.type	_ZL26kernel_request_create_args, @object
	.size	_ZL26kernel_request_create_args, 11
_ZL26kernel_request_create_args:
	.zero	11
	.section	.bss._ZL14kernel_request,"aw",@nobits
	.type	_ZL14kernel_request, @object
	.size	_ZL14kernel_request, 1
_ZL14kernel_request:
	.zero	1
	.section	.bss._ZL9task_desc,"aw",@nobits
	.type	_ZL9task_desc, @object
	.size	_ZL9task_desc, 2448
_ZL9task_desc:
	.zero	2448
	.section	.bss._ZL9kernel_sp,"aw",@nobits
	.type	_ZL9kernel_sp, @object
	.size	_ZL9kernel_sp, 2
_ZL9kernel_sp:
	.zero	2
	.section	.bss._ZL18next_task_periodic,"aw",@nobits
	.type	_ZL18next_task_periodic, @object
	.size	_ZL18next_task_periodic, 2
_ZL18next_task_periodic:
	.zero	2
	.section	.bss._ZL8cur_task,"aw",@nobits
	.type	_ZL8cur_task, @object
	.size	_ZL8cur_task, 2
_ZL8cur_task:
	.zero	2
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././os.h"
	.file 5 ".././kernel.h"
	.file 6 ".././error_code.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe5e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF119
	.byte	0x4
	.long	.LASF120
	.long	.LASF121
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x3
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
	.uleb128 0x2
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xe0
	.long	0xa3
	.uleb128 0x5
	.long	.LASF122
	.byte	0x1
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x2c
	.long	0xb4
	.uleb128 0x6
	.byte	0x2
	.long	0xba
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x32
	.long	.LASF19
	.long	0xe0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 0
	.uleb128 0x9
	.long	.LASF15
	.sleb128 1
	.uleb128 0x9
	.long	.LASF16
	.sleb128 2
	.uleb128 0x9
	.long	.LASF17
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x38
	.long	0xbb
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x3e
	.long	.LASF20
	.long	0x11c
	.uleb128 0x9
	.long	.LASF21
	.sleb128 0
	.uleb128 0x9
	.long	.LASF22
	.sleb128 1
	.uleb128 0x9
	.long	.LASF23
	.sleb128 2
	.uleb128 0x9
	.long	.LASF24
	.sleb128 3
	.uleb128 0x9
	.long	.LASF25
	.sleb128 4
	.uleb128 0x9
	.long	.LASF26
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.long	0xeb
	.uleb128 0xa
	.byte	0xb
	.byte	0x5
	.byte	0x4d
	.long	.LASF39
	.long	0x186
	.uleb128 0xb
	.string	"f"
	.byte	0x5
	.byte	0x4f
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"arg"
	.byte	0x5
	.byte	0x51
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x53
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x57
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x58
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x59
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x5
	.byte	0x5b
	.long	0x127
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0x5e
	.long	0x19c
	.uleb128 0xd
	.long	.LASF123
	.word	0x110
	.byte	0x5
	.byte	0x62
	.long	0x23e
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x65
	.long	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"sp"
	.byte	0x5
	.byte	0x67
	.long	0x255
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x69
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x6a
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x6b
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x6e
	.long	0xe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"arg"
	.byte	0x5
	.byte	0x70
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x109
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x72
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10b
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x74
	.long	0x260
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x76
	.long	0x260
	.byte	0x3
	.byte	0x23
	.uleb128 0x10e
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x24e
	.uleb128 0xf
	.long	0x24e
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF38
	.uleb128 0x10
	.long	0x25a
	.uleb128 0x6
	.byte	0x2
	.long	0x3b
	.uleb128 0x6
	.byte	0x2
	.long	0x191
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x7a
	.long	.LASF40
	.long	0x28f
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x7b
	.long	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0x7c
	.long	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7e
	.long	0x266
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x84
	.long	.LASF44
	.long	0x2c3
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x86
	.long	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0x88
	.long	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x5
	.byte	0x8a
	.long	0x29a
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.long	0x319
	.uleb128 0x9
	.long	.LASF46
	.sleb128 0
	.uleb128 0x9
	.long	.LASF47
	.sleb128 1
	.uleb128 0x9
	.long	.LASF48
	.sleb128 2
	.uleb128 0x9
	.long	.LASF49
	.sleb128 3
	.uleb128 0x9
	.long	.LASF50
	.sleb128 4
	.uleb128 0x9
	.long	.LASF51
	.sleb128 5
	.uleb128 0x9
	.long	.LASF52
	.sleb128 6
	.uleb128 0x9
	.long	.LASF53
	.sleb128 7
	.uleb128 0x9
	.long	.LASF54
	.sleb128 8
	.uleb128 0x9
	.long	.LASF55
	.sleb128 9
	.uleb128 0x9
	.long	.LASF56
	.sleb128 10
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.word	0x301
	.long	0x260
	.byte	0x1
	.long	0x351
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.word	0x301
	.long	0x351
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.word	0x301
	.long	0x260
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.word	0x307
	.long	0x260
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x28f
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.word	0x34c
	.long	0x260
	.byte	0x1
	.long	0x383
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.word	0x34c
	.long	0x383
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.word	0x34e
	.long	0x260
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x2c3
	.uleb128 0x16
	.long	.LASF68
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x3c8
	.uleb128 0x17
	.long	.LASF64
	.byte	0x2
	.byte	0x8e
	.long	0x3c8
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF65
	.byte	0x2
	.byte	0x90
	.long	0x3c8
	.uleb128 0x18
	.long	.LASF66
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x19
	.byte	0x1
	.long	.LASF124
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x1a
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF67
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.word	0x418
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.word	0x316
	.byte	0x1
	.long	0x3fe
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.word	0x316
	.long	0x351
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.word	0x316
	.long	0x260
	.byte	0
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x1
	.word	0x2e0
	.byte	0x1
	.long	0x432
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.word	0x2e0
	.long	0x351
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.word	0x2e0
	.long	0x260
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.word	0x2f1
	.long	0x260
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x1
	.byte	0x7a
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF74
	.byte	0x1
	.word	0x1ab
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF75
	.byte	0x1
	.word	0x1d8
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF125
	.byte	0x1
	.word	0x333
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4ad
	.uleb128 0x20
	.long	.LASF61
	.byte	0x1
	.word	0x333
	.long	0x383
	.long	.LLST0
	.uleb128 0x21
	.long	.LASF70
	.byte	0x1
	.word	0x333
	.long	0x260
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.word	0x52c
	.long	.LFB31
	.long	.LFE31
	.long	.LLST1
	.byte	0x1
	.long	0x4eb
	.uleb128 0x23
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.word	0x52e
	.long	0x3b
	.long	.LLST2
	.uleb128 0x25
	.long	.LVL3
	.long	0x45b
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x357
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x524
	.uleb128 0x27
	.long	0x368
	.byte	0x6
	.byte	0xfa
	.long	0x368
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x28
	.long	0x375
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF126
	.byte	0x1
	.word	0x24f
	.long	0x58
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5d0
	.uleb128 0x23
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.word	0x252
	.long	0x260
	.long	.LLST3
	.uleb128 0x24
	.long	.LASF77
	.byte	0x1
	.word	0x253
	.long	0x25a
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF78
	.byte	0x1
	.word	0x28a
	.long	0x25a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2c
	.long	0x3d8
	.long	.LBB35
	.long	.LBE35
	.byte	0x1
	.word	0x2b8
	.long	0x59e
	.uleb128 0x2d
	.long	0x3e5
	.uleb128 0x2e
	.long	0x3f1
	.long	.LLST5
	.byte	0
	.uleb128 0x2f
	.long	.LVL7
	.long	0x4eb
	.long	0x5c5
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x31
	.long	0x368
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.byte	0
	.uleb128 0x25
	.long	.LVL13
	.long	0x470
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF127
	.byte	0x1
	.word	0x207
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.word	0x425
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7c0
	.uleb128 0x23
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x427
	.long	0x3b
	.long	.LLST6
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.word	0x427
	.long	0x3b
	.long	.LLST7
	.uleb128 0x24
	.long	.LASF81
	.byte	0x1
	.word	0x428
	.long	0x3b
	.long	.LLST8
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.word	0x428
	.long	0x3b
	.long	.LLST9
	.uleb128 0x2c
	.long	0x3cf
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x441
	.long	0x692
	.uleb128 0x34
	.long	0x389
	.long	.LBB39
	.long	.LBE39
	.byte	0x1
	.word	0x41e
	.uleb128 0x35
	.long	0x395
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x36
	.long	0x3a1
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3ac
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x3cf
	.long	.LBB41
	.long	.LBE41
	.byte	0x1
	.word	0x448
	.long	0x6df
	.uleb128 0x34
	.long	0x389
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x41e
	.uleb128 0x35
	.long	0x395
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x36
	.long	0x3a1
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3ac
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x3cf
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x452
	.long	0x72a
	.uleb128 0x34
	.long	0x389
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x41e
	.uleb128 0x2e
	.long	0x395
	.long	.LLST10
	.uleb128 0x23
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x38
	.long	0x3a1
	.long	.LLST11
	.uleb128 0x38
	.long	0x3ac
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x3cf
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x459
	.long	0x775
	.uleb128 0x34
	.long	0x389
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.word	0x41e
	.uleb128 0x2e
	.long	0x395
	.long	.LLST13
	.uleb128 0x23
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x38
	.long	0x3a1
	.long	.LLST14
	.uleb128 0x38
	.long	0x3ac
	.long	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x3cf
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.word	0x45f
	.uleb128 0x34
	.long	0x389
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x41e
	.uleb128 0x35
	.long	0x395
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x36
	.long	0x3a1
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3ac
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x3b7
	.byte	0
	.long	0x7d0
	.uleb128 0x1a
	.long	0x83
	.byte	0
	.uleb128 0x3a
	.long	.LASF84
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF85
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF86
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.word	0x35f
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF88
	.byte	0x1
	.word	0x2d2
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x3d4
	.long	.LASF128
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.byte	0x1
	.long	0x9b3
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x3d6
	.long	0x58
	.long	.LLST17
	.uleb128 0x2c
	.long	0x7d0
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.word	0x40f
	.long	0x97c
	.uleb128 0x3c
	.long	0x7d8
	.long	.LBB78
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x93
	.long	0x895
	.uleb128 0x3d
	.long	0x319
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.byte	0xb9
	.long	0x88b
	.uleb128 0x2d
	.long	0x32a
	.uleb128 0x2e
	.long	0x336
	.long	.LLST18
	.uleb128 0x23
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x38
	.long	0x343
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL51
	.long	0x4eb
	.byte	0
	.uleb128 0x3c
	.long	0x7e0
	.long	.LBB83
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x9a
	.long	0x972
	.uleb128 0x3c
	.long	0x7e8
	.long	.LBB85
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xdc
	.long	0x8df
	.uleb128 0x3e
	.long	.LVL53
	.long	0x4eb
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x31
	.long	0x368
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x7f1
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.word	0x107
	.long	0x933
	.uleb128 0x2c
	.long	0x3fe
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.word	0x2d8
	.long	0x929
	.uleb128 0x2d
	.long	0x40b
	.uleb128 0x2e
	.long	0x417
	.long	.LLST20
	.uleb128 0x23
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x38
	.long	0x424
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL60
	.long	0x470
	.byte	0
	.uleb128 0x2c
	.long	0x3d8
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.word	0x114
	.long	0x956
	.uleb128 0x2d
	.long	0x3e5
	.uleb128 0x2e
	.long	0x3f1
	.long	.LLST22
	.byte	0
	.uleb128 0x25
	.long	.LVL54
	.long	0x524
	.uleb128 0x25
	.long	.LVL63
	.long	0x470
	.uleb128 0x25
	.long	.LVL64
	.long	0x5e6
	.byte	0
	.uleb128 0x25
	.long	.LVL52
	.long	0x446
	.byte	0
	.uleb128 0x25
	.long	.LVL43
	.long	0x524
	.uleb128 0x25
	.long	.LVL44
	.long	0x524
	.uleb128 0x3e
	.long	.LVL45
	.long	0x4eb
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0x31
	.long	0x368
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.word	0x47e
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9f0
	.uleb128 0x3f
	.string	"s"
	.byte	0x1
	.word	0x47e
	.long	0x9f0
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3f
	.string	"v"
	.byte	0x1
	.word	0x47e
	.long	0x9f6
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x98
	.uleb128 0x6
	.byte	0x2
	.long	0x4d
	.uleb128 0x33
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.word	0x48b
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa39
	.uleb128 0x3f
	.string	"s"
	.byte	0x1
	.word	0x48b
	.long	0x9f0
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x3f
	.string	"v"
	.byte	0x1
	.word	0x48b
	.long	0x4d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.word	0x49d
	.long	0x29
	.long	.LFB26
	.long	.LFE26
	.long	.LLST23
	.byte	0x1
	.long	0xaa7
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.word	0x49d
	.long	0xb4
	.long	.LLST24
	.uleb128 0x41
	.string	"arg"
	.byte	0x1
	.word	0x49d
	.long	0x4d
	.long	.LLST25
	.uleb128 0x23
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2b
	.long	.LASF93
	.byte	0x1
	.word	0x49f
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.word	0x4a0
	.long	0x3b
	.long	.LLST26
	.uleb128 0x25
	.long	.LVL70
	.long	0x45b
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF94
	.byte	0x1
	.word	0x4b3
	.long	0x29
	.long	.LFB27
	.long	.LFE27
	.long	.LLST27
	.byte	0x1
	.long	0xb15
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.word	0x4b3
	.long	0xb4
	.long	.LLST28
	.uleb128 0x41
	.string	"arg"
	.byte	0x1
	.word	0x4b3
	.long	0x4d
	.long	.LLST29
	.uleb128 0x23
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2b
	.long	.LASF93
	.byte	0x1
	.word	0x4b5
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.word	0x4b6
	.long	0x3b
	.long	.LLST30
	.uleb128 0x25
	.long	.LVL76
	.long	0x45b
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x4d8
	.long	0x29
	.long	.LFB28
	.long	.LFE28
	.long	.LLST31
	.byte	0x1
	.long	0xbb3
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.word	0x4d8
	.long	0xb4
	.long	.LLST32
	.uleb128 0x41
	.string	"arg"
	.byte	0x1
	.word	0x4d8
	.long	0x4d
	.long	.LLST33
	.uleb128 0x20
	.long	.LASF29
	.byte	0x1
	.word	0x4d8
	.long	0x5f
	.long	.LLST34
	.uleb128 0x20
	.long	.LASF30
	.byte	0x1
	.word	0x4d8
	.long	0x5f
	.long	.LLST35
	.uleb128 0x20
	.long	.LASF31
	.byte	0x1
	.word	0x4d8
	.long	0x5f
	.long	.LLST36
	.uleb128 0x23
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2b
	.long	.LASF93
	.byte	0x1
	.word	0x4da
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.word	0x4db
	.long	0x3b
	.long	.LLST37
	.uleb128 0x25
	.long	.LVL82
	.long	0x45b
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.word	0x501
	.long	0x58
	.long	.LFB29
	.long	.LFE29
	.long	.LLST38
	.byte	0x1
	.long	0xc46
	.uleb128 0x41
	.string	"f"
	.byte	0x1
	.word	0x501
	.long	0xb4
	.long	.LLST39
	.uleb128 0x41
	.string	"arg"
	.byte	0x1
	.word	0x501
	.long	0x58
	.long	.LLST40
	.uleb128 0x20
	.long	.LASF28
	.byte	0x1
	.word	0x501
	.long	0x6a
	.long	.LLST41
	.uleb128 0x20
	.long	.LASF97
	.byte	0x1
	.word	0x501
	.long	0x6a
	.long	.LLST42
	.uleb128 0x23
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2b
	.long	.LASF93
	.byte	0x1
	.word	0x503
	.long	0x58
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.word	0x504
	.long	0x3b
	.long	.LLST43
	.uleb128 0x25
	.long	.LVL89
	.long	0x45b
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.word	0x51b
	.long	.LFB30
	.long	.LFE30
	.long	.LLST44
	.byte	0x1
	.long	0xc83
	.uleb128 0x23
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2b
	.long	.LASF76
	.byte	0x1
	.word	0x51d
	.long	0xc83
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x25
	.long	.LVL92
	.long	0x45b
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x3b
	.uleb128 0x42
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.word	0x53c
	.long	0x58
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xcd2
	.uleb128 0x23
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x43
	.string	"arg"
	.byte	0x1
	.word	0x53e
	.long	0x58
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2b
	.long	.LASF76
	.byte	0x1
	.word	0x53f
	.long	0x3b
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x54e
	.long	0x58
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xcfa
	.uleb128 0x25
	.long	.LVL95
	.long	0x7fa
	.byte	0
	.uleb128 0x44
	.long	.LASF101
	.byte	0x1
	.byte	0x24
	.long	0x260
	.byte	0x5
	.byte	0x3
	.long	_ZL8cur_task
	.uleb128 0x44
	.long	.LASF102
	.byte	0x1
	.byte	0x27
	.long	0x260
	.byte	0x5
	.byte	0x3
	.long	_ZL18next_task_periodic
	.uleb128 0x44
	.long	.LASF103
	.byte	0x1
	.byte	0x2a
	.long	0xd2d
	.byte	0x5
	.byte	0x3
	.long	_ZL9kernel_sp
	.uleb128 0x10
	.long	0x5f
	.uleb128 0xe
	.long	0x19c
	.long	0xd42
	.uleb128 0xf
	.long	0x24e
	.byte	0x8
	.byte	0
	.uleb128 0x44
	.long	.LASF104
	.byte	0x1
	.byte	0x2d
	.long	0xd32
	.byte	0x5
	.byte	0x3
	.long	_ZL9task_desc
	.uleb128 0x44
	.long	.LASF105
	.byte	0x1
	.byte	0x30
	.long	0xd65
	.byte	0x6
	.byte	0x3
	.long	_ZL9task_desc+2176
	.byte	0x9f
	.uleb128 0x45
	.long	0x260
	.uleb128 0x44
	.long	.LASF106
	.byte	0x1
	.byte	0x33
	.long	0xd7b
	.byte	0x5
	.byte	0x3
	.long	_ZL14kernel_request
	.uleb128 0x10
	.long	0x11c
	.uleb128 0x44
	.long	.LASF107
	.byte	0x1
	.byte	0x36
	.long	0xd91
	.byte	0x5
	.byte	0x3
	.long	_ZL26kernel_request_create_args
	.uleb128 0x10
	.long	0x186
	.uleb128 0x44
	.long	.LASF108
	.byte	0x1
	.byte	0x39
	.long	0xda7
	.byte	0x5
	.byte	0x3
	.long	_ZL21kernel_request_retval
	.uleb128 0x10
	.long	0x58
	.uleb128 0x44
	.long	.LASF109
	.byte	0x1
	.byte	0x3c
	.long	0x2c3
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x44
	.long	.LASF110
	.byte	0x1
	.byte	0x3f
	.long	0x2c3
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x44
	.long	.LASF111
	.byte	0x1
	.byte	0x42
	.long	0x28f
	.byte	0x5
	.byte	0x3
	.long	_ZL14periodic_queue
	.uleb128 0x44
	.long	.LASF112
	.byte	0x1
	.byte	0x45
	.long	0x2c3
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0x44
	.long	.LASF113
	.byte	0x1
	.byte	0x48
	.long	0xc83
	.byte	0x5
	.byte	0x3
	.long	_ZL15ticks_remaining
	.uleb128 0x44
	.long	.LASF114
	.byte	0x1
	.byte	0x49
	.long	0xc83
	.byte	0x5
	.byte	0x3
	.long	_ZL13ticks_counter
	.uleb128 0x44
	.long	.LASF115
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_ZL18slot_task_finished
	.uleb128 0x46
	.long	.LASF116
	.byte	0x1
	.byte	0x4e
	.long	0x6a
	.byte	0
	.uleb128 0xe
	.long	0x260
	.long	0xe3f
	.uleb128 0xf
	.long	0x24e
	.byte	0x8
	.byte	0
	.uleb128 0x44
	.long	.LASF117
	.byte	0x1
	.byte	0x51
	.long	0xe2f
	.byte	0x5
	.byte	0x3
	.long	_ZL16name_to_task_ptr
	.uleb128 0x44
	.long	.LASF118
	.byte	0x1
	.byte	0x57
	.long	0xc83
	.byte	0x5
	.byte	0x3
	.long	_ZL9error_msg
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0xa
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
	.uleb128 0x41
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
	.uleb128 0x43
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.long	.LFE18
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LFB31
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL4
	.word	0x1
	.byte	0x6c
	.long	.LVL4
	.long	.LFE31
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL13-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL13-1
	.word	0x4
	.byte	0x86
	.sleb128 255
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x8
	.byte	0x29
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.word	0x5
	.byte	0x3b
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x5
	.byte	0x3b
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL35
	.long	.LVL37
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39
	.word	0x5
	.byte	0x44
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.word	0x5
	.byte	0x45
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL40
	.long	.LFE23
	.word	0x5
	.byte	0x44
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL27
	.long	.LVL38
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LFE23
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL15
	.word	0x3
	.byte	0x8
	.byte	0x60
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x3
	.byte	0x9
	.byte	0x90
	.byte	0x9f
	.long	.LVL18
	.long	.LFE23
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST10:
	.long	.LVL29
	.long	.LVL37
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41c80000
	.long	0
	.long	0
.LLST11:
	.long	.LVL29
	.long	.LVL37
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48c35000
	.long	0
	.long	0
.LLST12:
	.long	.LVL29
	.long	.LVL37
	.word	0x6
	.byte	0xc
	.long	0x61a80
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL33
	.long	.LVL37
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41c80000
	.long	0
	.long	0
.LLST14:
	.long	.LVL33
	.long	.LVL37
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48c35000
	.long	0
	.long	0
.LLST15:
	.long	.LVL33
	.long	.LVL37
	.word	0x6
	.byte	0xc
	.long	0x61a80
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LFB21
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LFE21
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST17:
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL46
	.long	.LVL50
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL47
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL55
	.long	.LVL59
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL61
	.long	.LVL62
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LFB26
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST24:
	.long	.LVL67
	.long	.LVL69
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL69
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL67
	.long	.LVL70-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70-1
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL68
	.long	.LVL72
	.word	0x1
	.byte	0x6c
	.long	.LVL72
	.long	.LFE26
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST27:
	.long	.LFB27
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST28:
	.long	.LVL73
	.long	.LVL75
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL73
	.long	.LVL76-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76-1
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL74
	.long	.LVL78
	.word	0x1
	.byte	0x6c
	.long	.LVL78
	.long	.LFE27
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST31:
	.long	.LFB28
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LFE28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST32:
	.long	.LVL79
	.long	.LVL81
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL79
	.long	.LVL82-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82-1
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL79
	.long	.LVL82-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82-1
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL79
	.long	.LVL82-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82-1
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL79
	.long	.LVL85
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL85
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL80
	.long	.LVL84
	.word	0x1
	.byte	0x6c
	.long	.LVL84
	.long	.LFE28
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST38:
	.long	.LFB29
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST39:
	.long	.LVL86
	.long	.LVL88
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL86
	.long	.LVL89-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89-1
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL86
	.long	.LVL89-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89-1
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL86
	.long	.LVL89-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89-1
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL87
	.long	.LVL91
	.word	0x1
	.byte	0x6c
	.long	.LVL91
	.long	.LFE29
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST44:
	.long	.LFB30
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
	.long	.LFE30
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xac
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB78
	.long	.LBE78
	.long	.LBB96
	.long	.LBE96
	.long	0
	.long	0
	.long	.LBB83
	.long	.LBE83
	.long	.LBB97
	.long	.LBE97
	.long	0
	.long	0
	.long	.LBB85
	.long	.LBE85
	.long	.LBB88
	.long	.LBE88
	.long	0
	.long	0
	.long	.LFB6
	.long	.LFE6
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB18
	.long	.LFE18
	.long	.LFB31
	.long	.LFE31
	.long	.LFB35
	.long	.LFE35
	.long	.LFB13
	.long	.LFE13
	.long	.LFB12
	.long	.LFE12
	.long	.LFB23
	.long	.LFE23
	.long	.LFB21
	.long	.LFE21
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"Task_Next"
.LASF58:
	.string	"task_to_find_before"
.LASF88:
	.string	"kernel_terminate_task"
.LASF53:
	.string	"ERR_RUN_2_TOO_MANY_TASKS"
.LASF84:
	.string	"kernel_main_loop"
.LASF13:
	.string	"voidfuncvoid_ptr"
.LASF120:
	.string	".././os.cpp"
.LASF101:
	.string	"cur_task"
.LASF99:
	.string	"Task_GetArg"
.LASF35:
	.string	"state"
.LASF32:
	.string	"create_args_t"
.LASF72:
	.string	"task_to_delete"
.LASF65:
	.string	"__tmp"
.LASF43:
	.string	"linkedlist_t"
.LASF38:
	.string	"sizetype"
.LASF39:
	.string	"13create_args_t"
.LASF40:
	.string	"12linkedlist_t"
.LASF100:
	.string	"main"
.LASF0:
	.string	"int8_t"
.LASF109:
	.string	"dead_pool_queue"
.LASF71:
	.string	"delete_task"
.LASF125:
	.string	"enqueue"
.LASF34:
	.string	"stack"
.LASF46:
	.string	"ERR_1_PPP_NAME_OUT_OF_RANGE"
.LASF64:
	.string	"__ms"
.LASF47:
	.string	"ERR_2_CREATE_NAME_OUT_OF_RANGE"
.LASF93:
	.string	"retval"
.LASF111:
	.string	"periodic_queue"
.LASF49:
	.string	"ERR_4_PERIODIC_NAME_IN_USE"
.LASF41:
	.string	"head"
.LASF1:
	.string	"uint8_t"
.LASF128:
	.string	"_Z7OS_Initv"
.LASF54:
	.string	"ERR_RUN_3_PERIODIC_TOOK_TOO_LONG"
.LASF102:
	.string	"next_task_periodic"
.LASF115:
	.string	"slot_task_finished"
.LASF56:
	.string	"ERR_RUN_5_RTOS_INTERNAL_ERROR"
.LASF23:
	.string	"TASK_CREATE"
.LASF17:
	.string	"WAITING"
.LASF77:
	.string	"stack_bottom"
.LASF74:
	.string	"exit_kernel"
.LASF87:
	.string	"kernel_update_ticker"
.LASF89:
	.string	"Service_Subscribe"
.LASF103:
	.string	"kernel_sp"
.LASF62:
	.string	"temp"
.LASF10:
	.string	"long long int"
.LASF91:
	.string	"OS_Init"
.LASF85:
	.string	"kernel_dispatch"
.LASF12:
	.string	"SERVICE"
.LASF73:
	.string	"idle"
.LASF25:
	.string	"TASK_NEXT"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"12task_state_t"
.LASF29:
	.string	"period"
.LASF106:
	.string	"kernel_request"
.LASF112:
	.string	"system_queue"
.LASF107:
	.string	"kernel_request_create_args"
.LASF48:
	.string	"ERR_3_PERIODIC_NAMED_IDLE"
.LASF105:
	.string	"idle_task"
.LASF63:
	.string	"task_ptr"
.LASF22:
	.string	"TIMER_EXPIRED"
.LASF42:
	.string	"tail"
.LASF123:
	.string	"td_struct"
.LASF124:
	.string	"__builtin_avr_delay_cycles"
.LASF3:
	.string	"unsigned char"
.LASF90:
	.string	"Service_Publish"
.LASF86:
	.string	"kernel_handle_request"
.LASF110:
	.string	"rr_queue"
.LASF69:
	.string	"addlist"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF117:
	.string	"name_to_task_ptr"
.LASF5:
	.string	"uint16_t"
.LASF108:
	.string	"kernel_request_retval"
.LASF68:
	.string	"_delay_ms"
.LASF31:
	.string	"start"
.LASF118:
	.string	"error_msg"
.LASF36:
	.string	"next"
.LASF122:
	.string	"service"
.LASF15:
	.string	"RUNNING"
.LASF24:
	.string	"TASK_TERMINATE"
.LASF116:
	.string	"slot_name_index"
.LASF16:
	.string	"READY"
.LASF95:
	.string	"Task_Create_Periodic"
.LASF4:
	.string	"int16_t"
.LASF114:
	.string	"ticks_counter"
.LASF76:
	.string	"sreg"
.LASF59:
	.string	"get_next"
.LASF44:
	.string	"7queue_t"
.LASF70:
	.string	"task_to_add"
.LASF33:
	.string	"task_descriptor_t"
.LASF126:
	.string	"kernel_create_task"
.LASF9:
	.string	"long unsigned int"
.LASF67:
	.string	"double"
.LASF51:
	.string	"ERR_6_TIME_INTERVAL_IN_PPP_0"
.LASF96:
	.string	"Task_Create"
.LASF94:
	.string	"Task_Create_RR"
.LASF79:
	.string	"Task_Terminate"
.LASF26:
	.string	"TASK_GET_ARG"
.LASF81:
	.string	"flashes"
.LASF28:
	.string	"level"
.LASF21:
	.string	"NONE"
.LASF55:
	.string	"ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST"
.LASF50:
	.string	"ERR_5_NAME_NOT_IN_PPP"
.LASF27:
	.string	"kernel_request_t"
.LASF78:
	.string	"stack_top"
.LASF97:
	.string	"name"
.LASF18:
	.string	"task_state_t"
.LASF66:
	.string	"__ticks_dc"
.LASF83:
	.string	"_delay_25ms"
.LASF61:
	.string	"queue_ptr"
.LASF45:
	.string	"queue_t"
.LASF92:
	.string	"Task_Create_System"
.LASF75:
	.string	"enter_kernel"
.LASF57:
	.string	"linkedlist_ptr"
.LASF104:
	.string	"task_desc"
.LASF113:
	.string	"ticks_remaining"
.LASF127:
	.string	"__vector_17"
.LASF14:
	.string	"DEAD"
.LASF37:
	.string	"prev"
.LASF121:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF80:
	.string	"OS_Abort"
.LASF60:
	.string	"dequeue"
.LASF30:
	.string	"wcet"
.LASF52:
	.string	"ERR_RUN_1_USER_CALLED_OS_ABORT"
.LASF82:
	.string	"mask"
.LASF20:
	.string	"16kernel_request_t"
.LASF119:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
