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
	.loc 1 112 0
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
	.loc 1 413 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 418 0
/* #APP */
 ;  418 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  418 ".././os.cpp" 1
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
	.loc 1 423 0
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts _ZL9kernel_sp+1,r25
	sts _ZL9kernel_sp,r24
	.loc 1 428 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	inc r31
	ld r24,Z
	ldd r25,Z+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 433 0
/* #APP */
 ;  433 ".././os.cpp" 1
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
 ;  433 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 444 0
 ;  444 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 445 0
/* #NOAPP */
	.cfi_endproc
.LFE10:
	.size	_ZL11exit_kernelv, .-_ZL11exit_kernelv
	.section	.text._ZL12enter_kernelv,"ax",@progbits
	.type	_ZL12enter_kernelv, @function
_ZL12enter_kernelv:
.LFB11:
	.loc 1 458 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 463 0
/* #APP */
 ;  463 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  463 ".././os.cpp" 1
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
	.loc 1 468 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 473 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 478 0
/* #APP */
 ;  478 ".././os.cpp" 1
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
 ;  478 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 486 0
 ;  486 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 487 0
/* #NOAPP */
	.cfi_endproc
.LFE11:
	.size	_ZL12enter_kernelv, .-_ZL12enter_kernelv
	.section	.text._ZL7enqueueP7queue_tP9td_struct,"ax",@progbits
	.type	_ZL7enqueueP7queue_tP9td_struct, @function
_ZL7enqueueP7queue_tP9td_struct:
.LFB15:
	.loc 1 728 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 729 0
	movw r26,r22
	subi r26,-7
	sbci r27,-2
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 731 0
	ld r24,Z
	ldd r25,Z+1
.LVL1:
	or r24,r25
	brne .L6
	.loc 1 734 0
	std Z+1,r23
	st Z,r22
	rjmp .L8
.L6:
	.loc 1 740 0
	ldd r26,Z+2
	ldd r27,Z+3
	subi r26,-7
	sbci r27,-2
	st X+,r22
	st X,r23
.L8:
	.loc 1 741 0
	std Z+3,r23
	std Z+2,r22
	ret
	.cfi_endproc
.LFE15:
	.size	_ZL7enqueueP7queue_tP9td_struct, .-_ZL7enqueueP7queue_tP9td_struct
	.section	.text.Task_Terminate,"ax",@progbits
.global	Task_Terminate
	.type	Task_Terminate, @function
Task_Terminate:
.LFB24:
	.loc 1 1060 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB27:
	.loc 1 1063 0
	in r28,__SREG__
.LVL2:
	.loc 1 1064 0
/* #APP */
 ;  1064 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1066 0
/* #NOAPP */
	ldi r24,lo8(3)
	sts _ZL14kernel_request,r24
	.loc 1 1067 0
	call _ZL12enter_kernelv
.LVL3:
	.loc 1 1069 0
	out __SREG__,r28
/* epilogue start */
.LBE27:
	.loc 1 1070 0
	pop r28
.LVL4:
	ret
	.cfi_endproc
.LFE24:
	.size	Task_Terminate, .-Task_Terminate
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
.LFB12:
	.loc 1 505 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 518 0
/* #APP */
 ;  518 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
	.loc 1 520 0
 ;  520 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 522 0
 ;  522 ".././os.cpp" 1
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
	.loc 1 524 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 531 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 536 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 541 0
	ldi r30,lo8(-120)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	subi r24,-16
	sbci r25,-40
	std Z+1,r25
	st Z,r24
	.loc 1 546 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 551 0
/* #APP */
 ;  551 ".././os.cpp" 1
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
 ;  551 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 561 0
 ;  561 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 562 0
/* #NOAPP */
	.cfi_endproc
.LFE12:
	.size	__vector_17, .-__vector_17
	.section	.text.OS_Abort,"ax",@progbits
.global	OS_Abort
	.type	OS_Abort, @function
OS_Abort:
.LFB21:
	.loc 1 937 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB28:
	.loc 1 941 0
/* #APP */
 ;  941 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 944 0
/* #NOAPP */
	ldi r24,lo8(-16)
	out 0xa,r24
	.loc 1 946 0
	lds r24,_ZL9error_msg
	cpi r24,lo8(6)
	brsh .L13
	.loc 1 948 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(1))
.LVL5:
	.loc 1 949 0
	ldi r19,lo8(96)
	rjmp .L14
.LVL6:
.L13:
	.loc 1 953 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL7:
	.loc 1 954 0
	ldi r19,lo8(-112)
.LVL8:
.L14:
	.loc 1 960 0
	ldi r20,lo8(-16)
.L26:
.LVL9:
	out 0xb,r20
.LVL10:
	ldi r25,lo8(100)
.LVL11:
.L16:
.LBB29:
.LBB30:
.LBB31:
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
.LVL12:
	subi r25,lo8(-(-1))
.LVL13:
.LBE31:
.LBE30:
.LBE29:
	.loc 1 962 0
	brne .L16
	.loc 1 967 0
	out 0xb,__zero_reg__
.LVL14:
	ldi r25,lo8(40)
.LVL15:
.L19:
.LBB32:
.LBB33:
.LBB34:
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
.LVL16:
	subi r25,lo8(-(-1))
.LVL17:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 969 0
	brne .L19
.LVL18:
.L18:
	.loc 1 975 0 discriminator 1
	cp r25,r24
	breq .L28
	.loc 1 977 0
	out 0xb,r19
.LVL19:
	ldi r18,lo8(10)
.LVL20:
.L21:
.LBB35:
.LBB36:
.LBB37:
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
.LVL21:
	subi r18,lo8(-(-1))
.LVL22:
.LBE37:
.LBE36:
.LBE35:
	.loc 1 979 0
	brne .L21
	.loc 1 984 0
	out 0xb,__zero_reg__
.LVL23:
	ldi r18,lo8(10)
.LVL24:
.L23:
.LBB38:
.LBB39:
.LBB40:
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
.LVL25:
	subi r18,lo8(-(-1))
.LVL26:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 986 0
	brne .L23
	.loc 1 975 0
	subi r25,lo8(-(1))
.LVL27:
	rjmp .L18
.LVL28:
.L28:
	ldi r25,lo8(20)
.LVL29:
.L27:
.LBB41:
.LBB42:
.LBB43:
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
.LVL30:
	subi r25,lo8(-(-1))
.LVL31:
.LBE43:
.LBE42:
.LBE41:
	.loc 1 992 0
	brne .L27
	rjmp .L26
.LBE28:
	.cfi_endproc
.LFE21:
	.size	OS_Abort, .-OS_Abort
	.section	.text._ZL18kernel_create_taskv,"ax",@progbits
	.type	_ZL18kernel_create_taskv, @function
