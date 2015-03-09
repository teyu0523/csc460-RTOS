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
	.loc 1 124 0
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
	.loc 1 440 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 445 0
/* #APP */
 ;  445 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  445 ".././os.cpp" 1
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
	.loc 1 450 0
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts _ZL9kernel_sp+1,r25
	sts _ZL9kernel_sp,r24
	.loc 1 455 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	inc r31
	ld r24,Z
	ldd r25,Z+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 460 0
/* #APP */
 ;  460 ".././os.cpp" 1
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
 ;  460 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 471 0
 ;  471 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 472 0
/* #NOAPP */
	.cfi_endproc
.LFE15:
	.size	_ZL11exit_kernelv, .-_ZL11exit_kernelv
	.section	.text._ZL12enter_kernelv,"ax",@progbits
	.type	_ZL12enter_kernelv, @function
_ZL12enter_kernelv:
.LFB16:
	.loc 1 485 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 490 0
/* #APP */
 ;  490 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  490 ".././os.cpp" 1
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
	.loc 1 495 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 500 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 505 0
/* #APP */
 ;  505 ".././os.cpp" 1
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
 ;  505 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 513 0
 ;  513 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 514 0
/* #NOAPP */
	.cfi_endproc
.LFE16:
	.size	_ZL12enter_kernelv, .-_ZL12enter_kernelv
	.section	.text._ZL7enqueueP7queue_tP9td_struct,"ax",@progbits
	.type	_ZL7enqueueP7queue_tP9td_struct, @function
_ZL7enqueueP7queue_tP9td_struct:
.LFB24:
	.loc 1 853 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 854 0
	movw r26,r22
	subi r26,-16
	sbci r27,-2
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 856 0
	ld r24,Z
	ldd r25,Z+1
.LVL1:
	or r24,r25
	brne .L6
	.loc 1 859 0
	std Z+1,r23
	st Z,r22
	rjmp .L8
.L6:
	.loc 1 865 0
	ldd r26,Z+2
	ldd r27,Z+3
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
.L8:
	.loc 1 866 0
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
.LFB37:
	.loc 1 1286 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB30:
	.loc 1 1289 0
	in r28,__SREG__
.LVL2:
	.loc 1 1290 0
/* #APP */
 ;  1290 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1292 0
/* #NOAPP */
	ldi r24,lo8(3)
	sts _ZL14kernel_request,r24
	.loc 1 1293 0
	call _ZL12enter_kernelv
.LVL3:
	.loc 1 1295 0
	out __SREG__,r28
/* epilogue start */
.LBE30:
	.loc 1 1296 0
	pop r28
.LVL4:
	ret
	.cfi_endproc
.LFE37:
	.size	Task_Terminate, .-Task_Terminate
	.section	.text._ZL7dequeueP7queue_t.isra.1,"ax",@progbits
	.type	_ZL7dequeueP7queue_t.isra.1, @function
_ZL7dequeueP7queue_t.isra.1:
.LFB41:
	.loc 1 877 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
.LVL5:
.LBB31:
	.loc 1 879 0
	ld r24,X+
	ld r25,X
	sbiw r26,1
.LVL6:
	.loc 1 881 0
	sbiw r24,0
	breq .L12
	.loc 1 883 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	st X+,r18
	st X,r19
	.loc 1 884 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
.LBE31:
	.loc 1 888 0
	ret
	.cfi_endproc
.LFE41:
	.size	_ZL7dequeueP7queue_t.isra.1, .-_ZL7dequeueP7queue_t.isra.1
	.section	.text._ZL18kernel_create_taskv,"ax",@progbits
	.type	_ZL18kernel_create_taskv, @function
_ZL18kernel_create_taskv:
.LFB18:
	.loc 1 604 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB35:
	.loc 1 610 0
	lds r24,_ZL15dead_pool_queue
	lds r25,_ZL15dead_pool_queue+1
	or r24,r25
	brne .+2
	rjmp .L23
	.loc 1 641 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L24
	.loc 1 648 0
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL7:
	movw r22,r24
.LVL8:
	rjmp .L18
.LVL9:
.L24:
	.loc 1 643 0
	ldi r22,lo8(_ZL9task_desc+2208)
	ldi r23,hi8(_ZL9task_desc+2208)
.L18:
.LVL10:
	.loc 1 669 0
	movw r30,r22
	subi r30,39
	sbci r31,-1
	st Z,__zero_reg__
	.loc 1 671 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 680 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 681 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r25
	.loc 1 682 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r24
	.loc 1 683 0
	adiw r30,1
	st Z,__zero_reg__
	.loc 1 684 0
	ldi r24,lo8(gs(Task_Terminate))
	ldi r25,hi8(gs(Task_Terminate))
	adiw r30,1
	st Z,r25
	.loc 1 685 0
	adiw r30,1
	st Z,r24
	.loc 1 696 0
	adiw r30,1
	movw r24,r22
	subi r24,41
	sbci r25,-1
	std Z+1,r25
	st Z,r24
	.loc 1 698 0
	ldi r24,lo8(2)
	adiw r30,12
	st Z,r24
	.loc 1 699 0
	lds r24,_ZL26kernel_request_create_args+2
	lds r25,_ZL26kernel_request_create_args+2+1
	adiw r30,1
	std Z+1,r25
	st Z,r24
	.loc 1 700 0
	lds r24,_ZL26kernel_request_create_args+4
	adiw r30,2
	st Z,r24
	.loc 1 701 0
	lds r24,_ZL26kernel_request_create_args+9
	lds r25,_ZL26kernel_request_create_args+9+1
	sbiw r30,9
	std Z+1,r25
	st Z,r24
	.loc 1 702 0
	lds r24,_ZL26kernel_request_create_args+11
	lds r25,_ZL26kernel_request_create_args+11+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 703 0
	lds r24,_ZL26kernel_request_create_args+13
	lds r25,_ZL26kernel_request_create_args+13+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 704 0
	lds r24,_ZL26kernel_request_create_args+5
	lds r25,_ZL26kernel_request_create_args+5+1
	sbiw r30,6
	std Z+1,r25
	st Z,r24
	.loc 1 706 0
	lds r24,_ZL26kernel_request_create_args+7
	lds r25,_ZL26kernel_request_create_args+7+1
	sbiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 709 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	breq .L19
	cpi r24,lo8(3)
	breq .L20
	cpi r24,lo8(1)
	brne .L26
	.loc 1 722 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L28
.L20:
	.loc 1 713 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L28
.L19:
.LVL11:
.LBB36:
.LBB37:
	.loc 1 825 0
	movw r30,r22
	subi r30,-16
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 826 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L22
	.loc 1 829 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 830 0
	sts _ZL14periodic_queue+1,r23
	sts _ZL14periodic_queue,r22
	rjmp .L27
.L22:
	.loc 1 836 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
	.loc 1 837 0
	std Z+1,r25
	st Z,r24
