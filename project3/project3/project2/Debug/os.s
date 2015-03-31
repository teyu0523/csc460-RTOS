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
.LFB11:
	.file 1 ".././os.cpp"
	.loc 1 130 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	rjmp .L2
	.cfi_endproc
.LFE11:
	.size	_ZL4idlev, .-_ZL4idlev
	.section	.text._ZL11exit_kernelv,"ax",@progbits
	.type	_ZL11exit_kernelv, @function
_ZL11exit_kernelv:
.LFB15:
	.loc 1 442 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 447 0
/* #APP */
 ;  447 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  447 ".././os.cpp" 1
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
	.loc 1 452 0
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts _ZL9kernel_sp+1,r25
	sts _ZL9kernel_sp,r24
	.loc 1 457 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	inc r31
	ld r24,Z
	ldd r25,Z+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 462 0
/* #APP */
 ;  462 ".././os.cpp" 1
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
 ;  462 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 473 0
 ;  473 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 474 0
/* #NOAPP */
	.cfi_endproc
.LFE15:
	.size	_ZL11exit_kernelv, .-_ZL11exit_kernelv
	.section	.text._ZL12enter_kernelv,"ax",@progbits
	.type	_ZL12enter_kernelv, @function
_ZL12enter_kernelv:
.LFB16:
	.loc 1 487 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 492 0
/* #APP */
 ;  492 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  492 ".././os.cpp" 1
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
	.loc 1 497 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 502 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 507 0
/* #APP */
 ;  507 ".././os.cpp" 1
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
 ;  507 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 515 0
 ;  515 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 516 0
/* #NOAPP */
	.cfi_endproc
.LFE16:
	.size	_ZL12enter_kernelv, .-_ZL12enter_kernelv
	.section	.text._ZL7enqueueP7queue_tP9td_struct,"ax",@progbits
	.type	_ZL7enqueueP7queue_tP9td_struct, @function
_ZL7enqueueP7queue_tP9td_struct:
.LFB24:
	.loc 1 850 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 851 0
	movw r26,r22
	subi r26,-16
	sbci r27,-2
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 853 0
	ld r24,Z
	ldd r25,Z+1
.LVL1:
	or r24,r25
	brne .L6
	.loc 1 856 0
	std Z+1,r23
	st Z,r22
	rjmp .L8
.L6:
	.loc 1 862 0
	ldd r26,Z+2
	ldd r27,Z+3
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
.L8:
	.loc 1 863 0
	std Z+3,r23
	std Z+2,r22
	ret
	.cfi_endproc
.LFE24:
	.size	_ZL7enqueueP7queue_tP9td_struct, .-_ZL7enqueueP7queue_tP9td_struct
	.section	.text.Task_Terminate,"ax",@progbits
.global	Task_Terminate
	.type	Task_Terminate, @function
Task_Terminate:
.LFB39:
	.loc 1 1389 0
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
	.loc 1 1392 0
	in r28,__SREG__
.LVL2:
	.loc 1 1393 0
/* #APP */
 ;  1393 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1395 0
/* #NOAPP */
	ldi r24,lo8(3)
	sts _ZL14kernel_request,r24
	.loc 1 1396 0
	call _ZL12enter_kernelv
.LVL3:
	.loc 1 1398 0
	out __SREG__,r28
/* epilogue start */
.LBE29:
	.loc 1 1399 0
	pop r28
.LVL4:
	ret
	.cfi_endproc
.LFE39:
	.size	Task_Terminate, .-Task_Terminate
	.section	.text._ZL7dequeueP7queue_t.isra.1,"ax",@progbits
	.type	_ZL7dequeueP7queue_t.isra.1, @function
_ZL7dequeueP7queue_t.isra.1:
.LFB44:
	.loc 1 874 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
.LVL5:
.LBB30:
	.loc 1 876 0
	ld r24,X+
	ld r25,X
	sbiw r26,1
.LVL6:
	.loc 1 878 0
	sbiw r24,0
	breq .L12
	.loc 1 880 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	st X+,r18
	st X,r19
	.loc 1 881 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
.LBE30:
	.loc 1 885 0
	ret
	.cfi_endproc
.LFE44:
	.size	_ZL7dequeueP7queue_t.isra.1, .-_ZL7dequeueP7queue_t.isra.1
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
.LFB17:
	.loc 1 534 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 547 0
/* #APP */
 ;  547 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
	.loc 1 549 0
 ;  549 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 551 0
 ;  551 ".././os.cpp" 1
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
	.loc 1 553 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 560 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 565 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 570 0
	ldi r30,lo8(-120)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	subi r24,-16
	sbci r25,-40
	std Z+1,r25
	st Z,r24
	.loc 1 575 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 580 0
/* #APP */
 ;  580 ".././os.cpp" 1
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
 ;  580 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 590 0
 ;  590 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 591 0
/* #NOAPP */
	.cfi_endproc
.LFE17:
	.size	__vector_17, .-__vector_17
	.section	.text.OS_Abort,"ax",@progbits
.global	OS_Abort
	.type	OS_Abort, @function
OS_Abort:
.LFB29:
	.loc 1 1024 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB31:
	.loc 1 1028 0
/* #APP */
 ;  1028 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1031 0
/* #NOAPP */
	ldi r24,lo8(96)
	sts 257,r24
	.loc 1 1033 0
	lds r24,_ZL9error_msg
	cpi r24,lo8(6)
	brsh .L18
	.loc 1 1035 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(1))
.LVL7:
	.loc 1 1036 0
	ldi r19,lo8(64)
	rjmp .L19
.LVL8:
.L18:
	.loc 1 1040 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL9:
	.loc 1 1041 0
	ldi r19,lo8(32)
.LVL10:
.L19:
	.loc 1 1047 0
	ldi r20,lo8(96)
.L31:
.LVL11:
	sts 258,r20
.LVL12:
	ldi r25,lo8(100)
.LVL13:
.L21:
.LBB32:
.LBB33:
.LBB34:
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
.LVL14:
	subi r25,lo8(-(-1))
.LVL15:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 1049 0
	brne .L21
	.loc 1 1054 0
	sts 258,__zero_reg__
.LVL16:
	ldi r25,lo8(40)
.LVL17:
.L24:
.LBB35:
.LBB36:
.LBB37:
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
.LVL18:
	subi r25,lo8(-(-1))
.LVL19:
.LBE37:
.LBE36:
.LBE35:
	.loc 1 1056 0
	brne .L24
.LVL20:
.L23:
	.loc 1 1062 0 discriminator 1
	cp r25,r24
	breq .L33
	.loc 1 1064 0
	sts 258,r19
.LVL21:
	ldi r18,lo8(10)
.LVL22:
.L26:
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
.LVL23:
	subi r18,lo8(-(-1))
.LVL24:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 1066 0
	brne .L26
	.loc 1 1071 0
	sts 258,__zero_reg__
.LVL25:
	ldi r18,lo8(10)
.LVL26:
.L28:
.LBB41:
.LBB42:
.LBB43:
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
.LVL27:
	subi r18,lo8(-(-1))
.LVL28:
.LBE43:
.LBE42:
.LBE41:
	.loc 1 1073 0
	brne .L28
	.loc 1 1062 0
	subi r25,lo8(-(1))
.LVL29:
	rjmp .L23
.LVL30:
.L33:
	ldi r25,lo8(20)
.LVL31:
.L32:
.LBB44:
.LBB45:
.LBB46:
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
.LVL32:
	subi r25,lo8(-(-1))
.LVL33:
.LBE46:
.LBE45:
.LBE44:
	.loc 1 1079 0
	brne .L32
	rjmp .L31
.LBE31:
	.cfi_endproc
.LFE29:
	.size	OS_Abort, .-OS_Abort
	.section	.text._ZL18kernel_create_taskv,"ax",@progbits
	.type	_ZL18kernel_create_taskv, @function
_ZL18kernel_create_taskv:
.LFB18:
	.loc 1 606 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB50:
	.loc 1 612 0
	lds r24,_ZL15dead_pool_queue
	lds r25,_ZL15dead_pool_queue+1
	or r24,r25
	brne .+2
	rjmp .L43
	.loc 1 617 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	brne .L36
	.loc 1 618 0
	lds r24,_ZL26kernel_request_create_args+11
	lds r25,_ZL26kernel_request_create_args+11+1
	.loc 1 619 0
	or r24,r25
	brne .+2
	rjmp .L37
	.loc 1 619 0 is_stmt 0 discriminator 2
	lds r24,_ZL26kernel_request_create_args+9
	lds r25,_ZL26kernel_request_create_args+9+1
	.loc 1 618 0 is_stmt 1 discriminator 2
	or r24,r25
	brne .+2
	rjmp .L37
	.loc 1 619 0
	lds r24,_ZL26kernel_request_create_args+13
	lds r25,_ZL26kernel_request_create_args+13+1
	.loc 1 625 0
	lds r18,_ZL26kernel_request_create_args+11
	lds r19,_ZL26kernel_request_create_args+11+1
	lds r24,_ZL26kernel_request_create_args+9
	lds r25,_ZL26kernel_request_create_args+9+1
	cp r24,r18
	cpc r25,r19
	brsh .L36
	.loc 1 627 0
	ldi r24,lo8(3)
	rjmp .L54
.L36:
	.loc 1 634 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L44
	.loc 1 641 0
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL34:
	movw r22,r24
.LVL35:
	rjmp .L38
.LVL36:
.L44:
	.loc 1 636 0
	ldi r22,lo8(_ZL9task_desc+2208)
	ldi r23,hi8(_ZL9task_desc+2208)