_ZL18kernel_create_taskv:
.LFB13:
	.loc 1 577 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB48:
	.loc 1 583 0
	lds r22,_ZL15dead_pool_queue
	lds r23,_ZL15dead_pool_queue+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L44
	.loc 1 589 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	brne .L31
	.loc 1 590 0 discriminator 1
	lds r24,_ZL26kernel_request_create_args+5
	.loc 1 589 0 discriminator 1
	tst r24
	breq .L32
	.loc 1 591 0
	lds r24,_ZL26kernel_request_create_args+5
	.loc 1 590 0
	cpi r24,lo8(9)
	brsh .L32
	rjmp .L31
.L44:
	.loc 1 586 0
	ldi r24,0
	ldi r25,0
	ret
.L32:
	.loc 1 594 0
	ldi r24,lo8(1)
	rjmp .L53
.L31:
	.loc 1 598 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	brne .L34
	.loc 1 599 0 discriminator 1
	lds r30,_ZL26kernel_request_create_args+5
	ldi r31,0
	subi r30,lo8(-(_ZL11name_in_PPP))
	sbci r31,hi8(-(_ZL11name_in_PPP))
	.loc 1 598 0 discriminator 1
	ld r24,Z
	tst r24
	breq .L33
.L34:
	.loc 1 605 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	brne .L36
	.loc 1 606 0 discriminator 1
	lds r30,_ZL26kernel_request_create_args+5
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_ZL16name_to_task_ptr))
	sbci r31,hi8(-(_ZL16name_to_task_ptr))
	.loc 1 605 0 discriminator 1
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	breq .L36
	.loc 1 609 0
	ldi r24,lo8(3)
	rjmp .L53
.L33:
	.loc 1 601 0
	ldi r24,lo8(4)
.L53:
	.loc 1 609 0
	sts _ZL9error_msg,r24
	.loc 1 610 0
	call OS_Abort
.LVL32:
.L36:
	.loc 1 614 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L46
.LVL33:
.LBB49:
.LBB50:
	.loc 1 758 0
	movw r30,r22
	subi r30,-7
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
	sts _ZL15dead_pool_queue+1,r25
	sts _ZL15dead_pool_queue,r24
	.loc 1 759 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L42
.LVL34:
.L46:
.LBE50:
.LBE49:
	.loc 1 616 0
	ldi r22,lo8(_ZL9task_desc+2120)
	ldi r23,hi8(_ZL9task_desc+2120)
.L42:
.LVL35:
	.loc 1 642 0
	movw r30,r22
	subi r30,36
	sbci r31,-1
	st Z,__zero_reg__
	.loc 1 644 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 653 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 654 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r25
	.loc 1 655 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r24
	.loc 1 658 0
	ldi r24,lo8(gs(Task_Terminate))
	ldi r25,hi8(gs(Task_Terminate))
	adiw r30,3
	st Z,r24
	.loc 1 669 0
	movw r24,r22
	subi r24,38
	sbci r25,-1
	movw r26,r22
	inc r27
	adiw r26,1
	st X,r25
	st -X,r24
	.loc 1 671 0
	ldi r24,lo8(2)
	adiw r26,3
	st X,r24
	.loc 1 672 0
	lds r24,_ZL26kernel_request_create_args+2
	lds r25,_ZL26kernel_request_create_args+2+1
	adiw r26,1
	adiw r26,1
	st X,r25
	st -X,r24
	.loc 1 673 0
	lds r24,_ZL26kernel_request_create_args+4
	adiw r26,2
	st X,r24
	.loc 1 674 0
	lds r24,_ZL26kernel_request_create_args+5
	st Z,r24
	.loc 1 676 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	breq .L37
	cpi r24,lo8(3)
	breq .L38
	cpi r24,lo8(1)
	brne .L50
	.loc 1 690 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L54
.L37:
	.loc 1 680 0
	lds r30,_ZL26kernel_request_create_args+5
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_ZL16name_to_task_ptr))
	sbci r31,hi8(-(_ZL16name_to_task_ptr))
	std Z+1,r23
	st Z,r22
	rjmp .L50
.L38:
	.loc 1 685 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
.L54:
	.loc 1 690 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL36:
.L50:
	.loc 1 699 0
	ldi r24,lo8(1)
	ldi r25,0
	ret
.LBE48:
	.cfi_endproc
.LFE13:
	.size	_ZL18kernel_create_taskv, .-_ZL18kernel_create_taskv
	.section	.text._Z7OS_Initv,"ax",@progbits
.global	_Z7OS_Initv
	.type	_Z7OS_Initv, @function
_Z7OS_Initv:
.LFB19:
	.loc 1 857 0
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
.LBB74:
	.loc 1 862 0
	lds r24,129
	ori r24,lo8(2)
	sts 129,r24
.LVL37:
.LBB75:
.LBB76:
	.loc 1 818 0
	lds r16,PT
	lds r17,PT+1
	movw r18,r16
	lsl r18
	rol r19
	ldi r20,0
	.loc 1 825 0
	ldi r21,lo8(1)
.LVL38:
.L56:
	.loc 1 818 0
	mov r24,r20
	ldi r25,0
	cp r24,r18
	cpc r25,r19
	brsh .L134
	.loc 1 820 0
	movw r30,r24
	subi r30,lo8(-(PPP))
	sbci r31,hi8(-(PPP))
	ld r30,Z
.LVL39:
	.loc 1 823 0
	cpi r30,lo8(9)
	brsh .L57
	.loc 1 825 0
	ldi r31,0
	subi r30,lo8(-(_ZL11name_in_PPP))
	sbci r31,hi8(-(_ZL11name_in_PPP))
.LVL40:
	st Z,r21
	.loc 1 818 0
	subi r20,lo8(-(2))
.LVL41:
	rjmp .L56
.LVL42:
.L57:
	.loc 1 829 0
	sts _ZL9error_msg,__zero_reg__
	rjmp .L131
.LVL43:
.L134:
	ldi r30,lo8(_ZL9task_desc+259)
	ldi r31,hi8(_ZL9task_desc+259)
	ldi r26,lo8(_ZL16name_to_task_ptr)
	ldi r27,hi8(_ZL16name_to_task_ptr)
.L60:
.LBE76:
.LBE75:
	.loc 1 877 0 discriminator 2
	st Z,__zero_reg__
	.loc 1 878 0 discriminator 2
	st X+,__zero_reg__
	st X+,__zero_reg__
	movw r24,r30
	adiw r24,6
	.loc 1 879 0 discriminator 2
	std Z+5,r25
	std Z+4,r24