.L27:
	.loc 1 838 0
	sts _ZL14periodic_queue+2+1,r23
	sts _ZL14periodic_queue+2,r22
	rjmp .L26
.LVL12:
.L28:
.LBE37:
.LBE36:
	.loc 1 722 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL13:
	rjmp .L26
.L23:
	.loc 1 613 0
	ldi r24,0
	ldi r25,0
	ret
.L26:
	.loc 1 731 0
	ldi r24,lo8(1)
	ldi r25,0
.LBE35:
	.loc 1 732 0
	ret
	.cfi_endproc
.LFE18:
	.size	_ZL18kernel_create_taskv, .-_ZL18kernel_create_taskv
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
.LFB17:
	.loc 1 532 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 545 0
/* #APP */
 ;  545 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
	.loc 1 547 0
 ;  547 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 549 0
 ;  549 ".././os.cpp" 1
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
	.loc 1 551 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 558 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 563 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 568 0
	ldi r30,lo8(-120)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	subi r24,-16
	sbci r25,-40
	std Z+1,r25
	st Z,r24
	.loc 1 573 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 578 0
/* #APP */
 ;  578 ".././os.cpp" 1
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
 ;  578 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 588 0
 ;  588 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 589 0
/* #NOAPP */
	.cfi_endproc
.LFE17:
	.size	__vector_17, .-__vector_17
	.section	.text.OS_Abort,"ax",@progbits
.global	OS_Abort
	.type	OS_Abort, @function
OS_Abort:
.LFB29:
	.loc 1 1019 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB38:
	.loc 1 1023 0
/* #APP */
 ;  1023 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1026 0
/* #NOAPP */
	ldi r24,lo8(96)
	sts 257,r24
	.loc 1 1028 0
	lds r24,_ZL9error_msg
	cpi r24,lo8(6)
	brsh .L31
	.loc 1 1030 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(1))
.LVL14:
	.loc 1 1031 0
	ldi r19,lo8(64)
	rjmp .L32
.LVL15:
.L31:
	.loc 1 1035 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL16:
	.loc 1 1036 0
	ldi r19,lo8(32)
.LVL17:
.L32:
	.loc 1 1042 0
	ldi r20,lo8(96)
.L44:
.LVL18:
	sts 258,r20
.LVL19:
	ldi r25,lo8(100)
.LVL20:
.L34:
.LBB39:
.LBB40:
.LBB41:
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
.LBE41:
.LBE40:
.LBE39:
	.loc 1 1044 0
	brne .L34
	.loc 1 1049 0
	sts 258,__zero_reg__
.LVL23:
	ldi r25,lo8(40)
.LVL24:
.L37:
.LBB42:
.LBB43:
.LBB44:
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
.LBE44:
.LBE43:
.LBE42:
	.loc 1 1051 0
	brne .L37
.LVL27:
.L36:
	.loc 1 1057 0 discriminator 1
	cp r25,r24
	breq .L46
	.loc 1 1059 0
	sts 258,r19
.LVL28:
	ldi r18,lo8(10)
.LVL29:
.L39:
.LBB45:
.LBB46:
.LBB47:
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
.LBE47:
.LBE46:
.LBE45:
	.loc 1 1061 0
	brne .L39
	.loc 1 1066 0
	sts 258,__zero_reg__
.LVL32:
	ldi r18,lo8(10)
.LVL33:
.L41:
.LBB48:
.LBB49:
.LBB50:
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
.LBE50:
.LBE49:
.LBE48:
	.loc 1 1068 0
	brne .L41
	.loc 1 1057 0
	subi r25,lo8(-(1))
.LVL36:
	rjmp .L36
.LVL37:
.L46:
	ldi r25,lo8(20)
.LVL38:
.L45:
.LBB51:
.LBB52:
.LBB53:
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
.LBE53:
.LBE52:
.LBE51:
	.loc 1 1074 0
	brne .L45
	rjmp .L44
.LBE38:
	.cfi_endproc
.LFE29:
	.size	OS_Abort, .-OS_Abort
	.section	.text._Z7OS_Initv,"ax",@progbits
.global	_Z7OS_Initv
	.type	_Z7OS_Initv, @function
_Z7OS_Initv:
.LFB27:
	.loc 1 938 0
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
.LBB79:
	.loc 1 943 0
	lds r24,129
	ori r24,lo8(2)
	sts 129,r24
.LVL41:
	ldi r30,lo8(_ZL9task_desc+268)
	ldi r31,hi8(_ZL9task_desc+268)
	ldi r26,lo8(_ZL16name_to_task_ptr)
	ldi r27,hi8(_ZL16name_to_task_ptr)
.LVL42:
.L49:
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
	brne .L49
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
.LVL43:
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
.LVL44:
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
.LVL45:
	.loc 1 988 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 989 0
	lds r24,132
	lds r25,132+1
	subi r24,-16
	sbci r25,-40
	sts 136+1,r25
	sts 136,r24
	.loc 1 991 0
	ldi r24,lo8(2)
	out 0x16,r24
.LBB80:
.LBB81:
.LBB82:
.LBB83:
.LBB84:
	.loc 1 211 0
	clr r14
	inc r14
.LBB85:
.LBB86:
	.loc 1 208 0
	ldi r16,lo8(_ZL9task_desc+2208)
	ldi r17,hi8(_ZL9task_desc+2208)
.LBE86:
.LBE85:
.LBE84:
.LBE83:
.LBE82:
.LBB94:
.LBB95:
	.loc 1 299 0
	ldi r24,lo8(2)
	mov r15,r24
.L88:
.LBE95:
.LBE94:
.LBB105:
.LBB93:
	.loc 1 175 0
	lds r24,_ZL8cur_task
	lds r25,_ZL8cur_task+1
	movw r30,r24
	subi r30,-12
	sbci r31,-2
	ld r18,Z
	cpi r18,lo8(1)
	brne .L50
	subi r24,lo8(_ZL9task_desc+2208)
	sbci r25,hi8(_ZL9task_desc+2208)
	breq .+2
	rjmp .L51
.L50:
.LBB92:
.LBB91:
	.loc 1 177 0
	lds r24,_ZL12system_queue
	lds r25,_ZL12system_queue+1
	or r24,r25
	breq .L52
	.loc 1 179 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L110
.L52:
.LBB90:
	.loc 1 182 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	sbiw r24,0
	breq .L59
.LBB87:
.LBB88:
.LBB89:
	.loc 1 798 0
	ldi r18,0
	ldi r19,0
	.loc 1 799 0
	ldi r20,0
	ldi r21,0
.L58:
.LVL46:
	.loc 1 803 0
	movw r30,r24
	subi r30,-4
	sbci r31,-2
	ld r22,Z
	ldd r23,Z+1
	cp __zero_reg__,r22
	cpc __zero_reg__,r23
	brlt .L55
	.loc 1 805 0
	movw r26,r24
	subi r26,-6
	sbci r27,-2
	ld r18,X+
	ld r19,X