.L38:
.LVL37:
	.loc 1 662 0
	movw r30,r22
	subi r30,39
	sbci r31,-1
	st Z,__zero_reg__
	.loc 1 664 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 673 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 674 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r25
	.loc 1 675 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r24
	.loc 1 676 0
	adiw r30,1
	st Z,__zero_reg__
	.loc 1 677 0
	ldi r24,lo8(gs(Task_Terminate))
	ldi r25,hi8(gs(Task_Terminate))
	adiw r30,1
	st Z,r25
	.loc 1 678 0
	adiw r30,1
	st Z,r24
	.loc 1 689 0
	adiw r30,1
	movw r24,r22
	subi r24,41
	sbci r25,-1
	std Z+1,r25
	st Z,r24
	.loc 1 691 0
	ldi r24,lo8(2)
	adiw r30,12
	st Z,r24
	.loc 1 692 0
	lds r24,_ZL26kernel_request_create_args+2
	lds r25,_ZL26kernel_request_create_args+2+1
	adiw r30,1
	std Z+1,r25
	st Z,r24
	.loc 1 693 0
	lds r24,_ZL26kernel_request_create_args+4
	adiw r30,2
	st Z,r24
	.loc 1 694 0
	lds r24,_ZL26kernel_request_create_args+9
	lds r25,_ZL26kernel_request_create_args+9+1
	sbiw r30,9
	std Z+1,r25
	st Z,r24
	.loc 1 695 0
	lds r24,_ZL26kernel_request_create_args+11
	lds r25,_ZL26kernel_request_create_args+11+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 696 0
	lds r24,_ZL26kernel_request_create_args+13
	lds r25,_ZL26kernel_request_create_args+13+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 697 0
	lds r24,_ZL26kernel_request_create_args+5
	lds r25,_ZL26kernel_request_create_args+5+1
	sbiw r30,8
	std Z+1,r25
	st Z,r24
	.loc 1 699 0
	lds r24,_ZL26kernel_request_create_args+7
	lds r25,_ZL26kernel_request_create_args+7+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 702 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	breq .L39
	cpi r24,lo8(3)
	breq .L40
	cpi r24,lo8(1)
	brne .L52
	.loc 1 715 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L55
.L40:
	.loc 1 706 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L55
.L39:
.LVL38:
.LBB51:
.LBB52:
	.loc 1 822 0
	movw r30,r22
	subi r30,-16
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 823 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L42
	.loc 1 826 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 827 0
	sts _ZL14periodic_queue+1,r23
	sts _ZL14periodic_queue,r22
	rjmp .L56
.L42:
	.loc 1 833 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
	.loc 1 834 0
	std Z+1,r25
	st Z,r24
.L56:
	.loc 1 835 0
	sts _ZL14periodic_queue+2+1,r23
	sts _ZL14periodic_queue+2,r22
	rjmp .L52
.LVL39:
.L55:
.LBE52:
.LBE51:
	.loc 1 715 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL40:
	rjmp .L52
.L43:
	.loc 1 615 0
	ldi r24,0
	ldi r25,0
	ret
.L52:
	.loc 1 724 0
	ldi r24,lo8(1)
	ldi r25,0
	ret
.L37:
	.loc 1 622 0
	ldi r24,lo8(4)
.L54:
	sts _ZL9error_msg,r24
	.loc 1 623 0
	call OS_Abort
.LVL41:
.LBE50:
	.cfi_endproc
.LFE18:
	.size	_ZL18kernel_create_taskv, .-_ZL18kernel_create_taskv
	.section	.text._Z7OS_Initv,"ax",@progbits
.global	_Z7OS_Initv
	.type	_Z7OS_Initv, @function
_Z7OS_Initv:
.LFB27:
	.loc 1 936 0
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
.LBB77:
	.loc 1 943 0
	lds r24,129
	ori r24,lo8(2)
	sts 129,r24
.LVL42:
	ldi r30,lo8(_ZL9task_desc+268)
	ldi r31,hi8(_ZL9task_desc+268)
	ldi r26,lo8(_ZL16name_to_task_ptr)
	ldi r27,hi8(_ZL16name_to_task_ptr)
.LVL43:
.L59:
	.loc 1 958 0 discriminator 2
	st Z,__zero_reg__
	.loc 1 959 0 discriminator 2
	st X+,__zero_reg__
	st X+,__zero_reg__
	movw r24,r30
	adiw r24,8
	.loc 1 960 0 discriminator 2
	std Z+5,r25
	std Z+4,r24
	subi r30,-20
	sbci r31,-2
	.loc 1 956 0 discriminator 2
	ldi r18,hi8(_ZL9task_desc+2200)
	cpi r30,lo8(_ZL9task_desc+2200)
	cpc r31,r18
	brne .L59
	.loc 1 962 0
	sts _ZL9task_desc+2204+1,__zero_reg__
	sts _ZL9task_desc+2204,__zero_reg__
	.loc 1 963 0
	ldi r16,lo8(_ZL9task_desc)
	ldi r17,hi8(_ZL9task_desc)
	sts _ZL15dead_pool_queue+1,r17
	sts _ZL15dead_pool_queue,r16
	.loc 1 964 0
	ldi r24,lo8(_ZL9task_desc+1932)
	ldi r25,hi8(_ZL9task_desc+1932)
	sts _ZL15dead_pool_queue+2+1,r25
	sts _ZL15dead_pool_queue+2,r24
	.loc 1 967 0
	ldi r24,lo8(gs(_ZL4idlev))
	ldi r25,hi8(gs(_ZL4idlev))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 968 0
	sts _ZL26kernel_request_create_args+4,__zero_reg__
	.loc 1 969 0
	call _ZL18kernel_create_taskv
.LVL44:
	.loc 1 972 0
	ldi r24,lo8(gs(_Z6r_mainv))
	ldi r25,hi8(gs(_Z6r_mainv))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 973 0
	ldi r24,lo8(3)
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 974 0
	call _ZL18kernel_create_taskv
.LVL45:
	.loc 1 977 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
	.loc 1 978 0
	ldi r24,lo8(1)
	sts _ZL9task_desc+268,r24
	.loc 1 979 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL46:
	.loc 1 988 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 990 0
	ldi r24,lo8(16)
	ldi r25,lo8(39)
	sts 136+1,r25
	sts 136,r24
	.loc 1 991 0
	sts 132+1,__zero_reg__
	sts 132,__zero_reg__
	.loc 1 993 0
	ldi r24,lo8(2)
	out 0x16,r24
.LBB78:
.LBB79:
.LBB80:
.LBB81:
.LBB82:
	.loc 1 215 0
	clr r14
	inc r14
.LBB83:
.LBB84:
	.loc 1 212 0
	ldi r16,lo8(_ZL9task_desc+2208)
	ldi r17,hi8(_ZL9task_desc+2208)
.LBE84:
.LBE83:
.LBE82:
.LBE81:
.LBE80:
.LBB92:
.LBB93:
	.loc 1 301 0
	ldi r24,lo8(2)
	mov r15,r24
.L95:
.LBE93:
.LBE92:
.LBB103:
.LBB91:
	.loc 1 179 0
	lds r24,_ZL8cur_task
	lds r25,_ZL8cur_task+1
	movw r30,r24
	subi r30,-12
	sbci r31,-2
	ld r18,Z
	cpi r18,lo8(1)
	brne .L60
	subi r24,lo8(_ZL9task_desc+2208)
	sbci r25,hi8(_ZL9task_desc+2208)
	breq .+2
	rjmp .L61
.L60:
.LBB90:
.LBB89:
	.loc 1 181 0
	lds r24,_ZL12system_queue
	lds r25,_ZL12system_queue+1
	or r24,r25
	breq .L62
	.loc 1 183 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L114
.L62:
.LBB88:
	.loc 1 185 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	sbiw r24,0
	breq .L69
.LBB85:
.LBB86:
.LBB87:
	.loc 1 795 0
	ldi r18,0
	ldi r19,0
	.loc 1 796 0
	ldi r20,0
	ldi r21,0
.L68:
.LVL47:
	.loc 1 800 0
	movw r30,r24
	subi r30,-2
	sbci r31,-2
	ld r22,Z
	ldd r23,Z+1
	or r22,r23
	brne .L65
	.loc 1 802 0
	movw r26,r24
	subi r26,-6
	sbci r27,-2
	ld r18,X+
	ld r19,X
.LVL48:
	std Z+1,r19
	st Z,r18
	.loc 1 803 0
	adiw r30,6
	ld r18,Z
	ldd r19,Z+1
	sbiw r30,4
	std Z+1,r19
	st Z,r18
.LVL49:
	.loc 1 805 0
	subi r20,-1
	sbci r21,-1
.LVL50:
	movw r18,r24
.LVL51:
.L65:
	.loc 1 807 0
	cpi r20,2
	cpc r21,__zero_reg__
	brlt .L66
	.loc 1 809 0
	ldi r24,lo8(11)
.LVL52:
	rjmp .L120
.LVL53:
.L66:
	.loc 1 812 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL54:
	.loc 1 798 0
	sbiw r24,0
	brne .L68
.LBE87:
.LBE86:
	.loc 1 189 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L69
	.loc 1 192 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	rjmp .L63
.LVL55:
.L69:
	.loc 1 195 0
	lds r24,_ZL8rr_queue
	lds r25,_ZL8rr_queue+1
	or r24,r25
	breq .L71
	.loc 1 197 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L114:
	call _ZL7dequeueP7queue_t.isra.1
.LVL56:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L63
.L71:
.LBE85:
	.loc 1 212 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
.L63:
.LBE88:
.LBE89:
	.loc 1 215 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-12
	sbci r31,-2
	st Z,r14