.LVL44:
	subi r30,-9
	sbci r31,-2
	.loc 1 875 0 discriminator 2
	ldi r18,hi8(_ZL9task_desc+2114)
	cpi r30,lo8(_ZL9task_desc+2114)
	cpc r31,r18
	brne .L60
	.loc 1 881 0
	sts _ZL9task_desc+2118+1,__zero_reg__
	sts _ZL9task_desc+2118,__zero_reg__
	.loc 1 882 0
	ldi r30,lo8(_ZL9task_desc)
	mov r14,r30
	ldi r30,hi8(_ZL9task_desc)
	mov r15,r30
	sts _ZL15dead_pool_queue+1,r15
	sts _ZL15dead_pool_queue,r14
	.loc 1 883 0
	ldi r24,lo8(_ZL9task_desc+1855)
	ldi r25,hi8(_ZL9task_desc+1855)
	sts _ZL15dead_pool_queue+2+1,r25
	sts _ZL15dead_pool_queue+2,r24
	.loc 1 886 0
	ldi r24,lo8(gs(_ZL4idlev))
	ldi r25,hi8(gs(_ZL4idlev))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 887 0
	sts _ZL26kernel_request_create_args+4,__zero_reg__
	.loc 1 888 0
	call _ZL18kernel_create_taskv
.LVL45:
	.loc 1 891 0
	ldi r24,lo8(gs(_Z6r_mainv))
	ldi r25,hi8(gs(_Z6r_mainv))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 892 0
	ldi r24,lo8(3)
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 893 0
	call _ZL18kernel_create_taskv
.LVL46:
	.loc 1 896 0
	sts _ZL8cur_task+1,r15
	sts _ZL8cur_task,r14
	.loc 1 897 0
	ldi r24,lo8(1)
	sts _ZL9task_desc+259,r24
.LVL47:
.LBB77:
.LBB78:
	.loc 1 754 0
	lds r30,_ZL12system_queue
	lds r31,_ZL12system_queue+1
.LVL48:
	.loc 1 756 0
	sbiw r30,0
	breq .L61
	.loc 1 758 0
	subi r30,-7
	sbci r31,-2
.LVL49:
	ld r24,Z
	ldd r25,Z+1
	sts _ZL12system_queue+1,r25
	sts _ZL12system_queue,r24
.LVL50:
	.loc 1 759 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.LVL51:
.L61:
.LBE78:
.LBE77:
	.loc 1 901 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L62
	.loc 1 903 0
	lds r24,PPP+1
	sts _ZL15ticks_remaining,r24
.L62:
	.loc 1 907 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 908 0
	lds r24,132
	lds r25,132+1
	subi r24,-16
	sbci r25,-40
	sts 136+1,r25
	sts 136,r24
	.loc 1 910 0
	ldi r24,lo8(2)
	out 0x16,r24
.LBB79:
.LBB80:
.LBB81:
.LBB82:
	.loc 1 183 0
	clr r11
	inc r11
	.loc 1 180 0
	ldi r21,lo8(_ZL9task_desc+2120)
	mov r14,r21
	ldi r21,hi8(_ZL9task_desc+2120)
	mov r15,r21
.LBE82:
.LBE81:
.LBB88:
.LBB89:
	.loc 1 271 0
	ldi r22,lo8(2)
	mov r10,r22
.LBB90:
.LBB91:
	.loc 1 790 0
	movw r12,r16
	lsl r12
	rol r13
.LVL52:
.L95:
.LBE91:
.LBE90:
.LBE89:
.LBE88:
.LBB97:
.LBB87:
	.loc 1 162 0
	lds r24,_ZL8cur_task
	lds r25,_ZL8cur_task+1
	movw r30,r24
	subi r30,-3
	sbci r31,-2
	ld r18,Z
	cpi r18,lo8(1)
	brne .L63
	subi r24,lo8(_ZL9task_desc+2120)
	sbci r25,hi8(_ZL9task_desc+2120)
	breq .+2
	rjmp .L64
.L63:
	.loc 1 164 0
	lds r24,_ZL12system_queue
	lds r25,_ZL12system_queue+1
	sbiw r24,0
	breq .L65
.LVL53:
.LBB83:
.LBB84:
	.loc 1 758 0
	movw r30,r24
	subi r30,-7
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	sts _ZL12system_queue+1,r19
	sts _ZL12system_queue,r18
	rjmp .L133
.LVL54:
.L65:
.LBE84:
.LBE83:
	.loc 1 168 0
	lds r24,_ZL18slot_task_finished
	cpse r24,__zero_reg__
	rjmp .L67
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L67
	lds r30,_ZL15slot_name_index
	lds r31,_ZL15slot_name_index+1
	subi r30,lo8(-(PPP))
	sbci r31,hi8(-(PPP))
	ld r30,Z
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_ZL16name_to_task_ptr))
	sbci r31,hi8(-(_ZL16name_to_task_ptr))
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L128
.L67:
	.loc 1 173 0
	lds r24,_ZL8rr_queue
	lds r25,_ZL8rr_queue+1
	sbiw r24,0
	breq .L68
.LVL55:
.LBB85:
.LBB86:
	.loc 1 758 0
	movw r30,r24
	subi r30,-7
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	sts _ZL8rr_queue+1,r19
	sts _ZL8rr_queue,r18
.LVL56:
.L133:
	.loc 1 759 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L128:
.LBE86:
.LBE85:
	.loc 1 175 0
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L66
.L68:
	.loc 1 180 0
	sts _ZL8cur_task+1,r15
	sts _ZL8cur_task,r14
.L66:
	.loc 1 183 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-3
	sbci r31,-2
	st Z,r11
.L64:
.LBE87:
.LBE97:
	.loc 1 138 0
	call _ZL11exit_kernelv
.LVL57:
.LBB98:
.LBB96:
	.loc 1 198 0
	lds r18,_ZL14kernel_request
	cpi r18,lo8(2)
	brne .+2
	rjmp .L70
	lds r8,_ZL8cur_task
	lds r9,_ZL8cur_task+1
	cpi r18,lo8(3)
	brsh .L71
	tst r18
	brne .+2
	rjmp .L72
	cpi r18,lo8(1)
	breq .L73
	rjmp .L69
.L71:
	cpi r18,lo8(4)
	brne .+2
	rjmp .L74
	brsh .+2
	rjmp .L75
	cpi r18,lo8(5)
	brne .+2
	rjmp .L72
	rjmp .L69
.L73:
.LBB93:
.LBB92:
	.loc 1 775 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L77
	.loc 1 777 0
	lds r24,_ZL15ticks_remaining
	subi r24,lo8(-(-1))
	sts _ZL15ticks_remaining,r24
	.loc 1 779 0
	lds r24,_ZL15ticks_remaining
	cpse r24,__zero_reg__
	rjmp .L77
	.loc 1 782 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .L79
	movw r30,r8
	subi r30,-6
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(2)
	brne .L79
	lds r24,_ZL18slot_task_finished
	cpse r24,__zero_reg__
	rjmp .L79
	.loc 1 785 0
	ldi r24,lo8(8)