.LVL47:
	std Z+1,r19
	st Z,r18
	.loc 1 806 0
	adiw r30,4
	ld r18,Z
	ldd r19,Z+1
	sbiw r30,6
	std Z+1,r19
	st Z,r18
.LVL48:
	.loc 1 808 0
	subi r20,-1
	sbci r21,-1
.LVL49:
	movw r18,r24
.LVL50:
.L55:
	.loc 1 810 0
	cpi r20,2
	cpc r21,__zero_reg__
	brlt .L56
	.loc 1 812 0
	ldi r24,lo8(11)
.LVL51:
	rjmp .L115
.LVL52:
.L56:
	.loc 1 815 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL53:
	.loc 1 801 0
	sbiw r24,0
	brne .L58
.LBE89:
.LBE88:
	.loc 1 186 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L59
	.loc 1 188 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	rjmp .L53
.LVL54:
.L59:
	.loc 1 191 0
	lds r24,_ZL8rr_queue
	lds r25,_ZL8rr_queue+1
	or r24,r25
	breq .L61
	.loc 1 193 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L110:
	call _ZL7dequeueP7queue_t.isra.1
.LVL55:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L53
.L61:
.LBE87:
	.loc 1 208 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
.L53:
.LBE90:
.LBE91:
	.loc 1 211 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-12
	sbci r31,-2
	st Z,r14
.L51:
.LBE92:
.LBE93:
.LBE105:
	.loc 1 150 0
	call _ZL11exit_kernelv
.LVL56:
.LBB106:
.LBB104:
	.loc 1 227 0
	lds r18,_ZL14kernel_request
	cpi r18,lo8(2)
	brne .+2
	rjmp .L63
	lds r12,_ZL8cur_task
	lds r13,_ZL8cur_task+1
	cpi r18,lo8(3)
	brsh .L64
	tst r18
	brne .+2
	rjmp .L65
	cpi r18,lo8(1)
	breq .L66
	rjmp .L62
.L64:
	cpi r18,lo8(4)
	brne .+2
	rjmp .L67
	brsh .+2
	rjmp .L68
	cpi r18,lo8(5)
	brne .+2
	rjmp .L65
	rjmp .L62
.L66:
.LBB96:
.LBB97:
	.loc 1 899 0
	lds r24,_ZL13ticks_counter
	subi r24,lo8(-(1))
	sts _ZL13ticks_counter,r24
	.loc 1 900 0
	movw r30,r12
	subi r30,-15
	sbci r31,-2
	ld r20,Z
	cpi r20,lo8(2)
	brne .L69
	sbiw r30,3
	ld r24,Z
	cpi r24,lo8(1)
	brne .L69
	.loc 1 902 0
	sbiw r30,10
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,1
	std Z+1,r25
	st Z,r24
	.loc 1 903 0
	adiw r30,6
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L69
	.loc 1 905 0
	ldi r24,lo8(8)
.L115:
	sts _ZL9error_msg,r24
	.loc 1 906 0
	call OS_Abort
.LVL57:
.L69:
	.loc 1 913 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
.LVL58:
.L70:
.LBB98:
.LBB99:
	.loc 1 755 0
	sbiw r24,0
	breq .L118
	.loc 1 757 0
	movw r30,r24
	subi r30,-4
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	subi r18,1
	sbc r19,__zero_reg__
	std Z+1,r19
	st Z,r18
	.loc 1 758 0
	adiw r30,12
	ld r24,Z
	ldd r25,Z+1
.LVL59:
	rjmp .L70
.L118:
.LBE99:
.LBE98:
.LBE97:
.LBE96:
	.loc 1 237 0
	cpi r20,lo8(1)
	breq .+2
	rjmp .L65
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	ld r24,Z
.LVL60:
	cpi r24,lo8(1)
	breq .+2
	rjmp .L65
	.loc 1 239 0
	st Z,r15
	.loc 1 240 0
	movw r22,r12
	rjmp .L117
.LVL61:
.L63:
	.loc 1 245 0
	std Y+1,r18
	call _ZL18kernel_create_taskv
.LVL62:
	sts _ZL21kernel_request_retval+1,r25
	sts _ZL21kernel_request_retval,r24
	.loc 1 250 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
	ldd r18,Y+1
	or r24,r25
	brne .+2
	rjmp .L65
	.loc 1 254 0
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	movw r30,r22
	subi r30,-15
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(3)
	brne .+2
	rjmp .L65
	lds r25,_ZL26kernel_request_create_args+4
	cpi r25,lo8(3)
	breq .+2
	rjmp .L109
	rjmp .L119
.L68:
	.loc 1 270 0
	ldi r31,lo8(_ZL9task_desc+2208)
	cp r12,r31
	ldi r31,hi8(_ZL9task_desc+2208)
	cpc r13,r31
	brne .+2
	rjmp .L65
.LBB100:
.LBB101:
	.loc 1 741 0
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	st Z,__zero_reg__
	.loc 1 742 0
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(2)
	breq .+2
	rjmp .L77
.LVL63:
.LBB102:
.LBB103:
	.loc 1 765 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	cp r24,r12
	cpc r25,r13
	brne .L78
	adiw r30,1
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L78
	.loc 1 767 0
	sts _ZL14periodic_queue+1,r19
	sts _ZL14periodic_queue,r18
	.loc 1 768 0
	movw r30,r18
	subi r30,-18
	sbci r31,-2
	rjmp .L112
.L78:
	.loc 1 770 0
	lds r18,_ZL14periodic_queue+2
	lds r19,_ZL14periodic_queue+2+1
	cp r18,r12
	cpc r19,r13
	brne .L82
	movw r30,r12
	subi r30,-18
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L80
	.loc 1 771 0
	sts _ZL14periodic_queue+2+1,r19
	sts _ZL14periodic_queue+2,r18
	.loc 1 772 0
	movw r30,r18
	subi r30,-16
	sbci r31,-2
.L112:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L77
.L80:
	.loc 1 774 0
	cp r24,r12
	cpc r25,r13
	brne .L82
	.loc 1 775 0
	sts _ZL14periodic_queue+2+1,__zero_reg__
	sts _ZL14periodic_queue+2,__zero_reg__
	.loc 1 776 0
	sts _ZL14periodic_queue+1,__zero_reg__
	sts _ZL14periodic_queue,__zero_reg__
	rjmp .L77
.LVL64:
.L83:
	.loc 1 788 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL65:
.L82:
	.loc 1 780 0
	sbiw r24,0
	breq .L77
	.loc 1 782 0
	cp r24,r12
	cpc r25,r13
	brne .L83
	.loc 1 783 0
	movw r30,r12
	subi r30,-18
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL66:
	.loc 1 784 0
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
	.loc 1 785 0
	movw r30,r18
	subi r30,-18
	sbci r31,-2
	std Z+1,r25
	st Z,r24
.LVL67:
.L77:
.LBE103:
.LBE102:
	.loc 1 746 0
	movw r22,r12
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
.L114:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL68:
	rjmp .L65