.L61:
.LBE90:
.LBE91:
.LBE103:
	.loc 1 156 0
	call _ZL11exit_kernelv
.LVL57:
.LBB104:
.LBB102:
	.loc 1 231 0
	lds r18,_ZL14kernel_request
	cpi r18,lo8(2)
	brne .+2
	rjmp .L73
	lds r12,_ZL8cur_task
	lds r13,_ZL8cur_task+1
	cpi r18,lo8(3)
	brsh .L74
	tst r18
	brne .+2
	rjmp .L75
	cpi r18,lo8(1)
	breq .L76
	rjmp .L72
.L74:
	cpi r18,lo8(4)
	brne .+2
	rjmp .L77
	brsh .+2
	rjmp .L78
	cpi r18,lo8(5)
	brne .+2
	rjmp .L75
	rjmp .L72
.L76:
.LBB94:
.LBB95:
	.loc 1 896 0
	lds r24,132
	lds r25,132+1
	sts _ZL21time_before_interrupt+1,r25
	sts _ZL21time_before_interrupt,r24
	.loc 1 897 0
	lds r24,_ZL13ticks_counter
	subi r24,lo8(-(1))
	sts _ZL13ticks_counter,r24
	.loc 1 898 0
	movw r30,r12
	subi r30,-15
	sbci r31,-2
	ld r20,Z
	cpi r20,lo8(2)
	brne .L79
	sbiw r30,3
	ld r24,Z
	cpi r24,lo8(1)
	brne .L79
	.loc 1 900 0
	sbiw r30,8
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,1
	std Z+1,r25
	st Z,r24
	.loc 1 901 0
	adiw r30,4
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L79
	.loc 1 903 0
	ldi r24,lo8(8)
.L120:
	sts _ZL9error_msg,r24
	.loc 1 904 0
	call OS_Abort
.LVL58:
.L79:
	.loc 1 911 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
.LVL59:
.L80:
.LBB96:
.LBB97:
	.loc 1 748 0
	sbiw r24,0
	breq .L122
	.loc 1 750 0
	movw r30,r24
	subi r30,-2
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	subi r18,1
	sbc r19,__zero_reg__
	std Z+1,r19
	st Z,r18
	.loc 1 751 0
	adiw r30,14
	ld r24,Z
	ldd r25,Z+1
.LVL60:
	rjmp .L80
.L122:
.LBE97:
.LBE96:
.LBE95:
.LBE94:
	.loc 1 241 0
	cpi r20,lo8(1)
	breq .+2
	rjmp .L75
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	ld r24,Z
.LVL61:
	cpi r24,lo8(1)
	breq .+2
	rjmp .L75
	.loc 1 243 0
	st Z,r15
	.loc 1 244 0
	movw r22,r12
	rjmp .L119
.LVL62:
.L73:
	.loc 1 249 0
	std Y+1,r18
	call _ZL18kernel_create_taskv
.LVL63:
	sts _ZL21kernel_request_retval+1,r25
	sts _ZL21kernel_request_retval,r24
	.loc 1 254 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
	ldd r18,Y+1
	or r24,r25
	breq .L84
	.loc 1 258 0
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	movw r30,r22
	subi r30,-15
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(3)
	brne .+2
	rjmp .L75
	lds r25,_ZL26kernel_request_create_args+4
	cpi r25,lo8(3)
	breq .+2
	rjmp .L113
	rjmp .L123
.L84:
	.loc 1 270 0
	ldi r24,lo8(7)
	rjmp .L120
.L78:
	.loc 1 276 0
	ldi r31,lo8(_ZL9task_desc+2208)
	cp r12,r31
	ldi r31,hi8(_ZL9task_desc+2208)
	cpc r13,r31
	brne .+2
	rjmp .L75
.LBB98:
.LBB99:
	.loc 1 734 0
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	st Z,__zero_reg__
	.loc 1 735 0
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(2)
	breq .+2
	rjmp .L88
.LVL64:
.LBB100:
.LBB101:
	.loc 1 758 0
	lds r18,_ZL14periodic_queue
	lds r19,_ZL14periodic_queue+1
	cp r18,r12
	cpc r19,r13
	brne .L89
	adiw r30,1
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L89
	.loc 1 760 0
	sts _ZL14periodic_queue+1,r25
	sts _ZL14periodic_queue,r24
	.loc 1 761 0
	movw r30,r24
	subi r30,-18
	sbci r31,-2
	rjmp .L116
.L89:
	.loc 1 763 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r30,r12
	subi r30,-18
	sbci r31,-2
	cp r24,r12
	cpc r25,r13
	brne .L90
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L91
	.loc 1 764 0
	sts _ZL14periodic_queue+2+1,r25
	sts _ZL14periodic_queue+2,r24
	.loc 1 765 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
.L116:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L88
.L91:
	.loc 1 767 0
	cp r18,r12
	cpc r19,r13
	brne .L90
	.loc 1 768 0
	sts _ZL14periodic_queue+2+1,__zero_reg__
	sts _ZL14periodic_queue+2,__zero_reg__
	.loc 1 769 0
	sts _ZL14periodic_queue+1,__zero_reg__
	sts _ZL14periodic_queue,__zero_reg__
	rjmp .L88
.L90:
	.loc 1 772 0
	ld r24,Z
	ldd r25,Z+1
.LVL65:
	.loc 1 773 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r26,Z
	ldd r27,Z+1
	subi r26,-16
	sbci r27,-2
	ld r18,X+
	ld r19,X
	std Z+1,r19
	st Z,r18
	.loc 1 774 0
	movw r30,r18
	subi r30,-18
	sbci r31,-2
	std Z+1,r25
	st Z,r24
.LVL66:
.L88:
.LBE101:
.LBE100:
	.loc 1 739 0
	movw r22,r12
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
	rjmp .L118
.L77:
.LBE99:
.LBE98:
	.loc 1 283 0
	movw r30,r12
	subi r30,-15
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	breq .L93
	cpi r24,lo8(3)
	brne .L92
	.loc 1 286 0
	movw r22,r12
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L117
.L93:
	.loc 1 294 0
	movw r22,r12
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L117:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL67:
.L92:
	.loc 1 301 0
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	st Z,r15
	rjmp .L75
.L72:
	.loc 1 310 0
	ldi r24,lo8(-1)
	rjmp .L120
.L123:
	.loc 1 260 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r18
	.loc 1 261 0
	cpi r24,lo8(1)
	breq .L119
.L75:
	.loc 1 314 0
	sts _ZL14kernel_request,__zero_reg__
	rjmp .L95
.L113:
	.loc 1 264 0
	cpi r24,lo8(1)
	brne .L75
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	brne .L75
	.loc 1 266 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r24
.L119:
	.loc 1 267 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L118:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL68:
	rjmp .L75
.LBE102:
.LBE104:
.LBE79:
.LBE78:
.LBE77:
	.cfi_endproc
.LFE27:
	.size	_Z7OS_Initv, .-_Z7OS_Initv
	.section	.text.Now,"ax",@progbits
.global	Now
	.type	Now, @function
Now:
.LFB30:
	.loc 1 1092 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB105:
	.loc 1 1096 0
	in r21,__SREG__
.LVL69:
	.loc 1 1097 0
/* #APP */
 ;  1097 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1100 0
/* #NOAPP */
	lds r20,_ZL13ticks_counter
	lds r24,132
	lds r25,132+1
	lds r18,_ZL21time_before_interrupt
	lds r19,_ZL21time_before_interrupt+1
.LVL70:
	.loc 1 1101 0
	out __SREG__,r21
	.loc 1 1100 0
	sub r24,r18
	sbc r25,r19
.LVL71:
	ldi r22,lo8(-48)
	ldi r23,lo8(7)
	call __udivmodhi4
.LVL72:
.LBE105:
	.loc 1 1104 0
	movw r24,r22
	ldi r18,lo8(5)
	mul r20,r18
	add r24,r0
	adc r25,r1
	clr __zero_reg__
	ret
	.cfi_endproc
.LFE30:
	.size	Now, .-Now
	.section	.text.Service_Init,"ax",@progbits
.global	Service_Init
	.type	Service_Init, @function
Service_Init:
.LFB31:
	.loc 1 1112 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB106:
	.loc 1 1115 0
	in r25,__SREG__
.LVL73:
	.loc 1 1116 0
/* #APP */
 ;  1116 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1118 0
/* #NOAPP */
	lds r24,_ZL12num_services
	cpi r24,lo8(10)
	brsh .L126
	.loc 1 1119 0
	ldi r18,lo8(16)
	mul r24,r18
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(_ZL12service_list))
	sbci r31,hi8(-(_ZL12service_list))
	std Z+15,__zero_reg__
	std Z+14,__zero_reg__
	.loc 1 1120 0
	subi r24,lo8(-(1))
	sts _ZL12num_services,r24
	.loc 1 1127 0
	out __SREG__,r25
	.loc 1 1129 0
	lds r24,_ZL12num_services
	ldi r18,lo8(16)
	mul r24,r18
	movw r24,r0
	clr __zero_reg__
	subi r24,lo8(-(_ZL12service_list-16))
	sbci r25,hi8(-(_ZL12service_list-16))
	ret
.L126:
	.loc 1 1123 0
	ldi r24,lo8(14)
	sts _ZL9error_msg,r24
	.loc 1 1124 0
	call OS_Abort
.LVL74:
.LBE106:
	.cfi_endproc
.LFE31:
	.size	Service_Init, .-Service_Init
	.section	.text.Service_Subscribe,"ax",@progbits
.global	Service_Subscribe
	.type	Service_Subscribe, @function
Service_Subscribe:
.LFB32:
	.loc 1 1141 0
	.cfi_startproc