.L132:
	sts _ZL9error_msg,r24
.L131:
	.loc 1 786 0
	call OS_Abort
.LVL58:
.L79:
	.loc 1 789 0
	lds r24,_ZL15slot_name_index
	lds r25,_ZL15slot_name_index+1
	adiw r24,2
	.loc 1 790 0
	cp r24,r12
	cpc r25,r13
	brsh .L80
	.loc 1 789 0
	sts _ZL15slot_name_index+1,r25
	sts _ZL15slot_name_index,r24
	rjmp .L81
.L80:
	.loc 1 792 0
	sts _ZL15slot_name_index+1,__zero_reg__
	sts _ZL15slot_name_index,__zero_reg__
.L81:
	.loc 1 795 0
	lds r30,_ZL15slot_name_index
	lds r31,_ZL15slot_name_index+1
	subi r30,lo8(-(PPP))
	sbci r31,hi8(-(PPP))
	ldd r24,Z+1
	sts _ZL15ticks_remaining,r24
	.loc 1 797 0
	ld r30,Z
	tst r30
	breq .L82
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_ZL16name_to_task_ptr))
	sbci r31,hi8(-(_ZL16name_to_task_ptr))
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L83
.L82:
	.loc 1 799 0
	sts _ZL18slot_task_finished,r11
	rjmp .L77
.L83:
	.loc 1 803 0
	sts _ZL18slot_task_finished,__zero_reg__
.L77:
.LBE92:
.LBE93:
	.loc 1 208 0
	movw r30,r8
	subi r30,-6
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	breq .+2
	rjmp .L72
	sbiw r30,3
	ld r24,Z
	cpi r24,lo8(1)
	breq .+2
	rjmp .L72
	.loc 1 210 0
	st Z,r10
	.loc 1 211 0
	movw r22,r8
	rjmp .L96
.L70:
	.loc 1 216 0
	std Y+1,r18
	call _ZL18kernel_create_taskv
.LVL59:
	sts _ZL21kernel_request_retval+1,r25
	sts _ZL21kernel_request_retval,r24
	.loc 1 221 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
	ldd r18,Y+1
	or r24,r25
	brne .+2
	rjmp .L72
	.loc 1 224 0
	lds r24,_ZL26kernel_request_create_args+4
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	cpi r24,lo8(3)
	brne .L86
	movw r30,r22
	subi r30,-6
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(3)
	breq .+2
	rjmp .L87
.L86:
	.loc 1 230 0
	movw r30,r22
	subi r30,-6
	sbci r31,-2
	.loc 1 231 0
	ld r24,Z
	cpi r24,lo8(1)
	breq .+2
	rjmp .L72
	lds r24,_ZL26kernel_request_create_args+4
	movw r26,r22
	subi r26,-3
	sbci r27,-2
	.loc 1 230 0
	cpi r24,lo8(2)
	brne .L88
	.loc 1 232 0
	lds r25,_ZL26kernel_request_create_args+5
	lds r30,_ZL15slot_name_index
	lds r31,_ZL15slot_name_index+1
	subi r30,lo8(-(PPP))
	sbci r31,hi8(-(PPP))
	.loc 1 231 0
	ld r18,Z
	cpse r18,r25
	rjmp .L88
	.loc 1 234 0
	st X,r24
.L88:
	.loc 1 238 0
	ld r24,X
	cpi r24,lo8(2)
	brne .L72
.L96:
	.loc 1 240 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L130
.L75:
	.loc 1 246 0
	ldi r31,lo8(_ZL9task_desc+2120)
	cp r8,r31
	ldi r31,hi8(_ZL9task_desc+2120)
	cpc r9,r31
	breq .L72
.LBB94:
.LBB95:
	.loc 1 709 0
	movw r30,r8
	subi r30,-3
	sbci r31,-2
	st Z,__zero_reg__
	.loc 1 710 0
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(2)
	brne .L90
	.loc 1 712 0
	sbiw r30,4
	ld r30,Z
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_ZL16name_to_task_ptr))
	sbci r31,hi8(-(_ZL16name_to_task_ptr))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L90:
	.loc 1 714 0
	movw r22,r8
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
.L130:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL60:
	rjmp .L72
.L74:
.LBE95:
.LBE94:
	.loc 1 253 0
	movw r30,r8
	subi r30,-6
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(2)
	breq .L92
	cpi r24,lo8(3)
	breq .L93
	cpi r24,lo8(1)
	brne .L91
	.loc 1 264 0
	movw r22,r8
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L129
.L93:
	.loc 1 256 0
	movw r22,r8
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L129
.L92:
	.loc 1 260 0
	sts _ZL18slot_task_finished,r11
	rjmp .L91
.L129:
	.loc 1 264 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL61:
.L91:
	.loc 1 271 0
	movw r30,r8
	subi r30,-3
	sbci r31,-2
	st Z,r10
	rjmp .L72
.L69:
	.loc 1 280 0
	ldi r24,lo8(-1)
	rjmp .L132
.L72:
	.loc 1 285 0
	sts _ZL14kernel_request,__zero_reg__
	rjmp .L95
.L87:
	.loc 1 226 0
	movw r30,r22
	subi r30,-3
	sbci r31,-2
	st Z,r18
	rjmp .L86
.LBE96:
.LBE98:
.LBE80:
.LBE79:
.LBE74:
	.cfi_endproc
.LFE19:
	.size	_Z7OS_Initv, .-_Z7OS_Initv
	.section	.text.Task_Create,"ax",@progbits
.global	Task_Create
	.type	Task_Create, @function
Task_Create:
.LFB22:
	.loc 1 1017 0
	.cfi_startproc
.LVL62:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB99:
	.loc 1 1021 0
	in r28,__SREG__
.LVL63:
	.loc 1 1022 0
/* #APP */
 ;  1022 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1024 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1025 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1026 0
	sts _ZL26kernel_request_create_args+4,r20
	.loc 1 1027 0
	sts _ZL26kernel_request_create_args+5,r18
	.loc 1 1029 0
	ldi r24,lo8(2)
.LVL64:
	sts _ZL14kernel_request,r24
	.loc 1 1030 0
	call _ZL12enter_kernelv
.LVL65:
	.loc 1 1032 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL66:
	.loc 1 1033 0
	out __SREG__,r28
/* epilogue start */
.LBE99:
	.loc 1 1036 0
	pop r28
.LVL67:
	ret
	.cfi_endproc
.LFE22:
	.size	Task_Create, .-Task_Create
	.section	.text.Task_Next,"ax",@progbits
.global	Task_Next
	.type	Task_Next, @function
Task_Next:
.LFB23:
	.loc 1 1043 0
	.cfi_startproc
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI7:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI8:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI9:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB100:
	.loc 1 1046 0
	in r24,__SREG__
	std Y+1,r24
	.loc 1 1047 0