.L67:
.LBE101:
.LBE100:
	.loc 1 277 0
	movw r30,r12
	subi r30,-15
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	breq .L86
	cpi r24,lo8(3)
	brne .L85
	.loc 1 280 0
	movw r22,r12
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L113
.L86:
	.loc 1 292 0
	movw r22,r12
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L113:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL69:
.L85:
	.loc 1 299 0
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	st Z,r15
	rjmp .L65
.L62:
	.loc 1 308 0
	ldi r24,lo8(-1)
	rjmp .L115
.L119:
	.loc 1 256 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r18
	.loc 1 257 0
	cpi r24,lo8(1)
	breq .L117
.L65:
	.loc 1 312 0
	sts _ZL14kernel_request,__zero_reg__
	rjmp .L88
.L109:
	.loc 1 260 0
	cpi r24,lo8(1)
	brne .L65
	.loc 1 261 0
	lds r24,_ZL26kernel_request_create_args+4
	.loc 1 260 0
	cpi r24,lo8(2)
	brne .L65
	.loc 1 263 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r24
.L117:
	.loc 1 264 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L114
.LBE104:
.LBE106:
.LBE81:
.LBE80:
.LBE79:
	.cfi_endproc
.LFE27:
	.size	_Z7OS_Initv, .-_Z7OS_Initv
	.section	.text.Service_Subscribe,"ax",@progbits
.global	Service_Subscribe
	.type	Service_Subscribe, @function
Service_Subscribe:
.LFB30:
	.loc 1 1108 0
	.cfi_startproc
.LVL70:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE30:
	.size	Service_Subscribe, .-Service_Subscribe
	.section	.text.Service_Publish,"ax",@progbits
.global	Service_Publish
	.type	Service_Publish, @function
Service_Publish:
.LFB31:
	.loc 1 1121 0
	.cfi_startproc
.LVL71:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE31:
	.size	Service_Publish, .-Service_Publish
	.section	.text.Task_Create_System,"ax",@progbits
.global	Task_Create_System
	.type	Task_Create_System, @function
Task_Create_System:
.LFB32:
	.loc 1 1139 0
	.cfi_startproc
.LVL72:
	.loc 1 1139 0
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB107:
	.loc 1 1143 0
	in r28,__SREG__
.LVL73:
	.loc 1 1144 0
/* #APP */
 ;  1144 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1146 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1147 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1148 0
	ldi r24,lo8(3)
.LVL74:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1151 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1152 0
	call _ZL12enter_kernelv
.LVL75:
	.loc 1 1154 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL76:
	.loc 1 1155 0
	out __SREG__,r28
/* epilogue start */
.LBE107:
	.loc 1 1158 0
	pop r28
.LVL77:
	ret
	.cfi_endproc
.LFE32:
	.size	Task_Create_System, .-Task_Create_System
	.section	.text.Task_Create_RR,"ax",@progbits
.global	Task_Create_RR
	.type	Task_Create_RR, @function
Task_Create_RR:
.LFB33:
	.loc 1 1161 0
	.cfi_startproc
.LVL78:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB108:
	.loc 1 1165 0
	in r28,__SREG__
.LVL79:
	.loc 1 1166 0
/* #APP */
 ;  1166 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1168 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1169 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1170 0
	ldi r24,lo8(1)
.LVL80:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1173 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1174 0
	call _ZL12enter_kernelv
.LVL81:
	.loc 1 1176 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL82:
	.loc 1 1177 0
	out __SREG__,r28
/* epilogue start */
.LBE108:
	.loc 1 1180 0
	pop r28
.LVL83:
	ret
	.cfi_endproc
.LFE33:
	.size	Task_Create_RR, .-Task_Create_RR
	.section	.text.Task_Create_Periodic,"ax",@progbits
.global	Task_Create_Periodic
	.type	Task_Create_Periodic, @function
Task_Create_Periodic:
.LFB34:
	.loc 1 1198 0
	.cfi_startproc
.LVL84:
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
.LBB109:
	.loc 1 1202 0
	in r28,__SREG__
.LVL85:
	.loc 1 1203 0
/* #APP */
 ;  1203 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1205 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1206 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1207 0
	ldi r24,lo8(2)
.LVL86:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1208 0
	sts _ZL26kernel_request_create_args+9+1,r21
	sts _ZL26kernel_request_create_args+9,r20
	.loc 1 1209 0
	sts _ZL26kernel_request_create_args+11+1,r19
	sts _ZL26kernel_request_create_args+11,r18
	.loc 1 1210 0
	sts _ZL26kernel_request_create_args+13+1,r17
	sts _ZL26kernel_request_create_args+13,r16
	.loc 1 1211 0
	sts _ZL26kernel_request_create_args+5+1,r17
	sts _ZL26kernel_request_create_args+5,r16
	.loc 1 1212 0
	sts _ZL26kernel_request_create_args+7+1,r19
	sts _ZL26kernel_request_create_args+7,r18
	.loc 1 1217 0
	sts _ZL14kernel_request,r24
	.loc 1 1218 0
	call _ZL12enter_kernelv
.LVL87:
	.loc 1 1220 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL88:
	.loc 1 1221 0
	out __SREG__,r28
/* epilogue start */
.LBE109:
	.loc 1 1224 0
	pop r28
.LVL89:
	pop r17
	pop r16
.LVL90:
	ret
	.cfi_endproc
.LFE34:
	.size	Task_Create_Periodic, .-Task_Create_Periodic
	.section	.text.Task_Create,"ax",@progbits
.global	Task_Create
	.type	Task_Create, @function
Task_Create:
.LFB35:
	.loc 1 1243 0
	.cfi_startproc
.LVL91:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB110:
	.loc 1 1247 0
	in r28,__SREG__
.LVL92:
	.loc 1 1248 0
/* #APP */
 ;  1248 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1250 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1251 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1252 0
	sts _ZL26kernel_request_create_args+4,r20
	.loc 1 1255 0
	ldi r24,lo8(2)
.LVL93:
	sts _ZL14kernel_request,r24
	.loc 1 1256 0
	call _ZL12enter_kernelv
.LVL94:
	.loc 1 1258 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL95:
	.loc 1 1259 0
	out __SREG__,r28
/* epilogue start */
.LBE110:
	.loc 1 1262 0
	pop r28
.LVL96:
	ret
	.cfi_endproc
.LFE35:
	.size	Task_Create, .-Task_Create
	.section	.text.Task_Next,"ax",@progbits
.global	Task_Next
	.type	Task_Next, @function
Task_Next:
.LFB36:
	.loc 1 1269 0
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
.LBB111:
	.loc 1 1272 0
	in r24,__SREG__
	std Y+1,r24
	.loc 1 1273 0
/* #APP */
 ;  1273 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1275 0
/* #NOAPP */
	ldi r24,lo8(4)
	sts _ZL14kernel_request,r24
	.loc 1 1276 0
	call _ZL12enter_kernelv