.LVL75:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB107:
	.loc 1 1144 0
	in r28,__SREG__
.LVL76:
	.loc 1 1145 0
/* #APP */
 ;  1145 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1148 0
/* #NOAPP */
	lds r18,_ZL8cur_task
	lds r19,_ZL8cur_task+1
	movw r30,r18
	subi r30,-15
	sbci r31,-2
	ld r20,Z
	cpi r20,lo8(2)
	brne .L129
	.loc 1 1149 0
	ldi r24,lo8(13)
.LVL77:
	rjmp .L132
.LVL78:
.L129:
	.loc 1 1153 0
	movw r30,r24
	ldd r20,Z+14
	ldd r21,Z+15
	cpi r20,3
	cpc r21,__zero_reg__
	brge .L130
	movw r30,r20
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	.loc 1 1155 0
	std Z+1,r19
	st Z,r18
	.loc 1 1157 0
	std Z+7,r23
	std Z+6,r22
	.loc 1 1158 0
	subi r20,-1
	sbci r21,-1
	movw r30,r24
	std Z+15,r21
	std Z+14,r20
	.loc 1 1160 0
	movw r30,r18
	subi r30,-12
	sbci r31,-2
	ldi r24,lo8(3)
.LVL79:
	st Z,r24
	.loc 1 1161 0
	out __SREG__,r28
	.loc 1 1162 0
	call _ZL12enter_kernelv
.LVL80:
	.loc 1 1170 0
	out __SREG__,r28
/* epilogue start */
.LBE107:
	.loc 1 1172 0
	pop r28
.LVL81:
	ret
.LVL82:
.L130:
.LBB108:
	.loc 1 1166 0
	ldi r24,lo8(12)
.LVL83:
.L132:
	sts _ZL9error_msg,r24
	.loc 1 1167 0
	call OS_Abort
.LVL84:
.LBE108:
	.cfi_endproc
.LFE32:
	.size	Service_Subscribe, .-Service_Subscribe
	.section	.text.Service_Publish,"ax",@progbits
.global	Service_Publish
	.type	Service_Publish, @function
Service_Publish:
.LFB33:
	.loc 1 1183 0
	.cfi_startproc
.LVL85:
	push r10
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 10, -3
	push r11
.LCFI7:
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
.LCFI8:
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r13
.LCFI9:
	.cfi_def_cfa_offset 7
	.cfi_offset 13, -6
	push r14
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -7
	push r15
.LCFI11:
	.cfi_def_cfa_offset 9
	.cfi_offset 15, -8
	push r16
.LCFI12:
	.cfi_def_cfa_offset 10
	.cfi_offset 16, -9
	push r17
.LCFI13:
	.cfi_def_cfa_offset 11
	.cfi_offset 17, -10
	push r28
.LCFI14:
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
.LCFI15:
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r28,r24
	movw r12,r22
.LBB109:
	.loc 1 1186 0
	in r10,__SREG__
.LVL86:
	.loc 1 1187 0
/* #APP */
 ;  1187 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1190 0
/* #NOAPP */
	std Y+13,r23
	std Y+12,r22
.LVL87:
	movw r14,r24
.LBB110:
	.loc 1 1193 0
	ldi r16,0
	ldi r17,0
	.loc 1 1198 0
	ldi r27,lo8(2)
	mov r11,r27
.LVL88:
.L134:
	.loc 1 1193 0 discriminator 1
	ldd r24,Y+14
	ldd r25,Y+15
	cp r16,r24
	cpc r17,r25
	brge .L143
	.loc 1 1195 0
	movw r26,r14
	adiw r26,6
	ld r30,X+
	ld r31,X
	sbiw r26,6+1
	std Z+1,r13
	st Z,r12
	.loc 1 1198 0
	movw r30,r14
	ld r22,Z+
	ld r23,Z+
	movw r14,r30
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r11
	.loc 1 1201 0
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(3)
	brne .L135
	.loc 1 1202 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	call _ZL7enqueueP7queue_tP9td_struct
.LVL89:
	.loc 1 1203 0
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	movw r30,r22
	subi r30,-15
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	brne .L136
	.loc 1 1204 0
	sbiw r30,3
	st Z,r11
	rjmp .L142
.L136:
	.loc 1 1206 0
	cpi r24,lo8(2)
	brne .L137
	.loc 1 1207 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r24
	rjmp .L137
.L135:
	.loc 1 1210 0
	cpi r24,lo8(2)
	brne .L139
	.loc 1 1211 0
	ldi r24,lo8(10)
	sts _ZL9error_msg,r24
	.loc 1 1212 0
	call OS_Abort
.LVL90:
.L139:
	.loc 1 1214 0
	cpi r24,lo8(1)
	brne .L137
.L142:
	.loc 1 1215 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	call _ZL7enqueueP7queue_tP9td_struct
.LVL91:
.L137:
	.loc 1 1193 0
	subi r16,-1
	sbci r17,-1
.LVL92:
	rjmp .L134
.L143:
.LBE110:
	.loc 1 1224 0
	std Y+15,__zero_reg__
	std Y+14,__zero_reg__
	.loc 1 1225 0
	call _ZL12enter_kernelv
.LVL93:
	.loc 1 1226 0
	out __SREG__,r10
/* epilogue start */
.LBE109:
	.loc 1 1228 0
	pop r29
	pop r28
.LVL94:
	pop r17
	pop r16
.LVL95:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL96:
	pop r11
	pop r10
.LVL97:
	ret
	.cfi_endproc
.LFE33:
	.size	Service_Publish, .-Service_Publish
	.section	.text.Task_Create_System,"ax",@progbits
.global	Task_Create_System
	.type	Task_Create_System, @function
Task_Create_System:
.LFB34:
	.loc 1 1244 0
	.cfi_startproc
.LVL98:
	push r28
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB111:
	.loc 1 1248 0
	in r28,__SREG__
.LVL99:
	.loc 1 1249 0
/* #APP */
 ;  1249 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1251 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1252 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1253 0
	ldi r24,lo8(3)
.LVL100:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1255 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1256 0
	call _ZL12enter_kernelv
.LVL101:
	.loc 1 1258 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL102:
	.loc 1 1259 0
	out __SREG__,r28
/* epilogue start */
.LBE111:
	.loc 1 1262 0
	pop r28
.LVL103:
	ret
	.cfi_endproc
.LFE34:
	.size	Task_Create_System, .-Task_Create_System
	.section	.text.Task_Create_RR,"ax",@progbits
.global	Task_Create_RR
	.type	Task_Create_RR, @function
Task_Create_RR:
.LFB35:
	.loc 1 1265 0
	.cfi_startproc
.LVL104:
	push r28
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB112:
	.loc 1 1269 0
	in r28,__SREG__
.LVL105:
	.loc 1 1270 0
/* #APP */
 ;  1270 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1272 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1273 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1274 0
	ldi r24,lo8(1)
.LVL106:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1276 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1277 0
	call _ZL12enter_kernelv
.LVL107:
	.loc 1 1279 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL108:
	.loc 1 1280 0
	out __SREG__,r28
/* epilogue start */
.LBE112:
	.loc 1 1283 0
	pop r28
.LVL109:
	ret
	.cfi_endproc
.LFE35:
	.size	Task_Create_RR, .-Task_Create_RR
	.section	.text.Task_Create_Periodic,"ax",@progbits
.global	Task_Create_Periodic
	.type	Task_Create_Periodic, @function
Task_Create_Periodic:
.LFB36:
	.loc 1 1301 0
	.cfi_startproc
.LVL110:
	push r16
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB113:
	.loc 1 1305 0
	in r28,__SREG__
.LVL111:
	.loc 1 1306 0
/* #APP */
 ;  1306 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1308 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1309 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1310 0
	ldi r24,lo8(2)
.LVL112:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1311 0
	sts _ZL26kernel_request_create_args+9+1,r21
	sts _ZL26kernel_request_create_args+9,r20
	.loc 1 1312 0
	sts _ZL26kernel_request_create_args+11+1,r19
	sts _ZL26kernel_request_create_args+11,r18
	.loc 1 1313 0
	sts _ZL26kernel_request_create_args+13+1,r17
	sts _ZL26kernel_request_create_args+13,r16
	.loc 1 1314 0
	sts _ZL26kernel_request_create_args+5+1,r17
	sts _ZL26kernel_request_create_args+5,r16
	.loc 1 1315 0
	sts _ZL26kernel_request_create_args+7+1,r19
	sts _ZL26kernel_request_create_args+7,r18
	.loc 1 1320 0
	sts _ZL14kernel_request,r24
	.loc 1 1321 0
	call _ZL12enter_kernelv
.LVL113:
	.loc 1 1323 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL114:
	.loc 1 1324 0
	out __SREG__,r28
/* epilogue start */
.LBE113:
	.loc 1 1327 0
	pop r28
.LVL115:
	pop r17
	pop r16
.LVL116:
	ret
	.cfi_endproc
.LFE36:
	.size	Task_Create_Periodic, .-Task_Create_Periodic
	.section	.text.Task_Create,"ax",@progbits
.global	Task_Create
	.type	Task_Create, @function
Task_Create:
.LFB37:
	.loc 1 1346 0
	.cfi_startproc
.LVL117:
	push r28
.LCFI21:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB114:
	.loc 1 1350 0
	in r28,__SREG__
.LVL118:
	.loc 1 1351 0
/* #APP */
 ;  1351 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1353 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1354 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1355 0
	sts _ZL26kernel_request_create_args+4,r20
	.loc 1 1358 0
	ldi r24,lo8(2)
.LVL119:
	sts _ZL14kernel_request,r24
	.loc 1 1359 0
	call _ZL12enter_kernelv