/* #APP */
 ;  1047 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1049 0
/* #NOAPP */
	ldi r24,lo8(4)
	sts _ZL14kernel_request,r24
	.loc 1 1050 0
	call _ZL12enter_kernelv
.LVL68:
	.loc 1 1052 0
	ldd r24,Y+1
	out __SREG__,r24
/* epilogue start */
.LBE100:
	.loc 1 1053 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE23:
	.size	Task_Next, .-Task_Next
	.section	.text.Task_GetArg,"ax",@progbits
.global	Task_GetArg
	.type	Task_GetArg, @function
Task_GetArg:
.LFB25:
	.loc 1 1076 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB101:
	.loc 1 1080 0
	in r18,__SREG__
.LVL69:
	.loc 1 1081 0
/* #APP */
 ;  1081 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1083 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-4
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL70:
	.loc 1 1085 0
	out __SREG__,r18
.LBE101:
	.loc 1 1088 0
	ret
	.cfi_endproc
.LFE25:
	.size	Task_GetArg, .-Task_GetArg
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB26:
	.loc 1 1094 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1095 0
	call _Z7OS_Initv
.LVL71:
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.section	.data._ZL9error_msg,"aw",@progbits
	.type	_ZL9error_msg, @object
	.size	_ZL9error_msg, 1
_ZL9error_msg:
	.byte	6
	.section	.bss._ZL11name_in_PPP,"aw",@nobits
	.type	_ZL11name_in_PPP, @object
	.size	_ZL11name_in_PPP, 9
_ZL11name_in_PPP:
	.zero	9
	.section	.bss._ZL16name_to_task_ptr,"aw",@nobits
	.type	_ZL16name_to_task_ptr, @object
	.size	_ZL16name_to_task_ptr, 18
_ZL16name_to_task_ptr:
	.zero	18
	.section	.bss._ZL15slot_name_index,"aw",@nobits
	.type	_ZL15slot_name_index, @object
	.size	_ZL15slot_name_index, 2
_ZL15slot_name_index:
	.zero	2
	.section	.bss._ZL18slot_task_finished,"aw",@nobits
	.type	_ZL18slot_task_finished, @object
	.size	_ZL18slot_task_finished, 1
_ZL18slot_task_finished:
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
	.size	_ZL26kernel_request_create_args, 6
_ZL26kernel_request_create_args:
	.zero	6
	.section	.bss._ZL14kernel_request,"aw",@nobits
	.type	_ZL14kernel_request, @object
	.size	_ZL14kernel_request, 1
_ZL14kernel_request:
	.zero	1
	.section	.bss._ZL9task_desc,"aw",@nobits
	.type	_ZL9task_desc, @object
	.size	_ZL9task_desc, 2385
_ZL9task_desc:
	.zero	2385
	.section	.bss._ZL9kernel_sp,"aw",@nobits
	.type	_ZL9kernel_sp, @object
	.size	_ZL9kernel_sp, 2
_ZL9kernel_sp:
	.zero	2
	.section	.bss._ZL8cur_task,"aw",@nobits
	.type	_ZL8cur_task, @object
	.size	_ZL8cur_task, 2