.LVL97:
	.loc 1 1278 0
	ldd r24,Y+1
	out __SREG__,r24
/* epilogue start */
.LBE111:
	.loc 1 1279 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE36:
	.size	Task_Next, .-Task_Next
	.section	.text.Task_GetArg,"ax",@progbits
.global	Task_GetArg
	.type	Task_GetArg, @function
Task_GetArg:
.LFB38:
	.loc 1 1302 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB112:
	.loc 1 1306 0
	in r18,__SREG__
.LVL98:
	.loc 1 1307 0
/* #APP */
 ;  1307 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1309 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-13
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL99:
	.loc 1 1311 0
	out __SREG__,r18
.LBE112:
	.loc 1 1314 0
	ret
	.cfi_endproc
.LFE38:
	.size	Task_GetArg, .-Task_GetArg
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB39:
	.loc 1 1320 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1321 0
	call _Z7OS_Initv
.LVL100:
	.cfi_endproc
.LFE39:
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
	.section	.bss._ZL13ticks_counter,"aw",@nobits
	.type	_ZL13ticks_counter, @object
	.size	_ZL13ticks_counter, 1
_ZL13ticks_counter:
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
	.long	0xeab
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF121
	.byte	0x4
	.long	.LASF122
	.long	.LASF123
	.long	.Ldebug_ranges0+0x30
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
	.long	.LASF124
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
	.byte	0xf
	.byte	0x5
	.byte	0x4d
	.long	.LASF41
	.long	0x1a2
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
	.byte	0x56
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
	.byte	0x5a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x5b
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x5c
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x2
	.long	.LASF34
	.byte	0x5
	.byte	0x5e
	.long	0x127
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5
	.byte	0x61
	.long	0x1b8
	.uleb128 0xd
	.long	.LASF125
	.word	0x114
	.byte	0x5
	.byte	0x65
	.long	0x278
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x68
	.long	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"sp"
	.byte	0x5
	.byte	0x6a
	.long	0x28f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x6c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x6e
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x6f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x70
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x71
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x75
	.long	0xe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"arg"
	.byte	0x5
	.byte	0x77
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x79
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x7b
	.long	0x29a
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x7d
	.long	0x29a
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x288
	.uleb128 0xf
	.long	0x288
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF40
	.uleb128 0x10
	.long	0x294
	.uleb128 0x6
	.byte	0x2
	.long	0x3b
	.uleb128 0x6
	.byte	0x2
	.long	0x1ad
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x81
	.long	.LASF42
	.long	0x2c9
	.uleb128 0xc
	.long	.LASF43
	.byte	0x5
	.byte	0x82
	.long	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF44
	.byte	0x5
	.byte	0x83
	.long	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x5
	.byte	0x85
	.long	0x2a0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0x8b
	.long	.LASF46
	.long	0x2fd
	.uleb128 0xc
	.long	.LASF43
	.byte	0x5
	.byte	0x8d
	.long	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF44
	.byte	0x5
	.byte	0x8f
	.long	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x5
	.byte	0x91
	.long	0x2d4
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.long	0x359
	.uleb128 0x9
	.long	.LASF48
	.sleb128 0
	.uleb128 0x9
	.long	.LASF49
	.sleb128 1
	.uleb128 0x9
	.long	.LASF50
	.sleb128 2
	.uleb128 0x9
	.long	.LASF51
	.sleb128 3
	.uleb128 0x9
	.long	.LASF52
	.sleb128 4
	.uleb128 0x9
	.long	.LASF53
	.sleb128 5
	.uleb128 0x9
	.long	.LASF54
	.sleb128 6
	.uleb128 0x9
	.long	.LASF55
	.sleb128 7
	.uleb128 0x9
	.long	.LASF56
	.sleb128 8
	.uleb128 0x9
	.long	.LASF57
	.sleb128 9
	.uleb128 0x9
	.long	.LASF58
	.sleb128 10
	.uleb128 0x9
	.long	.LASF59
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF60
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.word	0x2f0
	.byte	0x1
	.long	0x388
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.word	0x2f0
	.long	0x388
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.word	0x2f2
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x2c9
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.word	0x36d
	.long	0x29a
	.byte	0x1
	.long	0x3ba
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.word	0x36d
	.long	0x3ba
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.word	0x36f
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.long	0x2fd
	.uleb128 0x17
	.long	.LASF66
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x3ff
	.uleb128 0x18
	.long	.LASF67
	.byte	0x2
	.byte	0x8e
	.long	0x3ff
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF68
	.byte	0x2
	.byte	0x90
	.long	0x3ff
	.uleb128 0x19
	.long	.LASF69
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF126
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x1b
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF70
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x1
	.word	0x3ed
	.byte	0x1
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.word	0x31b
	.long	0x29a
	.byte	0x1
	.long	0x453
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.word	0x31b
	.long	0x388
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.word	0x31d
	.long	0x29a
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.word	0x31e
	.long	0x29a
	.uleb128 0x15
	.long	.LASF74
	.byte	0x1
	.word	0x31f
	.long	0x58
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF75
	.byte	0x1
	.word	0x2fb
	.byte	0x1
	.long	0x487
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.word	0x2fb
	.long	0x388
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.word	0x2fb
	.long	0x29a
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.word	0x30b
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.word	0x337
	.byte	0x1
	.long	0x4ad
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.word	0x337
	.long	0x388
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.word	0x337
	.long	0x29a
	.byte	0
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x1
	.byte	0x7b
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF80
	.byte	0x1
	.word	0x1b7
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x1
	.word	0x1e4
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF127
	.byte	0x1
	.word	0x354
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x528
	.uleb128 0x20
	.long	.LASF62
	.byte	0x1
	.word	0x354
	.long	0x3ba
	.long	.LLST0
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x354
	.long	0x29a
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
	.long	.LASF85
	.byte	0x1
	.word	0x505
	.long	.LFB37
	.long	.LFE37
	.long	.LLST1
	.byte	0x1
	.long	0x566
	.uleb128 0x23
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.word	0x507
	.long	0x3b
	.long	.LLST2
	.uleb128 0x25
	.long	.LVL3
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x38e
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x59f
	.uleb128 0x27
	.long	0x39f
	.byte	0x6
	.byte	0xfa
	.long	0x39f
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
	.long	0x3ac
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
	.long	.LASF128
	.byte	0x1
	.word	0x25b
	.long	0x58
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x64b
	.uleb128 0x23
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.word	0x25e
	.long	0x29a
	.long	.LLST3
	.uleb128 0x24
	.long	.LASF83
	.byte	0x1
	.word	0x25f
	.long	0x294
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
	.word	0x296
	.long	0x294
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2c
	.long	0x487
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.word	0x2ce
	.long	0x619
	.uleb128 0x2d
	.long	0x494
	.uleb128 0x2e
	.long	0x4a0
	.long	.LLST5
	.byte	0
	.uleb128 0x2f
	.long	.LVL7
	.long	0x566
	.long	0x640
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
	.long	0x39f
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.byte	0
	.uleb128 0x25
	.long	.LVL13
	.long	0x4eb
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.word	0x213
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x3fa
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x83b
	.uleb128 0x23
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x3fc
	.long	0x3b
	.long	.LLST6
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.word	0x3fc
	.long	0x3b
	.long	.LLST7
	.uleb128 0x24
	.long	.LASF87
	.byte	0x1
	.word	0x3fd
	.long	0x3b
	.long	.LLST8
	.uleb128 0x24
	.long	.LASF88
	.byte	0x1
	.word	0x3fd
	.long	0x3b
	.long	.LLST9
	.uleb128 0x2c
	.long	0x406
	.long	.LBB39
	.long	.LBE39
	.byte	0x1
	.word	0x416
	.long	0x70d
	.uleb128 0x34
	.long	0x3c0
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x3f3
	.uleb128 0x35
	.long	0x3cc
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x36
	.long	0x3d8
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3e3
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x406
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x41d
	.long	0x75a
	.uleb128 0x34
	.long	0x3c0
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x3f3
	.uleb128 0x35
	.long	0x3cc
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x36
	.long	0x3d8
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3e3
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x406
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x427
	.long	0x7a5
	.uleb128 0x34
	.long	0x3c0
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.word	0x3f3
	.uleb128 0x2e
	.long	0x3cc
	.long	.LLST10
	.uleb128 0x23
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x38
	.long	0x3d8
	.long	.LLST11
	.uleb128 0x38
	.long	0x3e3
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x406
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.word	0x42e
	.long	0x7f0
	.uleb128 0x34
	.long	0x3c0
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x3f3
	.uleb128 0x2e
	.long	0x3cc
	.long	.LLST13
	.uleb128 0x23
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x38
	.long	0x3d8
	.long	.LLST14
	.uleb128 0x38
	.long	0x3e3
	.long	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x406
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x434
	.uleb128 0x34
	.long	0x3c0
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.word	0x3f3
	.uleb128 0x35
	.long	0x3cc
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x36
	.long	0x3d8
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3e3
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x3ee
	.byte	0
	.long	0x84b
	.uleb128 0x1b
	.long	0x83
	.byte	0
	.uleb128 0x3a
	.long	.LASF90
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.long	0x86d
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0xb9
	.long	0x29a
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF92
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x1
	.word	0x380
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x1
	.word	0x2e2
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.word	0x3a9
	.long	.LASF130
	.long	.LFB27
	.long	.LFE27
	.long	.LLST16
	.byte	0x1
	.long	0xa3f
	.uleb128 0x23
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x3ab
	.long	0x58
	.long	.LLST17
	.uleb128 0x2c
	.long	0x84b
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.word	0x3e4
	.long	0xa08
	.uleb128 0x3c
	.long	0x853
	.long	.LBB82
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x94
	.long	0x93a
	.uleb128 0x23
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x3d
	.long	0x860
	.uleb128 0x3e
	.long	0x40f
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.byte	0xb9
	.long	0x92f
	.uleb128 0x2d
	.long	0x420
	.uleb128 0x23
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x38
	.long	0x42d
	.long	.LLST18
	.uleb128 0x38
	.long	0x439
	.long	.LLST19
	.uleb128 0x38
	.long	0x445
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL55
	.long	0x566
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x86d
	.long	.LBB94
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x9b
	.long	0x9fe
	.uleb128 0x3e
	.long	0x875
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.byte	0xea
	.long	0x997
	.uleb128 0x2c
	.long	0x360
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.word	0x391
	.long	0x98d
	.uleb128 0x2d
	.long	0x36d
	.uleb128 0x23
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x38
	.long	0x37a
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL57
	.long	0x661
	.byte	0
	.uleb128 0x2c
	.long	0x87e
	.long	.LBB100
	.long	.LBE100
	.byte	0x1
	.word	0x110
	.long	0x9eb
	.uleb128 0x2c
	.long	0x453
	.long	.LBB102
	.long	.LBE102
	.byte	0x1
	.word	0x2e8
	.long	0x9e1
	.uleb128 0x2d
	.long	0x460
	.uleb128 0x2e
	.long	0x46c
	.long	.LLST22
	.uleb128 0x23
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x38
	.long	0x479
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL68
	.long	0x4eb
	.byte	0
	.uleb128 0x25
	.long	.LVL62
	.long	0x59f
	.uleb128 0x25
	.long	.LVL69
	.long	0x4eb
	.byte	0
	.uleb128 0x25
	.long	.LVL56
	.long	0x4c1
	.byte	0
	.uleb128 0x25
	.long	.LVL43
	.long	0x59f
	.uleb128 0x25
	.long	.LVL44
	.long	0x59f
	.uleb128 0x3f
	.long	.LVL45
	.long	0x566
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
	.long	0x39f
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x453
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa7c
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.word	0x453
	.long	0xa7c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x40
	.string	"v"
	.byte	0x1
	.word	0x453
	.long	0xa82
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
	.long	.LASF96
	.byte	0x1
	.word	0x460
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xac5
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.word	0x460
	.long	0xa7c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x40
	.string	"v"
	.byte	0x1
	.word	0x460
	.long	0x4d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.word	0x472
	.long	0x29
	.long	.LFB32
	.long	.LFE32
	.long	.LLST24
	.byte	0x1
	.long	0xb33
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x472
	.long	0xb4
	.long	.LLST25
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x472
	.long	0x4d
	.long	.LLST26
	.uleb128 0x23
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2b
	.long	.LASF99
	.byte	0x1
	.word	0x474
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.word	0x475
	.long	0x3b
	.long	.LLST27
	.uleb128 0x25
	.long	.LVL75
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x488
	.long	0x29
	.long	.LFB33
	.long	.LFE33
	.long	.LLST28
	.byte	0x1
	.long	0xba1
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x488
	.long	0xb4
	.long	.LLST29
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x488
	.long	0x4d
	.long	.LLST30
	.uleb128 0x23
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x2b
	.long	.LASF99
	.byte	0x1
	.word	0x48a
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.word	0x48b
	.long	0x3b
	.long	.LLST31
	.uleb128 0x25
	.long	.LVL81
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.word	0x4ad
	.long	0x29
	.long	.LFB34
	.long	.LFE34
	.long	.LLST32
	.byte	0x1
	.long	0xc3f
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x4ad
	.long	0xb4
	.long	.LLST33
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x4ad
	.long	0x4d
	.long	.LLST34
	.uleb128 0x20
	.long	.LASF31
	.byte	0x1
	.word	0x4ad
	.long	0x5f
	.long	.LLST35
	.uleb128 0x20
	.long	.LASF32
	.byte	0x1
	.word	0x4ad
	.long	0x5f
	.long	.LLST36
	.uleb128 0x20
	.long	.LASF33
	.byte	0x1
	.word	0x4ad
	.long	0x5f
	.long	.LLST37
	.uleb128 0x23
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x2b
	.long	.LASF99
	.byte	0x1
	.word	0x4af
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.word	0x4b0
	.long	0x3b
	.long	.LLST38
	.uleb128 0x25
	.long	.LVL87
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.word	0x4da
	.long	0x58
	.long	.LFB35
	.long	.LFE35
	.long	.LLST39
	.byte	0x1
	.long	0xcd2
	.uleb128 0x42
	.string	"f"
	.byte	0x1
	.word	0x4da
	.long	0xb4
	.long	.LLST40
	.uleb128 0x42
	.string	"arg"
	.byte	0x1
	.word	0x4da
	.long	0x58
	.long	.LLST41
	.uleb128 0x20
	.long	.LASF28
	.byte	0x1
	.word	0x4da
	.long	0x6a
	.long	.LLST42
	.uleb128 0x20
	.long	.LASF103
	.byte	0x1
	.word	0x4da
	.long	0x6a
	.long	.LLST43
	.uleb128 0x23
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x2b
	.long	.LASF99
	.byte	0x1
	.word	0x4dc
	.long	0x58
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.word	0x4dd
	.long	0x3b
	.long	.LLST44
	.uleb128 0x25
	.long	.LVL94
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x4f4
	.long	.LFB36
	.long	.LFE36
	.long	.LLST45
	.byte	0x1
	.long	0xd0f
	.uleb128 0x23
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x2b
	.long	.LASF82
	.byte	0x1
	.word	0x4f6
	.long	0xd0f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x25
	.long	.LVL97
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x3b
	.uleb128 0x43
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x515
	.long	0x58
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd5e
	.uleb128 0x23
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x44
	.string	"arg"
	.byte	0x1
	.word	0x517
	.long	0x58
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2b
	.long	.LASF82
	.byte	0x1
	.word	0x518
	.long	0x3b
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x527
	.long	0x58
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd86
	.uleb128 0x25
	.long	.LVL100
	.long	0x887
	.byte	0
	.uleb128 0x45
	.long	.LASF107
	.byte	0x1
	.byte	0x25
	.long	0x29a
	.byte	0x5
	.byte	0x3
	.long	_ZL8cur_task
	.uleb128 0x45
	.long	.LASF108
	.byte	0x1
	.byte	0x2b
	.long	0xda8
	.byte	0x5
	.byte	0x3
	.long	_ZL9kernel_sp
	.uleb128 0x10
	.long	0x5f
	.uleb128 0xe
	.long	0x1b8
	.long	0xdbd
	.uleb128 0xf
	.long	0x288
	.byte	0x8
	.byte	0
	.uleb128 0x45
	.long	.LASF109
	.byte	0x1
	.byte	0x2e
	.long	0xdad
	.byte	0x5
	.byte	0x3
	.long	_ZL9task_desc
	.uleb128 0x45
	.long	.LASF110
	.byte	0x1
	.byte	0x31
	.long	0xde0
	.byte	0x6
	.byte	0x3
	.long	_ZL9task_desc+2208
	.byte	0x9f
	.uleb128 0x46
	.long	0x29a
	.uleb128 0x45
	.long	.LASF111
	.byte	0x1
	.byte	0x34
	.long	0xdf6
	.byte	0x5
	.byte	0x3
	.long	_ZL14kernel_request
	.uleb128 0x10
	.long	0x11c
	.uleb128 0x45
	.long	.LASF112
	.byte	0x1
	.byte	0x37
	.long	0xe0c
	.byte	0x5
	.byte	0x3
	.long	_ZL26kernel_request_create_args
	.uleb128 0x10
	.long	0x1a2
	.uleb128 0x45
	.long	.LASF113
	.byte	0x1
	.byte	0x3a
	.long	0xe22
	.byte	0x5
	.byte	0x3
	.long	_ZL21kernel_request_retval
	.uleb128 0x10
	.long	0x58
	.uleb128 0x45
	.long	.LASF114
	.byte	0x1
	.byte	0x3d
	.long	0x2fd
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x45
	.long	.LASF115
	.byte	0x1
	.byte	0x40
	.long	0x2fd
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x45
	.long	.LASF116
	.byte	0x1
	.byte	0x43
	.long	0x2c9
	.byte	0x5
	.byte	0x3
	.long	_ZL14periodic_queue
	.uleb128 0x45
	.long	.LASF117
	.byte	0x1
	.byte	0x46
	.long	0x2fd
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0x45
	.long	.LASF118
	.byte	0x1
	.byte	0x49
	.long	0xd0f
	.byte	0x5
	.byte	0x3
	.long	_ZL13ticks_counter
	.uleb128 0xe
	.long	0x29a
	.long	0xe8c
	.uleb128 0xf
	.long	0x288
	.byte	0x8
	.byte	0
	.uleb128 0x45
	.long	.LASF119
	.byte	0x1
	.byte	0x52
	.long	0xe7c
	.byte	0x5
	.byte	0x3
	.long	_ZL16name_to_task_ptr
	.uleb128 0x45
	.long	.LASF120
	.byte	0x1
	.byte	0x58
	.long	0xd0f
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
	.uleb128 0x6
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.long	.LFB37
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE37
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
	.long	.LFE37
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
	.long	.LFE29
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
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL15
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL18
	.long	.LFE29
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
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL46
	.long	.LVL51
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
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
.LLST19:
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LVL50
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL50
	.long	.LVL54
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
	.long	.LVL46
	.long	.LVL54
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
	.long	.LVL58
	.long	.LVL60
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
	.long	.LVL63
	.long	.LVL67
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL64
	.long	.LVL67
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
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
.LLST25:
	.long	.LVL72
	.long	.LVL74
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL74
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL72
	.long	.LVL75-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75-1
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL73
	.long	.LVL77
	.word	0x1
	.byte	0x6c
	.long	.LVL77
	.long	.LFE32
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST28:
	.long	.LFB33
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST29:
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL78
	.long	.LVL81-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81-1
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL79
	.long	.LVL83
	.word	0x1
	.byte	0x6c
	.long	.LVL83
	.long	.LFE33
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST32:
	.long	.LFB34
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
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST33:
	.long	.LVL84
	.long	.LVL86
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL86
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL84
	.long	.LVL87-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL84
	.long	.LVL87-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL84
	.long	.LVL87-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL84
	.long	.LVL90
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL85
	.long	.LVL89
	.word	0x1
	.byte	0x6c
	.long	.LVL89
	.long	.LFE34
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST39:
	.long	.LFB35
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST40:
	.long	.LVL91
	.long	.LVL93
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL91
	.long	.LVL94-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94-1
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL91
	.long	.LVL94-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94-1
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL91
	.long	.LVL94-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94-1
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL92
	.long	.LVL96
	.word	0x1
	.byte	0x6c
	.long	.LVL96
	.long	.LFE35
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST45:
	.long	.LFB36
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
	.long	.LFE36
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB29
	.long	.LFE29-.LFB29
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
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB82
	.long	.LBE82
	.long	.LBB105
	.long	.LBE105
	.long	0
	.long	0
	.long	.LBB94
	.long	.LBE94
	.long	.LBB106
	.long	.LBE106
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
	.long	.LFB37
	.long	.LFE37
	.long	.LFB41
	.long	.LFE41
	.long	.LFB18
	.long	.LFE18
	.long	.LFB17
	.long	.LFE17
	.long	.LFB29
	.long	.LFE29
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
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"NONE"
.LASF118:
	.string	"ticks_counter"