.LVL120:
	.loc 1 1361 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL121:
	.loc 1 1362 0
	out __SREG__,r28
/* epilogue start */
.LBE114:
	.loc 1 1365 0
	pop r28
.LVL122:
	ret
	.cfi_endproc
.LFE37:
	.size	Task_Create, .-Task_Create
	.section	.text.Task_Next,"ax",@progbits
.global	Task_Next
	.type	Task_Next, @function
Task_Next:
.LFB38:
	.loc 1 1372 0
	.cfi_startproc
	push r28
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI23:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI24:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI25:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB115:
	.loc 1 1375 0
	in r24,__SREG__
	std Y+1,r24
	.loc 1 1376 0
/* #APP */
 ;  1376 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1378 0
/* #NOAPP */
	ldi r24,lo8(4)
	sts _ZL14kernel_request,r24
	.loc 1 1379 0
	call _ZL12enter_kernelv
.LVL123:
	.loc 1 1381 0
	ldd r24,Y+1
	out __SREG__,r24
/* epilogue start */
.LBE115:
	.loc 1 1382 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE38:
	.size	Task_Next, .-Task_Next
	.section	.text.Task_GetArg,"ax",@progbits
.global	Task_GetArg
	.type	Task_GetArg, @function
Task_GetArg:
.LFB40:
	.loc 1 1405 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB116:
	.loc 1 1409 0
	in r18,__SREG__
.LVL124:
	.loc 1 1410 0
/* #APP */
 ;  1410 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1412 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-13
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL125:
	.loc 1 1414 0
	out __SREG__,r18
.LBE116:
	.loc 1 1417 0
	ret
	.cfi_endproc
.LFE40:
	.size	Task_GetArg, .-Task_GetArg
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB42:
	.loc 1 1427 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1431 0
	call _Z7OS_Initv
.LVL126:
	.cfi_endproc
.LFE42:
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
	.section	.bss._ZL21time_before_interrupt,"aw",@nobits
	.type	_ZL21time_before_interrupt, @object
	.size	_ZL21time_before_interrupt, 2
_ZL21time_before_interrupt:
	.zero	2
	.section	.bss._ZL13ticks_counter,"aw",@nobits
	.type	_ZL13ticks_counter, @object
	.size	_ZL13ticks_counter, 1
_ZL13ticks_counter:
	.zero	1
	.section	.bss._ZL12num_services,"aw",@nobits
	.type	_ZL12num_services, @object
	.size	_ZL12num_services, 1
_ZL12num_services:
	.zero	1
	.section	.bss._ZL12service_list,"aw",@nobits
	.type	_ZL12service_list, @object
	.size	_ZL12service_list, 160
_ZL12service_list:
	.zero	160
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
	.size	_ZL26kernel_request_create_args, 15
_ZL26kernel_request_create_args:
	.zero	15
	.section	.bss._ZL14kernel_request,"aw",@nobits
	.type	_ZL14kernel_request, @object
	.size	_ZL14kernel_request, 1
_ZL14kernel_request:
	.zero	1
	.section	.bss._ZL9task_desc,"aw",@nobits
	.type	_ZL9task_desc, @object
	.size	_ZL9task_desc, 2484