_ZL8cur_task:
	.zero	2
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././kernel.h"
	.file 5 ".././os.h"
	.file 6 ".././error_code.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xae7
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF96
	.byte	0x4
	.long	.LASF97
	.long	.LASF98
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
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
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x7c
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x7e
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x2c
	.long	0x8d
	.uleb128 0x5
	.byte	0x2
	.long	0x93
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x32
	.long	.LASF16
	.long	0xb9
	.uleb128 0x8
	.long	.LASF11
	.sleb128 0
	.uleb128 0x8
	.long	.LASF12
	.sleb128 1
	.uleb128 0x8
	.long	.LASF13
	.sleb128 2
	.uleb128 0x8
	.long	.LASF14
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x38
	.long	0x94
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x3e
	.long	.LASF17
	.long	0xf5
	.uleb128 0x8
	.long	.LASF18
	.sleb128 0
	.uleb128 0x8
	.long	.LASF19
	.sleb128 1
	.uleb128 0x8
	.long	.LASF20
	.sleb128 2
	.uleb128 0x8
	.long	.LASF21
	.sleb128 3
	.uleb128 0x8
	.long	.LASF22
	.sleb128 4
	.uleb128 0x8
	.long	.LASF23
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.long	0xc4
	.uleb128 0x9
	.byte	0x6
	.byte	0x4
	.byte	0x4d
	.long	.LASF33
	.long	0x143
	.uleb128 0xa
	.string	"f"
	.byte	0x4
	.byte	0x4f
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"arg"
	.byte	0x4
	.byte	0x51
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x53
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x55
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x57
	.long	0x100
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x5a
	.long	0x159
	.uleb128 0xc
	.long	.LASF99
	.word	0x109
	.byte	0x4
	.byte	0x5e
	.long	0x1ce
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.byte	0x61
	.long	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"sp"
	.byte	0x4
	.byte	0x63
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x65
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.byte	0x67
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x103
	.uleb128 0xa
	.string	"arg"
	.byte	0x4
	.byte	0x69
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x6b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.byte	0x6d
	.long	0x1f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x107
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x1de
	.uleb128 0xe
	.long	0x1de
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF32
	.uleb128 0xf
	.long	0x1ea
	.uleb128 0x5
	.byte	0x2
	.long	0x30
	.uleb128 0x5
	.byte	0x2
	.long	0x14e
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x75
	.long	.LASF34
	.long	0x21f
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.byte	0x77
	.long	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.byte	0x79
	.long	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x7b
	.long	0x1f6
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.long	0x275
	.uleb128 0x8
	.long	.LASF38
	.sleb128 0
	.uleb128 0x8
	.long	.LASF39
	.sleb128 1
	.uleb128 0x8
	.long	.LASF40
	.sleb128 2
	.uleb128 0x8
	.long	.LASF41
	.sleb128 3
	.uleb128 0x8
	.long	.LASF42
	.sleb128 4
	.uleb128 0x8
	.long	.LASF43
	.sleb128 5
	.uleb128 0x8
	.long	.LASF44
	.sleb128 6
	.uleb128 0x8
	.long	.LASF45
	.sleb128 7
	.uleb128 0x8
	.long	.LASF46
	.sleb128 8
	.uleb128 0x8
	.long	.LASF47
	.sleb128 9
	.uleb128 0x8
	.long	.LASF48
	.sleb128 10
	.byte	0
	.uleb128 0x11
	.long	.LASF100
	.byte	0x1
	.word	0x2f0
	.long	0x1f0
	.byte	0x1
	.long	0x2a1
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.word	0x2f0
	.long	0x2a1
	.uleb128 0x13
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.word	0x2f2
	.long	0x1f0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x21f
	.uleb128 0x15
	.long	.LASF66
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x2e6
	.uleb128 0x16
	.long	.LASF50
	.byte	0x2
	.byte	0x8e
	.long	0x2e6
	.uleb128 0x13
	.uleb128 0x17
	.long	.LASF52
	.byte	0x2
	.byte	0x90
	.long	0x2e6
	.uleb128 0x17
	.long	.LASF53
	.byte	0x2
	.byte	0x94
	.long	0x62
	.uleb128 0x18
	.byte	0x1
	.long	.LASF101
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x19
	.long	0x6d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF54
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x39c
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.byte	0x6f
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF56
	.byte	0x1
	.word	0x19c
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.word	0x1c9
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF102
	.byte	0x1
	.word	0x2d7
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x371
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.word	0x2d7
	.long	0x2a1
	.long	.LLST0
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.word	0x2d7
	.long	0x1f0
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.word	0x423
	.long	.LFB24
	.long	.LFE24
	.long	.LLST1
	.byte	0x1
	.long	0x3af
	.uleb128 0x21
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x22
	.long	.LASF61
	.byte	0x1
	.word	0x425
	.long	0x30
	.long	.LLST2
	.uleb128 0x23
	.long	.LVL3
	.long	0x31f
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x1f8
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.word	0x3a8
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x59f
	.uleb128 0x21
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.word	0x3aa
	.long	0x30
	.long	.LLST3
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.word	0x3aa
	.long	0x30
	.long	.LLST4
	.uleb128 0x22
	.long	.LASF62
	.byte	0x1
	.word	0x3ab
	.long	0x30
	.long	.LLST5
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.word	0x3ab
	.long	0x30
	.long	.LLST6
	.uleb128 0x27
	.long	0x2ed
	.long	.LBB29
	.long	.LBE29
	.byte	0x1
	.word	0x3c4
	.long	0x471
	.uleb128 0x28
	.long	0x2a7
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.word	0x3a2
	.uleb128 0x29
	.long	0x2b3
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x21
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2a
	.long	0x2bf
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x2b
	.long	0x2ca
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x2ed
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.word	0x3cb
	.long	0x4be
	.uleb128 0x28
	.long	0x2a7
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.word	0x3a2
	.uleb128 0x29
	.long	0x2b3
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x21
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	0x2bf
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x2b
	.long	0x2ca
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x2ed
	.long	.LBB35
	.long	.LBE35
	.byte	0x1
	.word	0x3d5
	.long	0x509
	.uleb128 0x28
	.long	0x2a7
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.word	0x3a2
	.uleb128 0x2c
	.long	0x2b3
	.long	.LLST7
	.uleb128 0x21
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2d
	.long	0x2bf
	.long	.LLST8
	.uleb128 0x2d
	.long	0x2ca
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x2ed
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x3dc
	.long	0x554
	.uleb128 0x28
	.long	0x2a7
	.long	.LBB39
	.long	.LBE39
	.byte	0x1
	.word	0x3a2
	.uleb128 0x2c
	.long	0x2b3
	.long	.LLST10
	.uleb128 0x21
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2d
	.long	0x2bf
	.long	.LLST11
	.uleb128 0x2d
	.long	0x2ca
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x2ed
	.long	.LBB41
	.long	.LBE41
	.byte	0x1
	.word	0x3e2
	.uleb128 0x28
	.long	0x2a7
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x3a2
	.uleb128 0x29
	.long	0x2b3
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x21
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2a
	.long	0x2bf
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x2b
	.long	0x2ca
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x2d5
	.byte	0
	.long	0x5af
	.uleb128 0x19
	.long	0x6d
	.byte	0
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x1
	.word	0x240
	.long	0x42
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x647
	.uleb128 0x21
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.word	0x243
	.long	0x1f0
	.long	.LLST13
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.word	0x244
	.long	0x1ea
	.long	.LLST14
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.word	0x27b
	.long	0x1ea
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x27
	.long	0x275
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x26d
	.long	0x633
	.uleb128 0x31
	.long	0x286
	.uleb128 0x21
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2d
	.long	0x293
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL32
	.long	0x3c5
	.uleb128 0x23
	.long	.LVL36
	.long	0x334
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF67
	.byte	0x1
	.word	0x32d
	.byte	0x1
	.long	0x66d
	.uleb128 0x13
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.word	0x32f
	.long	0x30
	.uleb128 0x14
	.long	.LASF26
	.byte	0x1
	.word	0x330
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF69
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uleb128 0x34
	.long	.LASF70
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x34
	.long	.LASF71
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.word	0x303
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x2c2
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.word	0x358
	.long	.LASF105
	.long	.LFB19
	.long	.LFE19
	.long	.LLST16
	.byte	0x1
	.long	0x820
	.uleb128 0x21
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.word	0x35a
	.long	0x42
	.uleb128 0x27
	.long	0x647
	.long	.LBB75
	.long	.LBE75
	.byte	0x1
	.word	0x364
	.long	0x6f9
	.uleb128 0x21
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2d
	.long	0x655
	.long	.LLST17
	.uleb128 0x2d
	.long	0x65f
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x275
	.long	.LBB77
	.long	.LBE77
	.byte	0x1
	.word	0x382
	.long	0x726
	.uleb128 0x31
	.long	0x286
	.uleb128 0x21
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x2d
	.long	0x293
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x66d
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.word	0x393
	.long	0x80c
	.uleb128 0x36
	.long	0x675
	.long	.LBB81
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x88
	.long	0x7a2
	.uleb128 0x37
	.long	0x275
	.long	.LBB83
	.long	.LBE83
	.byte	0x1
	.byte	0xa6
	.long	0x779
	.uleb128 0x31
	.long	0x286
	.uleb128 0x21
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2d
	.long	0x293
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x275
	.long	.LBB85
	.long	.LBE85
	.byte	0x1
	.byte	0xaf
	.uleb128 0x31
	.long	0x286
	.uleb128 0x21
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2d
	.long	0x293
	.long	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x67d
	.long	.LBB88
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x8f
	.long	0x802
	.uleb128 0x36
	.long	0x685
	.long	.LBB90
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xcd
	.long	0x7d2
	.uleb128 0x23
	.long	.LVL58
	.long	0x3c5
	.byte	0
	.uleb128 0x37
	.long	0x68e
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.byte	0xf8
	.long	0x7ef
	.uleb128 0x23
	.long	.LVL60
	.long	0x334
	.byte	0
	.uleb128 0x23
	.long	.LVL59
	.long	0x5af
	.uleb128 0x23
	.long	.LVL61
	.long	0x334
	.byte	0
	.uleb128 0x23
	.long	.LVL57
	.long	0x30a
	.byte	0
	.uleb128 0x23
	.long	.LVL45
	.long	0x5af
	.uleb128 0x23
	.long	.LVL46
	.long	0x5af
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.word	0x3f8
	.long	0x42
	.long	.LFB22
	.long	.LFE22
	.long	.LLST22
	.byte	0x1
	.long	0x8b3
	.uleb128 0x3a
	.string	"f"
	.byte	0x1
	.word	0x3f8
	.long	0x8d
	.long	.LLST23
	.uleb128 0x3a
	.string	"arg"
	.byte	0x1
	.word	0x3f8
	.long	0x42
	.long	.LLST24
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x1
	.word	0x3f8
	.long	0x54
	.long	.LLST25
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x1
	.word	0x3f8
	.long	0x54
	.long	.LLST26
	.uleb128 0x21
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x30
	.long	.LASF76
	.byte	0x1
	.word	0x3fa
	.long	0x42
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x22
	.long	.LASF61
	.byte	0x1
	.word	0x3fb
	.long	0x30
	.long	.LLST27
	.uleb128 0x23
	.long	.LVL65
	.long	0x31f
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.word	0x412
	.long	.LFB23
	.long	.LFE23
	.long	.LLST28
	.byte	0x1
	.long	0x8f0
	.uleb128 0x21
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x30
	.long	.LASF61
	.byte	0x1
	.word	0x414
	.long	0x8f0
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x23
	.long	.LVL68
	.long	0x31f
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x30
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.word	0x433
	.long	0x42
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x93f
	.uleb128 0x21
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x3c
	.string	"arg"
	.byte	0x1
	.word	0x435
	.long	0x42
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x30
	.long	.LASF61
	.byte	0x1
	.word	0x436
	.long	0x30
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.word	0x445
	.long	0x42
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x967
	.uleb128 0x23
	.long	.LVL71
	.long	0x697
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x972
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.string	"PPP"
	.byte	0x5
	.byte	0xe7
	.long	0x967
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"PT"
	.byte	0x5
	.byte	0xea
	.long	0x98b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	0x54
	.uleb128 0x40
	.long	.LASF80
	.byte	0x1
	.byte	0x23
	.long	0x1f0
	.byte	0x5
	.byte	0x3
	.long	_ZL8cur_task
	.uleb128 0x40
	.long	.LASF81
	.byte	0x1
	.byte	0x26
	.long	0x9b2
	.byte	0x5
	.byte	0x3
	.long	_ZL9kernel_sp
	.uleb128 0xf
	.long	0x49
	.uleb128 0xd
	.long	0x159
	.long	0x9c7
	.uleb128 0xe
	.long	0x1de
	.byte	0x8
	.byte	0
	.uleb128 0x40
	.long	.LASF82
	.byte	0x1
	.byte	0x29
	.long	0x9b7
	.byte	0x5
	.byte	0x3
	.long	_ZL9task_desc
	.uleb128 0x40
	.long	.LASF83
	.byte	0x1
	.byte	0x2c
	.long	0x9ea
	.byte	0x6
	.byte	0x3
	.long	_ZL9task_desc+2120
	.byte	0x9f
	.uleb128 0x3f
	.long	0x1f0
	.uleb128 0x40
	.long	.LASF84
	.byte	0x1
	.byte	0x2f
	.long	0xa00
	.byte	0x5
	.byte	0x3
	.long	_ZL14kernel_request
	.uleb128 0xf
	.long	0xf5
	.uleb128 0x40
	.long	.LASF85
	.byte	0x1
	.byte	0x32
	.long	0xa16
	.byte	0x5
	.byte	0x3
	.long	_ZL26kernel_request_create_args
	.uleb128 0xf
	.long	0x143
	.uleb128 0x40
	.long	.LASF86
	.byte	0x1
	.byte	0x35
	.long	0xa2c
	.byte	0x5
	.byte	0x3
	.long	_ZL21kernel_request_retval
	.uleb128 0xf
	.long	0x42
	.uleb128 0x40
	.long	.LASF87
	.byte	0x1
	.byte	0x38
	.long	0x21f
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x40
	.long	.LASF88
	.byte	0x1
	.byte	0x3b
	.long	0x21f
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x40
	.long	.LASF89
	.byte	0x1
	.byte	0x3e
	.long	0x21f
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0x40
	.long	.LASF90
	.byte	0x1
	.byte	0x41
	.long	0x8f0
	.byte	0x5
	.byte	0x3
	.long	_ZL15ticks_remaining
	.uleb128 0x40
	.long	.LASF91
	.byte	0x1
	.byte	0x44
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	_ZL18slot_task_finished
	.uleb128 0x40
	.long	.LASF92
	.byte	0x1
	.byte	0x47
	.long	0x54
	.byte	0x5
	.byte	0x3
	.long	_ZL15slot_name_index
	.uleb128 0xd
	.long	0x1f0
	.long	0xaa7
	.uleb128 0xe
	.long	0x1de
	.byte	0x8
	.byte	0
	.uleb128 0x40
	.long	.LASF93
	.byte	0x1
	.byte	0x4a
	.long	0xa97
	.byte	0x5
	.byte	0x3
	.long	_ZL16name_to_task_ptr
	.uleb128 0xd
	.long	0x3b
	.long	0xac8
	.uleb128 0xe
	.long	0x1de
	.byte	0x8
	.byte	0
	.uleb128 0x40
	.long	.LASF94
	.byte	0x1
	.byte	0x4d
	.long	0xab8
	.byte	0x5
	.byte	0x3
	.long	_ZL11name_in_PPP
	.uleb128 0x40
	.long	.LASF95
	.byte	0x1
	.byte	0x50
	.long	0x8f0
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.long	.LFE15
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
	.long	.LFB24
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE24
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
	.long	.LFE24
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x8
	.byte	0x29
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.word	0x5
	.byte	0x3b
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x5
	.byte	0x3a
	.byte	0x82
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
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.word	0x5
	.byte	0x3b
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL26
	.long	.LVL28
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x5
	.byte	0x44
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.word	0x5
	.byte	0x45
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL31
	.long	.LFE21
	.word	0x5
	.byte	0x44
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL18
	.long	.LVL29
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LFE21
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x8
	.byte	0x60
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x3
	.byte	0x9
	.byte	0x90
	.byte	0x9f
	.long	.LVL9
	.long	.LFE21
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST7:
	.long	.LVL20
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41c80000
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48c35000
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL28
	.word	0x6
	.byte	0xc
	.long	0x61a80
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41c80000
	.long	0
	.long	0