.LASF74:
	.string	"collision_counter"
.LASF124:
	.string	"service"
.LASF91:
	.string	"kernel_dispatch"
.LASF130:
	.string	"_Z7OS_Initv"
.LASF84:
	.string	"stack_top"
.LASF45:
	.string	"linkedlist_t"
.LASF48:
	.string	"ERR_1_PPP_NAME_OUT_OF_RANGE"
.LASF39:
	.string	"prev"
.LASF89:
	.string	"_delay_25ms"
.LASF58:
	.string	"ERR_RUN_5_RTOS_INTERNAL_ERROR"
.LASF31:
	.string	"period"
.LASF127:
	.string	"enqueue"
.LASF11:
	.string	"long long unsigned int"
.LASF27:
	.string	"kernel_request_t"
.LASF35:
	.string	"task_descriptor_t"
.LASF16:
	.string	"READY"
.LASF62:
	.string	"queue_ptr"
.LASF38:
	.string	"next"
.LASF14:
	.string	"DEAD"
.LASF85:
	.string	"Task_Terminate"
.LASF4:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF53:
	.string	"ERR_6_TIME_INTERVAL_IN_PPP_0"
.LASF18:
	.string	"task_state_t"
.LASF61:
	.string	"linkedlist_ptr"
.LASF37:
	.string	"state"