_ZL9task_desc:
	.zero	2484
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
	.file 4 ".././os.h"
	.file 5 ".././kernel.h"
	.file 6 ".././error_code.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1066
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF134
	.byte	0x4
	.long	.LASF135
	.long	.LASF136
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x79
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x7a
	.long	0x4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x7b
	.long	0x5f
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x7c
	.long	0x29
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0x7e
	.long	0x83
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0xe0
	.long	0xa3
	.uleb128 0x5
	.long	.LASF39
	.byte	0x10
	.byte	0x5
	.byte	0xa3
	.long	0xe8
	.uleb128 0x6
	.long	.LASF13
	.byte	0x5
	.byte	0xa4
	.long	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0xa5
	.long	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0xa6
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0xa7
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x30
	.long	0xf3
	.uleb128 0x7
	.byte	0x2
	.long	0xf9
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x36
	.long	.LASF23
	.long	0x11f
	.uleb128 0xa
	.long	.LASF18
	.sleb128 0
	.uleb128 0xa
	.long	.LASF19
	.sleb128 1
	.uleb128 0xa
	.long	.LASF20
	.sleb128 2
	.uleb128 0xa
	.long	.LASF21
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x3c
	.long	0xfa
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x42
	.long	.LASF24
	.long	0x15b
	.uleb128 0xa
	.long	.LASF25
	.sleb128 0
	.uleb128 0xa
	.long	.LASF26
	.sleb128 1
	.uleb128 0xa
	.long	.LASF27
	.sleb128 2
	.uleb128 0xa
	.long	.LASF28
	.sleb128 3
	.uleb128 0xa
	.long	.LASF29
	.sleb128 4
	.uleb128 0xa
	.long	.LASF30
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.long	.LASF31
	.byte	0x5
	.byte	0x4a
	.long	0x12a
	.uleb128 0xb
	.byte	0xf
	.byte	0x5
	.byte	0x51
	.long	.LASF46
	.long	0x1e1
	.uleb128 0xc
	.string	"f"
	.byte	0x5
	.byte	0x53
	.long	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"arg"
	.byte	0x5
	.byte	0x55
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x57
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0x5a
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0x5d
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF34
	.byte	0x5
	.byte	0x60
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x63
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.byte	0x66
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x5
	.byte	0x68
	.long	0x166
	.uleb128 0x3
	.long	.LASF38
	.byte	0x5
	.byte	0x6b
	.long	0x1f7
	.uleb128 0xd
	.long	.LASF40
	.word	0x114
	.byte	0x5
	.byte	0x6f
	.long	0x2b7
	.uleb128 0x6
	.long	.LASF41
	.byte	0x5
	.byte	0x72
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"sp"
	.byte	0x5
	.byte	0x74
	.long	0x2ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0x76
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0x79
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.long	.LASF34
	.byte	0x5
	.byte	0x7c
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x7f
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.byte	0x82
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0x85
	.long	0x11f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"arg"
	.byte	0x5
	.byte	0x87
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x89
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0x6
	.long	.LASF43
	.byte	0x5
	.byte	0x8b
	.long	0x2d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x6
	.long	.LASF44
	.byte	0x5
	.byte	0x8d
	.long	0x2d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0xe
	.long	0x4d
	.long	0x2c7
	.uleb128 0xf
	.long	0x2c7
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF45
	.uleb128 0x10
	.long	0x2d3
	.uleb128 0x7
	.byte	0x2
	.long	0x42
	.uleb128 0x7
	.byte	0x2
	.long	0x1ec
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x91
	.long	.LASF47
	.long	0x308
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.byte	0x92
	.long	0x2d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x5
	.byte	0x93
	.long	0x2d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x5
	.byte	0x95
	.long	0x2df
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	.LASF51
	.long	0x33c
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.byte	0x9d
	.long	0x2d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x5
	.byte	0x9f
	.long	0x2d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0x5
	.byte	0xa1
	.long	0x313
	.uleb128 0xe
	.long	0x2d9
	.long	0x357
	.uleb128 0xf
	.long	0x2c7
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x367
	.long	0x367
	.uleb128 0xf
	.long	0x2c7
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x54
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.long	0x3d0
	.uleb128 0xa
	.long	.LASF53
	.sleb128 0
	.uleb128 0xa
	.long	.LASF54
	.sleb128 1
	.uleb128 0xa
	.long	.LASF55
	.sleb128 2
	.uleb128 0xa
	.long	.LASF56
	.sleb128 3
	.uleb128 0xa
	.long	.LASF57
	.sleb128 4
	.uleb128 0xa
	.long	.LASF58
	.sleb128 5
	.uleb128 0xa
	.long	.LASF59
	.sleb128 6
	.uleb128 0xa
	.long	.LASF60
	.sleb128 7
	.uleb128 0xa
	.long	.LASF61
	.sleb128 8
	.uleb128 0xa
	.long	.LASF62
	.sleb128 9
	.uleb128 0xa
	.long	.LASF63
	.sleb128 10
	.uleb128 0xa
	.long	.LASF64
	.sleb128 11
	.uleb128 0xa
	.long	.LASF65
	.sleb128 12
	.uleb128 0xa
	.long	.LASF66
	.sleb128 13
	.uleb128 0xa
	.long	.LASF67
	.sleb128 14
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF68
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.word	0x2e9
	.byte	0x1
	.long	0x3ff
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.word	0x2e9
	.long	0x3ff
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.word	0x2eb
	.long	0x2d9
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x308
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.word	0x36a
	.long	0x2d9
	.byte	0x1
	.long	0x431
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.word	0x36a
	.long	0x431
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.word	0x36c
	.long	0x2d9
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x33c
	.uleb128 0x17
	.long	.LASF74
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x476
	.uleb128 0x18
	.long	.LASF75
	.byte	0x2
	.byte	0x8e
	.long	0x476
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF76
	.byte	0x2
	.byte	0x90
	.long	0x476
	.uleb128 0x19
	.long	.LASF77
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF137
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x1b
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF78
	.uleb128 0x1c
	.long	.LASF97
	.byte	0x1
	.word	0x3f2
	.byte	0x1
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.word	0x318
	.long	0x2d9
	.byte	0x1
	.long	0x4ca
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.word	0x318
	.long	0x3ff
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.word	0x31a
	.long	0x2d9
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.word	0x31b
	.long	0x2d9
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.word	0x31c
	.long	0x5f
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.word	0x2f4
	.byte	0x1
	.long	0x4f0
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.word	0x2f4
	.long	0x3ff
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.word	0x2f4
	.long	0x2d9
	.byte	0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x1
	.word	0x334
	.byte	0x1
	.long	0x516
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.word	0x334
	.long	0x3ff
	.uleb128 0x13
	.long	.LASF86
	.byte	0x1
	.word	0x334
	.long	0x2d9
	.byte	0
	.uleb128 0x1d
	.long	.LASF87
	.byte	0x1
	.byte	0x81
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF88
	.byte	0x1
	.word	0x1b9
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF89
	.byte	0x1
	.word	0x1e6
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF138
	.byte	0x1
	.word	0x351
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x591
	.uleb128 0x20
	.long	.LASF70
	.byte	0x1
	.word	0x351
	.long	0x431
	.long	.LLST0
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.word	0x351
	.long	0x2d9
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
	.long	.LASF90
	.byte	0x1
	.word	0x56c
	.long	.LFB39
	.long	.LFE39
	.long	.LLST1
	.byte	0x1
	.long	0x5cf
	.uleb128 0x23
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x56e
	.long	0x42
	.long	.LLST2
	.uleb128 0x25
	.long	.LVL3
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x405
	.long	.LFB44
	.long	.LFE44
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x608
	.uleb128 0x27
	.long	0x416
	.byte	0x6
	.byte	0xfa
	.long	0x416
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x28
	.long	0x423
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
	.byte	0x1
	.long	.LASF139
	.byte	0x1
	.word	0x215
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x3ff
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7f8
	.uleb128 0x23
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.word	0x401
	.long	0x42
	.long	.LLST3
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.word	0x401
	.long	0x42
	.long	.LLST4
	.uleb128 0x24
	.long	.LASF93
	.byte	0x1
	.word	0x402
	.long	0x42
	.long	.LLST5
	.uleb128 0x24
	.long	.LASF94
	.byte	0x1
	.word	0x402
	.long	0x42
	.long	.LLST6
	.uleb128 0x2c
	.long	0x47d
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.word	0x41b
	.long	0x6ca
	.uleb128 0x2d
	.long	0x437
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.word	0x3f8
	.uleb128 0x2e
	.long	0x443
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2f
	.long	0x44f
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x30
	.long	0x45a
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x47d
	.long	.LBB35
	.long	.LBE35
	.byte	0x1
	.word	0x422
	.long	0x717
	.uleb128 0x2d
	.long	0x437
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.word	0x3f8
	.uleb128 0x2e
	.long	0x443
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2f
	.long	0x44f
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x30
	.long	0x45a
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x47d
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x42c
	.long	0x762
	.uleb128 0x2d
	.long	0x437
	.long	.LBB39
	.long	.LBE39
	.byte	0x1
	.word	0x3f8
	.uleb128 0x31
	.long	0x443
	.long	.LLST7
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x32
	.long	0x44f
	.long	.LLST8
	.uleb128 0x32
	.long	0x45a
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x47d
	.long	.LBB41
	.long	.LBE41
	.byte	0x1
	.word	0x433
	.long	0x7ad
	.uleb128 0x2d
	.long	0x437
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x3f8
	.uleb128 0x31
	.long	0x443
	.long	.LLST10
	.uleb128 0x23
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x32
	.long	0x44f
	.long	.LLST11
	.uleb128 0x32
	.long	0x45a
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x47d
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x439
	.uleb128 0x2d
	.long	0x437
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x3f8
	.uleb128 0x2e
	.long	0x443
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2f
	.long	0x44f
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x30
	.long	0x45a
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x465
	.byte	0
	.long	0x808
	.uleb128 0x1b
	.long	0x83
	.byte	0
	.uleb128 0x34
	.long	.LASF140
	.byte	0x1
	.word	0x25d
	.long	0x5f
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x8bd
	.uleb128 0x23
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.word	0x260
	.long	0x2d9
	.long	.LLST13
	.uleb128 0x24
	.long	.LASF95
	.byte	0x1
	.word	0x261
	.long	0x2d3
	.long	.LLST14
	.uleb128 0x35
	.long	.LASF96
	.byte	0x1
	.word	0x28f
	.long	0x2d3
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2c
	.long	0x4f0
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x2c7
	.long	0x882
	.uleb128 0x36
	.long	0x4fd
	.uleb128 0x31
	.long	0x509
	.long	.LLST15
	.byte	0
	.uleb128 0x37
	.long	.LVL34
	.long	0x5cf
	.long	0x8a9
	.uleb128 0x38
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
	.uleb128 0x39
	.long	0x416
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.byte	0
	.uleb128 0x25
	.long	.LVL40
	.long	0x554
	.uleb128 0x25
	.long	.LVL41
	.long	0x61e
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF98
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uleb128 0x17
	.long	.LASF99
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	0x8df
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0xbc
	.long	0x2d9
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF100
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF101
	.byte	0x1
	.word	0x37d
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.word	0x2db
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x3a7
	.long	.LASF141
	.long	.LFB27
	.long	.LFE27
	.long	.LLST16
	.byte	0x1
	.long	0xa9a
	.uleb128 0x23
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.word	0x3ab
	.long	0x5f
	.long	.LLST17
	.uleb128 0x2c
	.long	0x8bd
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.word	0x3e8
	.long	0xa63
	.uleb128 0x3c
	.long	0x8c5
	.long	.LBB80
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9a
	.long	0x9ac
	.uleb128 0x23
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x3d
	.long	0x8d2
	.uleb128 0x3e
	.long	0x486
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0xbc
	.long	0x9a1
	.uleb128 0x36
	.long	0x497
	.uleb128 0x23
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x32
	.long	0x4a4
	.long	.LLST18
	.uleb128 0x32
	.long	0x4b0
	.long	.LLST19
	.uleb128 0x32
	.long	0x4bc
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL56
	.long	0x5cf
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x8df
	.long	.LBB92
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xa1
	.long	0xa59
	.uleb128 0x3e
	.long	0x8e7
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.byte	0xee
	.long	0xa09
	.uleb128 0x2c
	.long	0x3d7
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.word	0x38f
	.long	0x9ff
	.uleb128 0x36
	.long	0x3e4
	.uleb128 0x23
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x32
	.long	0x3f1
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL58
	.long	0x61e
	.byte	0
	.uleb128 0x2c
	.long	0x8f0
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.word	0x116
	.long	0xa3d
	.uleb128 0x2d
	.long	0x4ca
	.long	.LBB100
	.long	.LBE100
	.byte	0x1
	.word	0x2e1
	.uleb128 0x36
	.long	0x4d7
	.uleb128 0x31
	.long	0x4e3
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL63
	.long	0x808
	.uleb128 0x25
	.long	.LVL67
	.long	0x554
	.uleb128 0x25
	.long	.LVL68
	.long	0x554
	.byte	0
	.uleb128 0x25
	.long	.LVL57
	.long	0x52a
	.byte	0
	.uleb128 0x25
	.long	.LVL44
	.long	0x808
	.uleb128 0x25
	.long	.LVL45
	.long	0x808
	.uleb128 0x3f
	.long	.LVL46
	.long	0x5cf
	.uleb128 0x38
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
	.uleb128 0x39
	.long	0x416
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Now"
	.byte	0x1
	.word	0x443
	.long	0x66
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xae3
	.uleb128 0x23
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x24
	.long	.LASF104
	.byte	0x1
	.word	0x445
	.long	0x66
	.long	.LLST23
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x446
	.long	0x42
	.long	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x457
	.long	0xb25
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb25
	.uleb128 0x23
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x459
	.long	0x42
	.long	.LLST25
	.uleb128 0x25
	.long	.LVL74
	.long	0x61e
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x98
	.uleb128 0x22
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x474
	.long	.LFB32
	.long	.LFE32
	.long	.LLST26
	.byte	0x1
	.long	0xb8a
	.uleb128 0x42
	.string	"s"
	.byte	0x1
	.word	0x474
	.long	0xb25
	.long	.LLST27
	.uleb128 0x42
	.string	"v"
	.byte	0x1
	.word	0x474
	.long	0x367
	.long	.LLST28
	.uleb128 0x43
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x476
	.long	0x42
	.long	.LLST29
	.uleb128 0x25
	.long	.LVL80
	.long	0x53f
	.uleb128 0x25
	.long	.LVL84
	.long	0x61e
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.word	0x49e
	.long	.LFB33
	.long	.LFE33
	.long	.LLST30
	.byte	0x1
	.long	0xc3d
	.uleb128 0x42
	.string	"s"
	.byte	0x1
	.word	0x49e
	.long	0xb25
	.long	.LLST31
	.uleb128 0x42
	.string	"v"
	.byte	0x1
	.word	0x49e
	.long	0x54
	.long	.LLST32
	.uleb128 0x23
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x4a0
	.long	0x42
	.long	.LLST33
	.uleb128 0x44
	.long	.LBB110
	.long	.LBE110
	.long	0xc32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.word	0x4a9
	.long	0x5f
	.long	.LLST34
	.uleb128 0x37
	.long	.LVL89
	.long	0x554
	.long	0xc10
	.uleb128 0x38
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
	.byte	0
	.uleb128 0x25
	.long	.LVL90
	.long	0x61e
	.uleb128 0x3f
	.long	.LVL91
	.long	0x554
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL93
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.word	0x4db
	.long	0x30
	.long	.LFB34
	.long	.LFE34
	.long	.LLST35
	.byte	0x1
	.long	0xcab
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x4db
	.long	0xf3
	.long	.LLST36
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x4db
	.long	0x54
	.long	.LLST37
	.uleb128 0x23
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x35
	.long	.LASF109
	.byte	0x1
	.word	0x4dd
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x4de
	.long	0x42
	.long	.LLST38
	.uleb128 0x25
	.long	.LVL101
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.word	0x4f0
	.long	0x30
	.long	.LFB35
	.long	.LFE35
	.long	.LLST39
	.byte	0x1
	.long	0xd19
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x4f0
	.long	0xf3
	.long	.LLST40
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x4f0
	.long	0x54
	.long	.LLST41
	.uleb128 0x23
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x35
	.long	.LASF109
	.byte	0x1
	.word	0x4f2
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x4f3
	.long	0x42
	.long	.LLST42
	.uleb128 0x25
	.long	.LVL107
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.word	0x514
	.long	0x30
	.long	.LFB36
	.long	.LFE36
	.long	.LLST43
	.byte	0x1
	.long	0xdb7
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x514
	.long	0xf3
	.long	.LLST44
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x514
	.long	0x54
	.long	.LLST45
	.uleb128 0x20
	.long	.LASF34
	.byte	0x1
	.word	0x514
	.long	0x66
	.long	.LLST46
	.uleb128 0x20
	.long	.LASF35
	.byte	0x1
	.word	0x514
	.long	0x66
	.long	.LLST47
	.uleb128 0x20
	.long	.LASF36
	.byte	0x1
	.word	0x514
	.long	0x66
	.long	.LLST48
	.uleb128 0x23
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x35
	.long	.LASF109
	.byte	0x1
	.word	0x516
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x517
	.long	0x42
	.long	.LLST49
	.uleb128 0x25
	.long	.LVL113
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.word	0x541
	.long	0x5f
	.long	.LFB37
	.long	.LFE37
	.long	.LLST50
	.byte	0x1
	.long	0xe4a
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x541
	.long	0xf3
	.long	.LLST51
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x541
	.long	0x5f
	.long	.LLST52
	.uleb128 0x20
	.long	.LASF32
	.byte	0x1
	.word	0x541
	.long	0x29
	.long	.LLST53
	.uleb128 0x20
	.long	.LASF113
	.byte	0x1
	.word	0x541
	.long	0x29
	.long	.LLST54
	.uleb128 0x23
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x35
	.long	.LASF109
	.byte	0x1
	.word	0x543
	.long	0x5f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.word	0x544
	.long	0x42
	.long	.LLST55
	.uleb128 0x25
	.long	.LVL120
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x55b
	.long	.LFB38
	.long	.LFE38
	.long	.LLST56
	.byte	0x1
	.long	0xe87
	.uleb128 0x23
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x35
	.long	.LASF92
	.byte	0x1
	.word	0x55d
	.long	0xe87
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x25
	.long	.LVL123
	.long	0x53f
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x42
	.uleb128 0x41
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.word	0x57c
	.long	0x5f
	.long	.LFB40
	.long	.LFE40
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xed6
	.uleb128 0x23
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x46
	.string	"arg"
	.byte	0x1
	.word	0x57e
	.long	0x5f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x35
	.long	.LASF92
	.byte	0x1
	.word	0x57f
	.long	0x42
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.word	0x592
	.long	0x5f
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xefe
	.uleb128 0x25
	.long	.LVL126
	.long	0x8f9
	.byte	0
	.uleb128 0x47
	.long	.LASF117
	.byte	0x1
	.byte	0x25
	.long	0x2d9
	.byte	0x5
	.byte	0x3
	.long	_ZL8cur_task
	.uleb128 0x47
	.long	.LASF118
	.byte	0x1
	.byte	0x2b
	.long	0xf20
	.byte	0x5
	.byte	0x3
	.long	_ZL9kernel_sp
	.uleb128 0x10
	.long	0x66
	.uleb128 0xe
	.long	0x1f7
	.long	0xf35
	.uleb128 0xf
	.long	0x2c7
	.byte	0x8
	.byte	0
	.uleb128 0x47
	.long	.LASF119
	.byte	0x1
	.byte	0x2e
	.long	0xf25
	.byte	0x5
	.byte	0x3
	.long	_ZL9task_desc
	.uleb128 0x47
	.long	.LASF120
	.byte	0x1
	.byte	0x31
	.long	0xf58
	.byte	0x6
	.byte	0x3
	.long	_ZL9task_desc+2208
	.byte	0x9f
	.uleb128 0x48
	.long	0x2d9
	.uleb128 0x47
	.long	.LASF121
	.byte	0x1
	.byte	0x34
	.long	0xf6e
	.byte	0x5
	.byte	0x3
	.long	_ZL14kernel_request
	.uleb128 0x10
	.long	0x15b
	.uleb128 0x47
	.long	.LASF122
	.byte	0x1
	.byte	0x37
	.long	0xf84
	.byte	0x5
	.byte	0x3
	.long	_ZL26kernel_request_create_args
	.uleb128 0x10
	.long	0x1e1
	.uleb128 0x47
	.long	.LASF123
	.byte	0x1
	.byte	0x3a
	.long	0xf9a
	.byte	0x5
	.byte	0x3
	.long	_ZL21kernel_request_retval
	.uleb128 0x10
	.long	0x5f
	.uleb128 0x47
	.long	.LASF124
	.byte	0x1
	.byte	0x3d
	.long	0x33c
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x47
	.long	.LASF125
	.byte	0x1
	.byte	0x40
	.long	0x33c
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x47
	.long	.LASF126
	.byte	0x1
	.byte	0x43
	.long	0x308
	.byte	0x5
	.byte	0x3
	.long	_ZL14periodic_queue
	.uleb128 0x47
	.long	.LASF127
	.byte	0x1
	.byte	0x46
	.long	0x33c
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0xe
	.long	0xa3
	.long	0xff3
	.uleb128 0xf
	.long	0x2c7
	.byte	0x9
	.byte	0
	.uleb128 0x47
	.long	.LASF128
	.byte	0x1
	.byte	0x48
	.long	0xfe3
	.byte	0x5
	.byte	0x3
	.long	_ZL12service_list
	.uleb128 0x47
	.long	.LASF129
	.byte	0x1
	.byte	0x49
	.long	0x42
	.byte	0x5
	.byte	0x3
	.long	_ZL12num_services
	.uleb128 0x47
	.long	.LASF130
	.byte	0x1
	.byte	0x4c
	.long	0xe87
	.byte	0x5
	.byte	0x3
	.long	_ZL13ticks_counter
	.uleb128 0x47
	.long	.LASF131
	.byte	0x1
	.byte	0x4d
	.long	0xf20
	.byte	0x5
	.byte	0x3
	.long	_ZL21time_before_interrupt
	.uleb128 0xe
	.long	0x2d9
	.long	0x1047
	.uleb128 0xf
	.long	0x2c7
	.byte	0x8
	.byte	0
	.uleb128 0x47
	.long	.LASF132
	.byte	0x1
	.byte	0x55
	.long	0x1037
	.byte	0x5
	.byte	0x3
	.long	_ZL16name_to_task_ptr
	.uleb128 0x47
	.long	.LASF133
	.byte	0x1
	.byte	0x5b
	.long	0xe87
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.long	.LFE24
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
	.long	.LFB39
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE39
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
	.long	.LFE39
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
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
	.word	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x30
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
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x8
	.byte	0x29
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
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
	.word	0x5
	.byte	0x3b
	.byte	0x82
	.sleb128 0
	.byte	0x1c
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
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.word	0x5
	.byte	0x3b
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL30
	.word	0x5
	.byte	0x3a
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.word	0x5
	.byte	0x44
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.word	0x5
	.byte	0x45
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL33
	.long	.LFE29
	.word	0x5
	.byte	0x44
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL20
	.long	.LVL31
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL8
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL11
	.long	.LFE29
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST7:
	.long	.LVL22
	.long	.LVL30
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41c80000
	.long	0
	.long	0