.LLST11:
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48c35000
	.long	0
	.long	0
.LLST12:
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0xc
	.long	0x61a80
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL35
	.long	.LVL36-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL35
	.long	.LVL36-1
	.word	0x4
	.byte	0x86
	.sleb128 255
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LFB19
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
	.long	.LFE19
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST17:
	.long	.LVL37
	.long	.LVL38
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL38
	.long	.LVL45-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST18:
	.long	.LVL39
	.long	.LVL40
	.word	0x1
	.byte	0x6e
	.long	.LVL40
	.long	.LVL42
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST19:
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL50
	.word	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.long	.LVL50
	.long	.LVL51
	.word	0x4
	.byte	0x8e
	.sleb128 -263
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL53
	.long	.LVL54
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
	.long	.LVL55
	.long	.LVL56
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
	.long	.LFB22
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST23:
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
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL62
	.long	.LVL65-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL62
	.long	.LVL65-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL62
	.long	.LVL65-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL63
	.long	.LVL67
	.word	0x1
	.byte	0x6c
	.long	.LVL67
	.long	.LFE22
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST28:
	.long	.LFB23
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI9
	.long	.LFE23
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB81
	.long	.LBE81
	.long	.LBB97
	.long	.LBE97
	.long	0
	.long	0
	.long	.LBB88
	.long	.LBE88
	.long	.LBB98
	.long	.LBE98
	.long	0
	.long	0
	.long	.LBB90
	.long	.LBE90
	.long	.LBB93
	.long	.LBE93
	.long	0
	.long	0
	.long	.LFB6
	.long	.LFE6
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB15
	.long	.LFE15
	.long	.LFB24
	.long	.LFE24
	.long	.LFB12
	.long	.LFE12
	.long	.LFB21
	.long	.LFE21
	.long	.LFB13
	.long	.LFE13
	.long	.LFB19
	.long	.LFE19
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"__ms"
.LASF92:
	.string	"slot_name_index"