.LASF7:
	.string	"long int"
.LASF98:
	.string	"Task_Create_System"
.LASF17:
	.string	"WAITING"
.LASF23:
	.string	"TASK_CREATE"
.LASF104:
	.string	"Task_Next"
.LASF5:
	.string	"uint16_t"
.LASF70:
	.string	"double"
.LASF113:
	.string	"kernel_request_retval"
.LASF41:
	.string	"13create_args_t"
.LASF93:
	.string	"kernel_update_ticker"
.LASF107:
	.string	"cur_task"
.LASF88:
	.string	"mask"
.LASF68:
	.string	"__tmp"
.LASF32:
	.string	"wcet"
.LASF95:
	.string	"Service_Subscribe"
.LASF49:
	.string	"ERR_2_CREATE_NAME_OUT_OF_RANGE"
.LASF63:
	.string	"temp"
.LASF20:
	.string	"16kernel_request_t"
.LASF6:
	.string	"unsigned int"
.LASF24:
	.string	"TASK_TERMINATE"
.LASF129:
	.string	"__vector_17"
.LASF9:
	.string	"long unsigned int"
.LASF55:
	.string	"ERR_RUN_2_TOO_MANY_TASKS"
.LASF19:
	.string	"12task_state_t"
.LASF66:
	.string	"_delay_ms"