.LLST8:
	.long	.LVL22
	.long	.LVL30
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48c35000
	.long	0
	.long	0
.LLST9:
	.long	.LVL22
	.long	.LVL30
	.word	0x6
	.byte	0xc
	.long	0x61a80
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41c80000
	.long	0
	.long	0
.LLST11:
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x48c35000
	.long	0
	.long	0
.LLST12:
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0xc
	.long	0x61a80
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
	.long	.LVL40-1
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
	.long	.LVL37
	.long	.LVL40-1
	.word	0x4
	.byte	0x86
	.sleb128 255
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL38
	.long	.LVL39
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
	.long	.LFB27
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
	.long	.LFE27
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST17:
	.long	.LVL42
	.long	.LVL43
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL47
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL55
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL51
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51
	.long	.LVL55
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL47
	.long	.LVL55
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL61
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
	.long	.LVL64
	.long	.LVL65
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL70
	.long	.LVL71
	.word	0x18
	.byte	0x84
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x1e
	.byte	0x88
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x29
	.byte	0xa
	.word	0x7d0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL69
	.long	.LVL72
	.word	0x1
	.byte	0x65
	.long	.LVL72
	.long	.LFE30
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST25:
	.long	.LVL73
	.long	.LVL74-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST26:
	.long	.LFB32
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST27:
	.long	.LVL75
	.long	.LVL77
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL78
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LVL82
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL75
	.long	.LVL80-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80-1
	.long	.LVL82
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL82
	.long	.LVL84-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84-1
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL76
	.long	.LVL81
	.word	0x1
	.byte	0x6c
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	.LVL82
	.long	.LFE32
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST30:
	.long	.LFB33
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
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI15
	.long	.LFE33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	0
	.long	0