.LASF73:
	.string	"kernel_terminate_task"
.LASF45:
	.string	"ERR_RUN_2_TOO_MANY_TASKS"
.LASF69:
	.string	"kernel_main_loop"
.LASF10:
	.string	"voidfuncvoid_ptr"
.LASF97:
	.string	".././os.cpp"
.LASF80:
	.string	"cur_task"
.LASF78:
	.string	"Task_GetArg"
.LASF30:
	.string	"state"
.LASF27:
	.string	"create_args_t"
.LASF56:
	.string	"exit_kernel"
.LASF52:
	.string	"__tmp"
.LASF32:
	.string	"sizetype"
.LASF33:
	.string	"13create_args_t"
.LASF87:
	.string	"dead_pool_queue"
.LASF79:
	.string	"main"
.LASF102:
	.string	"enqueue"
.LASF29:
	.string	"stack"
.LASF38:
	.string	"ERR_1_PPP_NAME_OUT_OF_RANGE"
.LASF39:
	.string	"ERR_2_CREATE_NAME_OUT_OF_RANGE"
.LASF76:
	.string	"retval"
.LASF41:
	.string	"ERR_4_PERIODIC_NAME_IN_USE"
.LASF35:
	.string	"head"
.LASF2:
	.string	"uint8_t"
.LASF88:
	.string	"rr_queue"
.LASF67:
	.string	"check_PPP_names"
.LASF46:
	.string	"ERR_RUN_3_PERIODIC_TOOK_TOO_LONG"
.LASF91:
	.string	"slot_task_finished"
.LASF48:
	.string	"ERR_RUN_5_RTOS_INTERNAL_ERROR"
.LASF20:
	.string	"TASK_CREATE"
.LASF14:
	.string	"WAITING"
.LASF64:
	.string	"stack_bottom"
.LASF74:
	.string	"OS_Init"
.LASF72:
	.string	"kernel_update_ticker"
.LASF81:
	.string	"kernel_sp"
.LASF8:
	.string	"long long int"
.LASF70:
	.string	"kernel_dispatch"
.LASF55:
	.string	"idle"
.LASF22:
	.string	"TASK_NEXT"
.LASF5:
	.string	"long int"
.LASF16:
	.string	"12task_state_t"
.LASF66:
	.string	"_delay_ms"
.LASF84:
	.string	"kernel_request"
.LASF89:
	.string	"system_queue"
.LASF85:
	.string	"kernel_request_create_args"
.LASF40:
	.string	"ERR_3_PERIODIC_NAMED_IDLE"
.LASF83:
	.string	"idle_task"
.LASF51:
	.string	"task_ptr"
.LASF19:
	.string	"TIMER_EXPIRED"
.LASF36:
	.string	"tail"
.LASF99:
	.string	"td_struct"
.LASF101:
	.string	"__builtin_avr_delay_cycles"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"kernel_handle_request"
.LASF105:
	.string	"_Z7OS_Initv"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint32_t"
.LASF94:
	.string	"name_in_PPP"
.LASF4:
	.string	"unsigned int"
.LASF93:
	.string	"name_to_task_ptr"
.LASF3:
	.string	"uint16_t"
.LASF86:
	.string	"kernel_request_retval"
.LASF95:
	.string	"error_msg"
.LASF12:
	.string	"RUNNING"
.LASF21:
	.string	"TASK_TERMINATE"
.LASF13:
	.string	"READY"
.LASF61:
	.string	"sreg"
.LASF77:
	.string	"Task_Next"
.LASF34:
	.string	"7queue_t"
.LASF58:
	.string	"task_to_add"
.LASF28:
	.string	"task_descriptor_t"
.LASF104:
	.string	"kernel_create_task"
.LASF7:
	.string	"long unsigned int"
.LASF54:
	.string	"double"
.LASF43:
	.string	"ERR_6_TIME_INTERVAL_IN_PPP_0"
.LASF75:
	.string	"Task_Create"
.LASF59:
	.string	"Task_Terminate"
.LASF23:
	.string	"TASK_GET_ARG"
.LASF62:
	.string	"flashes"
.LASF25:
	.string	"level"
.LASF18:
	.string	"NONE"
.LASF47:
	.string	"ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST"
.LASF42:
	.string	"ERR_5_NAME_NOT_IN_PPP"
.LASF24:
	.string	"kernel_request_t"
.LASF65:
	.string	"stack_top"
.LASF26:
	.string	"name"
.LASF15:
	.string	"task_state_t"
.LASF53:
	.string	"__ticks_dc"
.LASF68:
	.string	"_delay_25ms"
.LASF49:
	.string	"queue_ptr"
.LASF37:
	.string	"queue_t"
.LASF57:
	.string	"enter_kernel"
.LASF82:
	.string	"task_desc"
.LASF90:
	.string	"ticks_remaining"
.LASF103:
	.string	"__vector_17"
.LASF11:
	.string	"DEAD"
.LASF98:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF60:
	.string	"OS_Abort"
.LASF100:
	.string	"dequeue"
.LASF31:
	.string	"next"
.LASF44:
	.string	"ERR_RUN_1_USER_CALLED_OS_ABORT"
.LASF63:
	.string	"mask"
.LASF17:
	.string	"16kernel_request_t"
.LASF96:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