.LASF102:
	.string	"Task_Create"
.LASF28:
	.string	"level"
.LASF100:
	.string	"Task_Create_RR"
.LASF110:
	.string	"idle_task"
.LASF103:
	.string	"name"
.LASF123:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF78:
	.string	"task_to_add"
.LASF67:
	.string	"__ms"
.LASF46:
	.string	"7queue_t"
.LASF51:
	.string	"ERR_4_PERIODIC_NAME_IN_USE"
.LASF92:
	.string	"kernel_handle_request"
.LASF115:
	.string	"rr_queue"
.LASF22:
	.string	"TIMER_EXPIRED"
.LASF120:
	.string	"error_msg"
.LASF77:
	.string	"addlist"
.LASF30:
	.string	"remaining_wcet"
.LASF122:
	.string	".././os.cpp"
.LASF34:
	.string	"create_args_t"
.LASF108:
	.string	"kernel_sp"
.LASF44:
	.string	"tail"
.LASF40:
	.string	"sizetype"
.LASF65:
	.string	"update_all_ticks"
.LASF42:
	.string	"12linkedlist_t"
.LASF71:
	.string	"dequeue"
.LASF25:
	.string	"TASK_NEXT"
.LASF79:
	.string	"idle"
.LASF64:
	.string	"task_ptr"
.LASF87:
	.string	"flashes"
.LASF52:
	.string	"ERR_5_NAME_NOT_IN_PPP"
.LASF59:
	.string	"ERR_RUN_6_PERIODIC_COLLISION"
.LASF47:
	.string	"queue_t"
.LASF105:
	.string	"Task_GetArg"
.LASF126:
	.string	"__builtin_avr_delay_cycles"
.LASF3:
	.string	"unsigned char"
.LASF111:
	.string	"kernel_request"
.LASF125:
	.string	"td_struct"
.LASF29:
	.string	"counter"
.LASF90:
	.string	"kernel_main_loop"
.LASF82:
	.string	"sreg"
.LASF15:
	.string	"RUNNING"
.LASF121:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF72:
	.string	"get_next"
.LASF43:
	.string	"head"
.LASF83:
	.string	"stack_bottom"
.LASF8:
	.string	"uint32_t"
.LASF76:
	.string	"task_to_delete"
.LASF80:
	.string	"exit_kernel"
.LASF60:
	.string	"char"
.LASF116:
	.string	"periodic_queue"
.LASF96:
	.string	"Service_Publish"
.LASF97:
	.string	"OS_Init"
.LASF69:
	.string	"__ticks_dc"
.LASF112:
	.string	"kernel_request_create_args"
.LASF0:
	.string	"int8_t"
.LASF73:
	.string	"found"
.LASF75:
	.string	"delete_task"
.LASF54:
	.string	"ERR_RUN_1_USER_CALLED_OS_ABORT"
.LASF50:
	.string	"ERR_3_PERIODIC_NAMED_IDLE"
.LASF81:
	.string	"enter_kernel"
.LASF117:
	.string	"system_queue"
.LASF109:
	.string	"task_desc"
.LASF1:
	.string	"uint8_t"
.LASF56:
	.string	"ERR_RUN_3_PERIODIC_TOOK_TOO_LONG"
.LASF13:
	.string	"voidfuncvoid_ptr"
.LASF114:
	.string	"dead_pool_queue"
.LASF12:
	.string	"SERVICE"
.LASF99:
	.string	"retval"
.LASF94:
	.string	"kernel_terminate_task"
.LASF101:
	.string	"Task_Create_Periodic"
.LASF57:
	.string	"ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST"
.LASF119:
	.string	"name_to_task_ptr"
.LASF128:
	.string	"kernel_create_task"
.LASF33:
	.string	"start"
.LASF36:
	.string	"stack"
.LASF106:
	.string	"main"
.LASF26:
	.string	"TASK_GET_ARG"
.LASF86:
	.string	"OS_Abort"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