.LLST31:
	.long	.LVL85
	.long	.LVL88
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LVL94
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL85
	.long	.LVL88
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LVL96
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL86
	.long	.LVL97
	.word	0x1
	.byte	0x5a
	.long	.LVL97
	.long	.LFE33
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST34:
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LVL95
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST35:
	.long	.LFB34
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST36:
	.long	.LVL98
	.long	.LVL100
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL100
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL98
	.long	.LVL101-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL101-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL99
	.long	.LVL103
	.word	0x1
	.byte	0x6c
	.long	.LVL103
	.long	.LFE34
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST39:
	.long	.LFB35
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST40:
	.long	.LVL104
	.long	.LVL106
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL104
	.long	.LVL107-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL107-1
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL105
	.long	.LVL109
	.word	0x1
	.byte	0x6c
	.long	.LVL109
	.long	.LFE35
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST43:
	.long	.LFB36
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI20
	.long	.LFE36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST44:
	.long	.LVL110
	.long	.LVL112
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL112
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL110
	.long	.LVL113-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL113-1
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL110
	.long	.LVL113-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL113-1
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL110
	.long	.LVL113-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL113-1
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL110
	.long	.LVL116
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL116
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL111
	.long	.LVL115
	.word	0x1
	.byte	0x6c
	.long	.LVL115
	.long	.LFE36
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST50:
	.long	.LFB37
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI21
	.long	.LFE37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST51:
	.long	.LVL117
	.long	.LVL119
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL119
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL117
	.long	.LVL120-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL117
	.long	.LVL120-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL117
	.long	.LVL120-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL118
	.long	.LVL122
	.word	0x1
	.byte	0x6c
	.long	.LVL122
	.long	.LFE37
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST56:
	.long	.LFB38
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI25
	.long	.LFE38
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xbc
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB80
	.long	.LBE80
	.long	.LBB103
	.long	.LBE103
	.long	0
	.long	0
	.long	.LBB92
	.long	.LBE92
	.long	.LBB104
	.long	.LBE104
	.long	0
	.long	0
	.long	.LBB107
	.long	.LBE107
	.long	.LBB108
	.long	.LBE108
	.long	0
	.long	0
	.long	.LFB11
	.long	.LFE11
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB24
	.long	.LFE24
	.long	.LFB39
	.long	.LFE39
	.long	.LFB44
	.long	.LFE44
	.long	.LFB17
	.long	.LFE17
	.long	.LFB29
	.long	.LFE29
	.long	.LFB18
	.long	.LFE18
	.long	.LFB27
	.long	.LFE27
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB40
	.long	.LFE40
	.long	.LFB42
	.long	.LFE42
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"NONE"
.LASF130:
	.string	"ticks_counter"
.LASF82:
	.string	"collision_counter"
.LASF39:
	.string	"service"
.LASF99:
	.string	"kernel_dispatch"
.LASF141:
	.string	"_Z7OS_Initv"
.LASF96:
	.string	"stack_top"
.LASF50:
	.string	"linkedlist_t"
.LASF53:
	.string	"ERR_1_PPP_NAME_OUT_OF_RANGE"
.LASF104:
	.string	"ret_val"
.LASF44:
	.string	"prev"
.LASF97:
	.string	"_delay_25ms"
.LASF63:
	.string	"ERR_RUN_5_RTOS_INTERNAL_ERROR"
.LASF34:
	.string	"period"
.LASF138:
	.string	"enqueue"
.LASF11:
	.string	"long long unsigned int"
.LASF31:
	.string	"kernel_request_t"
.LASF38:
	.string	"task_descriptor_t"
.LASF20:
	.string	"READY"
.LASF70:
	.string	"queue_ptr"
.LASF43:
	.string	"next"
.LASF18:
	.string	"DEAD"
.LASF90:
	.string	"Task_Terminate"
.LASF5:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF136:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\project3\\\\project3\\\\project2\\\\Debug"
.LASF58:
	.string	"ERR_6_TIME_INTERVAL_IN_PPP_0"
.LASF22:
	.string	"task_state_t"
.LASF69:
	.string	"linkedlist_ptr"
.LASF42:
	.string	"state"
.LASF71:
	.string	"temp"
.LASF7:
	.string	"long int"
.LASF108:
	.string	"Task_Create_System"
.LASF21:
	.string	"WAITING"
.LASF27:
	.string	"TASK_CREATE"
.LASF114:
	.string	"Task_Next"
.LASF6:
	.string	"uint16_t"
.LASF78:
	.string	"double"
.LASF123:
	.string	"kernel_request_retval"
.LASF46:
	.string	"13create_args_t"
.LASF101:
	.string	"kernel_update_ticker"
.LASF117:
	.string	"cur_task"
.LASF131:
	.string	"time_before_interrupt"
.LASF94:
	.string	"mask"
.LASF76:
	.string	"__tmp"
.LASF35:
	.string	"wcet"
.LASF106:
	.string	"Service_Subscribe"
.LASF54:
	.string	"ERR_2_CREATE_NAME_OUT_OF_RANGE"
.LASF15:
	.string	"value"
.LASF55:
	.string	"ERR_3_PERIODIC_START_TIME_BELOW_CURRENT_TICK"
.LASF24:
	.string	"16kernel_request_t"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"TASK_TERMINATE"
.LASF139:
	.string	"__vector_17"
.LASF9:
	.string	"long unsigned int"
.LASF60:
	.string	"ERR_RUN_2_TOO_MANY_TASKS"
.LASF23:
	.string	"12task_state_t"
.LASF74:
	.string	"_delay_ms"
.LASF112:
	.string	"Task_Create"
.LASF32:
	.string	"level"
.LASF110:
	.string	"Task_Create_RR"
.LASF120:
	.string	"idle_task"
.LASF113:
	.string	"name"
.LASF86:
	.string	"task_to_add"
.LASF75:
	.string	"__ms"
.LASF51:
	.string	"7queue_t"
.LASF100:
	.string	"kernel_handle_request"
.LASF49:
	.string	"tail"
.LASF125:
	.string	"rr_queue"
.LASF26:
	.string	"TIMER_EXPIRED"
.LASF133:
	.string	"error_msg"
.LASF85:
	.string	"addlist"
.LASF33:
	.string	"remaining_wcet"
.LASF135:
	.string	".././os.cpp"
.LASF37:
	.string	"create_args_t"
.LASF118:
	.string	"kernel_sp"
.LASF13:
	.string	"tasks"
.LASF45:
	.string	"sizetype"
.LASF73:
	.string	"update_all_ticks"
.LASF47:
	.string	"12linkedlist_t"
.LASF105:
	.string	"Service_Init"
.LASF102:
	.string	"kernel_terminate_task"
.LASF79:
	.string	"dequeue"
.LASF29:
	.string	"TASK_NEXT"
.LASF87:
	.string	"idle"
.LASF72:
	.string	"task_ptr"
.LASF93:
	.string	"flashes"
.LASF64:
	.string	"ERR_RUN_6_PERIODIC_COLLISION"
.LASF52:
	.string	"queue_t"
.LASF115:
	.string	"Task_GetArg"
.LASF137:
	.string	"__builtin_avr_delay_cycles"
.LASF4:
	.string	"unsigned char"
.LASF121:
	.string	"kernel_request"
.LASF40:
	.string	"td_struct"
.LASF16:
	.string	"counter"
.LASF98:
	.string	"kernel_main_loop"
.LASF92:
	.string	"sreg"
.LASF19:
	.string	"RUNNING"
.LASF65:
	.string	"ERR_RUN_7_SUBSCRIBE_MAX_SUBSCRIBERS_REACHED"
.LASF134:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF80:
	.string	"get_next"
.LASF48:
	.string	"head"
.LASF95:
	.string	"stack_bottom"
.LASF57:
	.string	"ERR_5_PERIODIC_INVALID_INPUT"
.LASF8:
	.string	"uint32_t"
.LASF67:
	.string	"ERR_RUN_9_SERVICE_MAX_SERVICES_REACH"
.LASF84:
	.string	"task_to_delete"
.LASF88:
	.string	"exit_kernel"
.LASF68:
	.string	"char"
.LASF126:
	.string	"periodic_queue"
.LASF128:
	.string	"service_list"
.LASF107:
	.string	"Service_Publish"
.LASF103:
	.string	"OS_Init"
.LASF77:
	.string	"__ticks_dc"
.LASF14:
	.string	"valueLocations"
.LASF122:
	.string	"kernel_request_create_args"
.LASF2:
	.string	"int8_t"
.LASF66:
	.string	"ERR_RUN_8_SUBSCRIBE_PERIODIC_TASK"
.LASF81:
	.string	"found"
.LASF83:
	.string	"delete_task"
.LASF59:
	.string	"ERR_RUN_1_USER_CALLED_OS_ABORT"
.LASF89:
	.string	"enter_kernel"
.LASF127:
	.string	"system_queue"
.LASF119:
	.string	"task_desc"
.LASF3:
	.string	"uint8_t"
.LASF61:
	.string	"ERR_RUN_3_PERIODIC_TOOK_TOO_LONG"
.LASF17:
	.string	"voidfuncvoid_ptr"
.LASF129:
	.string	"num_services"
.LASF124:
	.string	"dead_pool_queue"
.LASF12:
	.string	"SERVICE"
.LASF109:
	.string	"retval"
.LASF56:
	.string	"ERR_4_PERIODIC_WCET_GREATER_THAN_PERIOD"
.LASF111:
	.string	"Task_Create_Periodic"
.LASF62:
	.string	"ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST"
.LASF132:
	.string	"name_to_task_ptr"
.LASF140:
	.string	"kernel_create_task"
.LASF36:
	.string	"start"
.LASF41:
	.string	"stack"
.LASF116:
	.string	"main"
.LASF30:
	.string	"TASK_GET_ARG"
.LASF91:
	.string	"OS_Abort"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
