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
.LFB14:
	.file 1 ".././os.cpp"
	.loc 1 127 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	rjmp .L2
	.cfi_endproc
.LFE14:
	.size	_ZL4idlev, .-_ZL4idlev
	.section	.text._ZL11exit_kernelv,"ax",@progbits
	.type	_ZL11exit_kernelv, @function
_ZL11exit_kernelv:
.LFB18:
	.loc 1 439 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 444 0
/* #APP */
 ;  444 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  444 ".././os.cpp" 1
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
	.loc 1 449 0
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts _ZL9kernel_sp+1,r25
	sts _ZL9kernel_sp,r24
	.loc 1 454 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	inc r31
	ld r24,Z
	ldd r25,Z+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 459 0
/* #APP */
 ;  459 ".././os.cpp" 1
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
 ;  459 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 470 0
 ;  470 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 471 0
/* #NOAPP */
	.cfi_endproc
.LFE18:
	.size	_ZL11exit_kernelv, .-_ZL11exit_kernelv
	.section	.text._ZL12enter_kernelv,"ax",@progbits
	.type	_ZL12enter_kernelv, @function
_ZL12enter_kernelv:
.LFB19:
	.loc 1 484 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 489 0
/* #APP */
 ;  489 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
 ;  489 ".././os.cpp" 1
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
	.loc 1 494 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 499 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 504 0
/* #APP */
 ;  504 ".././os.cpp" 1
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
 ;  504 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 512 0
 ;  512 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 513 0
/* #NOAPP */
	.cfi_endproc
.LFE19:
	.size	_ZL12enter_kernelv, .-_ZL12enter_kernelv
	.section	.text._ZL7enqueueP7queue_tP9td_struct,"ax",@progbits
	.type	_ZL7enqueueP7queue_tP9td_struct, @function
_ZL7enqueueP7queue_tP9td_struct:
.LFB27:
	.loc 1 852 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 853 0
	movw r26,r22
	subi r26,-16
	sbci r27,-2
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 855 0
	ld r24,Z
	ldd r25,Z+1
.LVL1:
	or r24,r25
	brne .L6
	.loc 1 858 0
	std Z+1,r23
	st Z,r22
	rjmp .L8
.L6:
	.loc 1 864 0
	ldd r26,Z+2
	ldd r27,Z+3
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
.L8:
	.loc 1 865 0
	std Z+3,r23
	std Z+2,r22
	ret
	.cfi_endproc
.LFE27:
	.size	_ZL7enqueueP7queue_tP9td_struct, .-_ZL7enqueueP7queue_tP9td_struct
	.section	.text.Task_Terminate,"ax",@progbits
.global	Task_Terminate
	.type	Task_Terminate, @function
Task_Terminate:
.LFB41:
	.loc 1 1344 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB34:
	.loc 1 1347 0
	in r28,__SREG__
.LVL2:
	.loc 1 1348 0
/* #APP */
 ;  1348 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1350 0
/* #NOAPP */
	ldi r24,lo8(3)
	sts _ZL14kernel_request,r24
	.loc 1 1351 0
	call _ZL12enter_kernelv
.LVL3:
	.loc 1 1353 0
	out __SREG__,r28
/* epilogue start */
.LBE34:
	.loc 1 1354 0
	pop r28
.LVL4:
	ret
	.cfi_endproc
.LFE41:
	.size	Task_Terminate, .-Task_Terminate
	.section	.text._ZL7dequeueP7queue_t.isra.1,"ax",@progbits
	.type	_ZL7dequeueP7queue_t.isra.1, @function
_ZL7dequeueP7queue_t.isra.1:
.LFB45:
	.loc 1 876 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
.LVL5:
.LBB35:
	.loc 1 878 0
	ld r24,X+
	ld r25,X
	sbiw r26,1
.LVL6:
	.loc 1 880 0
	sbiw r24,0
	breq .L12
	.loc 1 882 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	st X+,r18
	st X,r19
	.loc 1 883 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
.LBE35:
	.loc 1 887 0
	ret
	.cfi_endproc
.LFE45:
	.size	_ZL7dequeueP7queue_t.isra.1, .-_ZL7dequeueP7queue_t.isra.1
	.section	.text._ZL18kernel_create_taskv,"ax",@progbits
	.type	_ZL18kernel_create_taskv, @function
_ZL18kernel_create_taskv:
.LFB21:
	.loc 1 603 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB39:
	.loc 1 609 0
	lds r24,_ZL15dead_pool_queue
	lds r25,_ZL15dead_pool_queue+1
	or r24,r25
	brne .+2
	rjmp .L23
	.loc 1 640 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L24
	.loc 1 647 0
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL7:
	movw r22,r24
.LVL8:
	rjmp .L18
.LVL9:
.L24:
	.loc 1 642 0
	ldi r22,lo8(_ZL9task_desc+2208)
	ldi r23,hi8(_ZL9task_desc+2208)
.L18:
.LVL10:
	.loc 1 668 0
	movw r30,r22
	subi r30,39
	sbci r31,-1
	st Z,__zero_reg__
	.loc 1 670 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 679 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 680 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r25
	.loc 1 681 0
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r24
	.loc 1 682 0
	adiw r30,1
	st Z,__zero_reg__
	.loc 1 683 0
	ldi r24,lo8(gs(Task_Terminate))
	ldi r25,hi8(gs(Task_Terminate))
	adiw r30,1
	st Z,r25
	.loc 1 684 0
	adiw r30,1
	st Z,r24
	.loc 1 695 0
	adiw r30,1
	movw r24,r22
	subi r24,41
	sbci r25,-1
	std Z+1,r25
	st Z,r24
	.loc 1 697 0
	ldi r24,lo8(2)
	adiw r30,12
	st Z,r24
	.loc 1 698 0
	lds r24,_ZL26kernel_request_create_args+2
	lds r25,_ZL26kernel_request_create_args+2+1
	adiw r30,1
	std Z+1,r25
	st Z,r24
	.loc 1 699 0
	lds r24,_ZL26kernel_request_create_args+4
	adiw r30,2
	st Z,r24
	.loc 1 700 0
	lds r24,_ZL26kernel_request_create_args+9
	lds r25,_ZL26kernel_request_create_args+9+1
	sbiw r30,9
	std Z+1,r25
	st Z,r24
	.loc 1 701 0
	lds r24,_ZL26kernel_request_create_args+11
	lds r25,_ZL26kernel_request_create_args+11+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 702 0
	lds r24,_ZL26kernel_request_create_args+13
	lds r25,_ZL26kernel_request_create_args+13+1
	adiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 703 0
	lds r24,_ZL26kernel_request_create_args+5
	lds r25,_ZL26kernel_request_create_args+5+1
	sbiw r30,6
	std Z+1,r25
	st Z,r24
	.loc 1 705 0
	lds r24,_ZL26kernel_request_create_args+7
	lds r25,_ZL26kernel_request_create_args+7+1
	sbiw r30,2
	std Z+1,r25
	st Z,r24
	.loc 1 708 0
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	breq .L19
	cpi r24,lo8(3)
	breq .L20
	cpi r24,lo8(1)
	brne .L26
	.loc 1 721 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L28
.L20:
	.loc 1 712 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L28
.L19:
.LVL11:
.LBB40:
.LBB41:
	.loc 1 824 0
	movw r30,r22
	subi r30,-16
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 825 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L22
	.loc 1 828 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 829 0
	sts _ZL14periodic_queue+1,r23
	sts _ZL14periodic_queue,r22
	rjmp .L27
.L22:
	.loc 1 835 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
	.loc 1 836 0
	std Z+1,r25
	st Z,r24
.L27:
	.loc 1 837 0
	sts _ZL14periodic_queue+2+1,r23
	sts _ZL14periodic_queue+2,r22
	rjmp .L26
.LVL12:
.L28:
.LBE41:
.LBE40:
	.loc 1 721 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL13:
	rjmp .L26
.L23:
	.loc 1 612 0
	ldi r24,0
	ldi r25,0
	ret
.L26:
	.loc 1 730 0
	ldi r24,lo8(1)
	ldi r25,0
.LBE39:
	.loc 1 731 0
	ret
	.cfi_endproc
.LFE21:
	.size	_ZL18kernel_create_taskv, .-_ZL18kernel_create_taskv
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
.LFB20:
	.loc 1 531 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 544 0
/* #APP */
 ;  544 ".././os.cpp" 1
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
	.loc 1 546 0
 ;  546 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 548 0
 ;  548 ".././os.cpp" 1
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
	.loc 1 550 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
	.loc 1 557 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 562 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 567 0
	ldi r30,lo8(-120)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	subi r24,-16
	sbci r25,-40
	std Z+1,r25
	st Z,r24
	.loc 1 572 0
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
	.loc 1 577 0
/* #APP */
 ;  577 ".././os.cpp" 1
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
 ;  577 ".././os.cpp" 1
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
	.loc 1 587 0
 ;  587 ".././os.cpp" 1
	ret

 ;  0 "" 2
/* epilogue start */
	.loc 1 588 0
/* #NOAPP */
	.cfi_endproc
.LFE20:
	.size	__vector_17, .-__vector_17
	.section	.text.OS_Abort,"ax",@progbits
.global	OS_Abort
	.type	OS_Abort, @function
OS_Abort:
.LFB32:
	.loc 1 1018 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB42:
	.loc 1 1022 0
/* #APP */
 ;  1022 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1025 0
/* #NOAPP */
	ldi r24,lo8(96)
	sts 257,r24
	.loc 1 1027 0
	lds r24,_ZL9error_msg
	cpi r24,lo8(6)
	brsh .L31
	.loc 1 1029 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(1))
.LVL14:
	.loc 1 1030 0
	ldi r19,lo8(64)
	rjmp .L32
.LVL15:
.L31:
	.loc 1 1034 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL16:
	.loc 1 1035 0
	ldi r19,lo8(32)
.LVL17:
.L32:
	.loc 1 1041 0
	ldi r20,lo8(96)
.L44:
.LVL18:
	sts 258,r20
.LVL19:
	ldi r25,lo8(100)
.LVL20:
.L34:
.LBB43:
.LBB44:
.LBB45:
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
.LBE45:
.LBE44:
.LBE43:
	.loc 1 1043 0
	brne .L34
	.loc 1 1048 0
	sts 258,__zero_reg__
.LVL23:
	ldi r25,lo8(40)
.LVL24:
.L37:
.LBB46:
.LBB47:
.LBB48:
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
.LBE48:
.LBE47:
.LBE46:
	.loc 1 1050 0
	brne .L37
.LVL27:
.L36:
	.loc 1 1056 0 discriminator 1
	cp r25,r24
	breq .L46
	.loc 1 1058 0
	sts 258,r19
.LVL28:
	ldi r18,lo8(10)
.LVL29:
.L39:
.LBB49:
.LBB50:
.LBB51:
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
.LBE51:
.LBE50:
.LBE49:
	.loc 1 1060 0
	brne .L39
	.loc 1 1065 0
	sts 258,__zero_reg__
.LVL32:
	ldi r18,lo8(10)
.LVL33:
.L41:
.LBB52:
.LBB53:
.LBB54:
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
.LBE54:
.LBE53:
.LBE52:
	.loc 1 1067 0
	brne .L41
	.loc 1 1056 0
	subi r25,lo8(-(1))
.LVL36:
	rjmp .L36
.LVL37:
.L46:
	ldi r25,lo8(20)
.LVL38:
.L45:
.LBB55:
.LBB56:
.LBB57:
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
.LBE57:
.LBE56:
.LBE55:
	.loc 1 1073 0
	brne .L45
	rjmp .L44
.LBE42:
	.cfi_endproc
.LFE32:
	.size	OS_Abort, .-OS_Abort
	.section	.text._Z7OS_Initv,"ax",@progbits
.global	_Z7OS_Initv
	.type	_Z7OS_Initv, @function
_Z7OS_Initv:
.LFB30:
	.loc 1 937 0
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
.LBB83:
	.loc 1 942 0
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
	.loc 1 957 0 discriminator 2
	st Z,__zero_reg__
	.loc 1 958 0 discriminator 2
	st X+,__zero_reg__
	st X+,__zero_reg__
	movw r24,r30
	adiw r24,8
	.loc 1 959 0 discriminator 2
	std Z+5,r25
	std Z+4,r24
	subi r30,-20
	sbci r31,-2
	.loc 1 955 0 discriminator 2
	ldi r18,hi8(_ZL9task_desc+2200)
	cpi r30,lo8(_ZL9task_desc+2200)
	cpc r31,r18
	brne .L49
	.loc 1 961 0
	sts _ZL9task_desc+2204+1,__zero_reg__
	sts _ZL9task_desc+2204,__zero_reg__
	.loc 1 962 0
	ldi r16,lo8(_ZL9task_desc)
	ldi r17,hi8(_ZL9task_desc)
	sts _ZL15dead_pool_queue+1,r17
	sts _ZL15dead_pool_queue,r16
	.loc 1 963 0
	ldi r24,lo8(_ZL9task_desc+1932)
	ldi r25,hi8(_ZL9task_desc+1932)
	sts _ZL15dead_pool_queue+2+1,r25
	sts _ZL15dead_pool_queue+2,r24
	.loc 1 966 0
	ldi r24,lo8(gs(_ZL4idlev))
	ldi r25,hi8(gs(_ZL4idlev))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 967 0
	sts _ZL26kernel_request_create_args+4,__zero_reg__
	.loc 1 968 0
	call _ZL18kernel_create_taskv
.LVL43:
	.loc 1 971 0
	ldi r24,lo8(gs(_Z6r_mainv))
	ldi r25,hi8(gs(_Z6r_mainv))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 972 0
	ldi r24,lo8(3)
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 973 0
	call _ZL18kernel_create_taskv
.LVL44:
	.loc 1 976 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
	.loc 1 977 0
	ldi r24,lo8(1)
	sts _ZL9task_desc+268,r24
	.loc 1 978 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL45:
	.loc 1 987 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 988 0
	lds r24,132
	lds r25,132+1
	subi r24,-16
	sbci r25,-40
	sts 136+1,r25
	sts 136,r24
	.loc 1 990 0
	ldi r24,lo8(2)
	out 0x16,r24
.LBB84:
.LBB85:
.LBB86:
.LBB87:
.LBB88:
	.loc 1 215 0
	clr r14
	inc r14
.LBB89:
.LBB90:
	.loc 1 212 0
	ldi r16,lo8(_ZL9task_desc+2208)
	ldi r17,hi8(_ZL9task_desc+2208)
.LBE90:
.LBE89:
.LBE88:
.LBE87:
.LBE86:
.LBB98:
.LBB99:
	.loc 1 298 0
	ldi r24,lo8(2)
	mov r15,r24
.L88:
.LBE99:
.LBE98:
.LBB109:
.LBB97:
	.loc 1 178 0
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
.LBB96:
.LBB95:
	.loc 1 180 0
	lds r24,_ZL12system_queue
	lds r25,_ZL12system_queue+1
	or r24,r25
	breq .L52
	.loc 1 182 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L110
.L52:
.LBB94:
	.loc 1 185 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	sbiw r24,0
	breq .L59
.LBB91:
.LBB92:
.LBB93:
	.loc 1 797 0
	ldi r18,0
	ldi r19,0
	.loc 1 798 0
	ldi r20,0
	ldi r21,0
.L58:
.LVL46:
	.loc 1 802 0
	movw r30,r24
	subi r30,-4
	sbci r31,-2
	ld r22,Z
	ldd r23,Z+1
	cp __zero_reg__,r22
	cpc __zero_reg__,r23
	brlt .L55
	.loc 1 804 0
	movw r26,r24
	subi r26,-6
	sbci r27,-2
	ld r18,X+
	ld r19,X
.LVL47:
	std Z+1,r19
	st Z,r18
	.loc 1 805 0
	adiw r30,4
	ld r18,Z
	ldd r19,Z+1
	sbiw r30,6
	std Z+1,r19
	st Z,r18
.LVL48:
	.loc 1 807 0
	subi r20,-1
	sbci r21,-1
.LVL49:
	movw r18,r24
.LVL50:
.L55:
	.loc 1 809 0
	cpi r20,2
	cpc r21,__zero_reg__
	brlt .L56
	.loc 1 811 0
	ldi r24,lo8(11)
.LVL51:
	rjmp .L115
.LVL52:
.L56:
	.loc 1 814 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL53:
	.loc 1 800 0
	sbiw r24,0
	brne .L58
.LBE93:
.LBE92:
	.loc 1 189 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L59
	.loc 1 192 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	rjmp .L53
.LVL54:
.L59:
	.loc 1 195 0
	lds r24,_ZL8rr_queue
	lds r25,_ZL8rr_queue+1
	or r24,r25
	breq .L61
	.loc 1 197 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L110:
	call _ZL7dequeueP7queue_t.isra.1
.LVL55:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L53
.L61:
.LBE91:
	.loc 1 212 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
.L53:
.LBE94:
.LBE95:
	.loc 1 215 0
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-12
	sbci r31,-2
	st Z,r14
.L51:
.LBE96:
.LBE97:
.LBE109:
	.loc 1 153 0
	call _ZL11exit_kernelv
.LVL56:
.LBB110:
.LBB108:
	.loc 1 231 0
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
.LBB100:
.LBB101:
	.loc 1 898 0
	lds r24,_ZL13ticks_counter
	subi r24,lo8(-(1))
	sts _ZL13ticks_counter,r24
	.loc 1 899 0
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
	.loc 1 901 0
	sbiw r30,10
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,1
	std Z+1,r25
	st Z,r24
	.loc 1 902 0
	adiw r30,6
	ld r24,Z
	ldd r25,Z+1
	or r24,r25
	brne .L69
	.loc 1 904 0
	ldi r24,lo8(8)
.L115:
	sts _ZL9error_msg,r24
	.loc 1 905 0
	call OS_Abort
.LVL57:
.L69:
	.loc 1 912 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
.LVL58:
.L70:
.LBB102:
.LBB103:
	.loc 1 754 0
	sbiw r24,0
	breq .L118
	.loc 1 756 0
	movw r30,r24
	subi r30,-4
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	subi r18,1
	sbc r19,__zero_reg__
	std Z+1,r19
	st Z,r18
	.loc 1 757 0
	adiw r30,12
	ld r24,Z
	ldd r25,Z+1
.LVL59:
	rjmp .L70
.L118:
.LBE103:
.LBE102:
.LBE101:
.LBE100:
	.loc 1 241 0
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
	.loc 1 243 0
	st Z,r15
	.loc 1 244 0
	movw r22,r12
	rjmp .L117
.LVL61:
.L63:
	.loc 1 249 0
	std Y+1,r18
	call _ZL18kernel_create_taskv
.LVL62:
	sts _ZL21kernel_request_retval+1,r25
	sts _ZL21kernel_request_retval,r24
	.loc 1 254 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
	ldd r18,Y+1
	or r24,r25
	brne .+2
	rjmp .L65
	.loc 1 258 0
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
	.loc 1 273 0
	ldi r31,lo8(_ZL9task_desc+2208)
	cp r12,r31
	ldi r31,hi8(_ZL9task_desc+2208)
	cpc r13,r31
	brne .+2
	rjmp .L65
.LBB104:
.LBB105:
	.loc 1 740 0
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	st Z,__zero_reg__
	.loc 1 741 0
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(2)
	breq .+2
	rjmp .L77
.LVL63:
.LBB106:
.LBB107:
	.loc 1 764 0
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
	.loc 1 766 0
	sts _ZL14periodic_queue+1,r19
	sts _ZL14periodic_queue,r18
	.loc 1 767 0
	movw r30,r18
	subi r30,-18
	sbci r31,-2
	rjmp .L112
.L78:
	.loc 1 769 0
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
	.loc 1 770 0
	sts _ZL14periodic_queue+2+1,r19
	sts _ZL14periodic_queue+2,r18
	.loc 1 771 0
	movw r30,r18
	subi r30,-16
	sbci r31,-2
.L112:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L77
.L80:
	.loc 1 773 0
	cp r24,r12
	cpc r25,r13
	brne .L82
	.loc 1 774 0
	sts _ZL14periodic_queue+2+1,__zero_reg__
	sts _ZL14periodic_queue+2,__zero_reg__
	.loc 1 775 0
	sts _ZL14periodic_queue+1,__zero_reg__
	sts _ZL14periodic_queue,__zero_reg__
	rjmp .L77
.LVL64:
.L83:
	.loc 1 787 0
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL65:
.L82:
	.loc 1 779 0
	sbiw r24,0
	breq .L77
	.loc 1 781 0
	cp r24,r12
	cpc r25,r13
	brne .L83
	.loc 1 782 0
	movw r30,r12
	subi r30,-18
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL66:
	.loc 1 783 0
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
	.loc 1 784 0
	movw r30,r18
	subi r30,-18
	sbci r31,-2
	std Z+1,r25
	st Z,r24
.LVL67:
.L77:
.LBE107:
.LBE106:
	.loc 1 745 0
	movw r22,r12
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
.L114:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL68:
	rjmp .L65
.L67:
.LBE105:
.LBE104:
	.loc 1 280 0
	movw r30,r12
	subi r30,-15
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
	breq .L86
	cpi r24,lo8(3)
	brne .L85
	.loc 1 283 0
	movw r22,r12
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L113
.L86:
	.loc 1 291 0
	movw r22,r12
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L113:
	call _ZL7enqueueP7queue_tP9td_struct
.LVL69:
.L85:
	.loc 1 298 0
	movw r30,r12
	subi r30,-12
	sbci r31,-2
	st Z,r15
	rjmp .L65
.L62:
	.loc 1 307 0
	ldi r24,lo8(-1)
	rjmp .L115
.L119:
	.loc 1 260 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r18
	.loc 1 261 0
	cpi r24,lo8(1)
	breq .L117
.L65:
	.loc 1 311 0
	sts _ZL14kernel_request,__zero_reg__
	rjmp .L88
.L109:
	.loc 1 264 0
	cpi r24,lo8(1)
	brne .L65
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	brne .L65
	.loc 1 266 0
	movw r30,r22
	subi r30,-12
	sbci r31,-2
	st Z,r24
.L117:
	.loc 1 267 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L114
.LBE108:
.LBE110:
.LBE85:
.LBE84:
.LBE83:
	.cfi_endproc
.LFE30:
	.size	_Z7OS_Initv, .-_Z7OS_Initv
	.section	.text.Service_Init,"ax",@progbits
.global	Service_Init
	.type	Service_Init, @function
Service_Init:
.LFB33:
	.loc 1 1094 0
	.cfi_startproc
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB111:
	.loc 1 1097 0
	in r28,__SREG__
.LVL70:
	.loc 1 1098 0
/* #APP */
 ;  1098 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1100 0
/* #NOAPP */
	ldi r24,lo8(16)
	ldi r25,0
	call _Znwj
.LVL71:
.LBB112:
.LBB113:
	.file 3 ".././kernel.h"
	.loc 3 153 0
	movw r30,r24
	std Z+15,__zero_reg__
	std Z+14,__zero_reg__
	.loc 3 154 0
	std Z+13,__zero_reg__
	std Z+12,__zero_reg__
.LVL72:
.LBE113:
.LBE112:
	.loc 1 1103 0
	out __SREG__,r28
/* epilogue start */
.LBE111:
	.loc 1 1106 0
	pop r28
.LVL73:
	ret
	.cfi_endproc
.LFE33:
	.size	Service_Init, .-Service_Init
	.section	.text.Service_Subscribe,"ax",@progbits
.global	Service_Subscribe
	.type	Service_Subscribe, @function
Service_Subscribe:
.LFB34:
	.loc 1 1117 0
	.cfi_startproc
.LVL74:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB114:
	.loc 1 1120 0
	in r28,__SREG__
.LVL75:
	.loc 1 1121 0
/* #APP */
 ;  1121 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1124 0
/* #NOAPP */
	lds r18,_ZL8cur_task
	lds r19,_ZL8cur_task+1
	movw r30,r18
	subi r30,-15
	sbci r31,-2
	ld r20,Z
	cpi r20,lo8(2)
	breq .L123
	.loc 1 1129 0
	movw r30,r24
	ldd r20,Z+14
	ldd r21,Z+15
	cpi r20,3
	cpc r21,__zero_reg__
	brge .L123
	movw r30,r20
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	.loc 1 1131 0
	std Z+1,r19
	st Z,r18
	.loc 1 1133 0
	std Z+7,r23
	std Z+6,r22
	.loc 1 1134 0
	subi r20,-1
	sbci r21,-1
	movw r30,r24
	std Z+15,r21
	std Z+14,r20
	.loc 1 1136 0
	movw r30,r18
	subi r30,-12
	sbci r31,-2
	ldi r24,lo8(3)
.LVL76:
	st Z,r24
	.loc 1 1137 0
	call _ZL12enter_kernelv
.LVL77:
	.loc 1 1145 0
	out __SREG__,r28
/* epilogue start */
.LBE114:
	.loc 1 1147 0
	pop r28
.LVL78:
	ret
.LVL79:
.L123:
.LBB115:
	.loc 1 1141 0
	ldi r24,lo8(10)
.LVL80:
	sts _ZL9error_msg,r24
	.loc 1 1142 0
	call OS_Abort
.LVL81:
.LBE115:
	.cfi_endproc
.LFE34:
	.size	Service_Subscribe, .-Service_Subscribe
	.section	.text.Service_Publish,"ax",@progbits
.global	Service_Publish
	.type	Service_Publish, @function
Service_Publish:
.LFB35:
	.loc 1 1158 0
	.cfi_startproc
.LVL82:
	push r28
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
.LBB116:
	.loc 1 1161 0
	in r20,__SREG__
.LVL83:
	.loc 1 1162 0
/* #APP */
 ;  1162 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1165 0
/* #NOAPP */
	adiw r26,12+1
	st X,r23
	st -X,r22
	sbiw r26,12
.LVL84:
	movw r30,r24
.LBB117:
	.loc 1 1168 0
	ldi r24,0
	ldi r25,0
.LVL85:
	.loc 1 1173 0
	ldi r21,lo8(2)
.LVL86:
.L126:
	.loc 1 1168 0 discriminator 1
	adiw r26,14
	ld r18,X+
	ld r19,X
	sbiw r26,14+1
	cp r24,r18
	cpc r25,r19
	brge .L128
	.loc 1 1170 0 discriminator 2
	ldd r28,Z+6
	ldd r29,Z+7
	std Y+1,r23
	st Y,r22
	.loc 1 1171 0 discriminator 2
	std Z+7,__zero_reg__
	std Z+6,__zero_reg__
	.loc 1 1173 0 discriminator 2
	ld r28,Z
	ldd r29,Z+1
	subi r28,-12
	sbci r29,-2
	st Y,r21
	.loc 1 1174 0 discriminator 2
	st Z+,__zero_reg__
	st Z+,__zero_reg__
	.loc 1 1168 0 discriminator 2
	adiw r24,1
.LVL87:
	rjmp .L126
.L128:
.LBE117:
	.loc 1 1177 0
	adiw r26,14+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,14
	.loc 1 1179 0
	out __SREG__,r20
/* epilogue start */
.LBE116:
	.loc 1 1181 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE35:
	.size	Service_Publish, .-Service_Publish
	.section	.text.Task_Create_System,"ax",@progbits
.global	Task_Create_System
	.type	Task_Create_System, @function
Task_Create_System:
.LFB36:
	.loc 1 1197 0
	.cfi_startproc
.LVL88:
	push r28
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB118:
	.loc 1 1201 0
	in r28,__SREG__
.LVL89:
	.loc 1 1202 0
/* #APP */
 ;  1202 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1204 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1205 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1206 0
	ldi r24,lo8(3)
.LVL90:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1209 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1210 0
	call _ZL12enter_kernelv
.LVL91:
	.loc 1 1212 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL92:
	.loc 1 1213 0
	out __SREG__,r28
/* epilogue start */
.LBE118:
	.loc 1 1216 0
	pop r28
.LVL93:
	ret
	.cfi_endproc
.LFE36:
	.size	Task_Create_System, .-Task_Create_System
	.section	.text.Task_Create_RR,"ax",@progbits
.global	Task_Create_RR
	.type	Task_Create_RR, @function
Task_Create_RR:
.LFB37:
	.loc 1 1219 0
	.cfi_startproc
.LVL94:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB119:
	.loc 1 1223 0
	in r28,__SREG__
.LVL95:
	.loc 1 1224 0
/* #APP */
 ;  1224 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1226 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1227 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1228 0
	ldi r24,lo8(1)
.LVL96:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1231 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1232 0
	call _ZL12enter_kernelv
.LVL97:
	.loc 1 1234 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL98:
	.loc 1 1235 0
	out __SREG__,r28
/* epilogue start */
.LBE119:
	.loc 1 1238 0
	pop r28
.LVL99:
	ret
	.cfi_endproc
.LFE37:
	.size	Task_Create_RR, .-Task_Create_RR
	.section	.text.Task_Create_Periodic,"ax",@progbits
.global	Task_Create_Periodic
	.type	Task_Create_Periodic, @function
Task_Create_Periodic:
.LFB38:
	.loc 1 1256 0
	.cfi_startproc
.LVL100:
	push r16
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB120:
	.loc 1 1260 0
	in r28,__SREG__
.LVL101:
	.loc 1 1261 0
/* #APP */
 ;  1261 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1263 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1264 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1265 0
	ldi r24,lo8(2)
.LVL102:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1266 0
	sts _ZL26kernel_request_create_args+9+1,r21
	sts _ZL26kernel_request_create_args+9,r20
	.loc 1 1267 0
	sts _ZL26kernel_request_create_args+11+1,r19
	sts _ZL26kernel_request_create_args+11,r18
	.loc 1 1268 0
	sts _ZL26kernel_request_create_args+13+1,r17
	sts _ZL26kernel_request_create_args+13,r16
	.loc 1 1269 0
	sts _ZL26kernel_request_create_args+5+1,r17
	sts _ZL26kernel_request_create_args+5,r16
	.loc 1 1270 0
	sts _ZL26kernel_request_create_args+7+1,r19
	sts _ZL26kernel_request_create_args+7,r18
	.loc 1 1275 0
	sts _ZL14kernel_request,r24
	.loc 1 1276 0
	call _ZL12enter_kernelv
.LVL103:
	.loc 1 1278 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL104:
	.loc 1 1279 0
	out __SREG__,r28
/* epilogue start */
.LBE120:
	.loc 1 1282 0
	pop r28
.LVL105:
	pop r17
	pop r16
.LVL106:
	ret
	.cfi_endproc
.LFE38:
	.size	Task_Create_Periodic, .-Task_Create_Periodic
	.section	.text.Task_Create,"ax",@progbits
.global	Task_Create
	.type	Task_Create, @function
Task_Create:
.LFB39:
	.loc 1 1301 0
	.cfi_startproc
.LVL107:
	push r28
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB121:
	.loc 1 1305 0
	in r28,__SREG__
.LVL108:
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
	sts _ZL26kernel_request_create_args+4,r20
	.loc 1 1313 0
	ldi r24,lo8(2)
.LVL109:
	sts _ZL14kernel_request,r24
	.loc 1 1314 0
	call _ZL12enter_kernelv
.LVL110:
	.loc 1 1316 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL111:
	.loc 1 1317 0
	out __SREG__,r28
/* epilogue start */
.LBE121:
	.loc 1 1320 0
	pop r28
.LVL112:
	ret
	.cfi_endproc
.LFE39:
	.size	Task_Create, .-Task_Create
	.section	.text.Task_Next,"ax",@progbits
.global	Task_Next
	.type	Task_Next, @function
Task_Next:
.LFB40:
	.loc 1 1327 0
	.cfi_startproc
	push r28
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI17:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI18:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB122:
	.loc 1 1330 0
	in r24,__SREG__
	std Y+1,r24
	.loc 1 1331 0
/* #APP */
 ;  1331 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1333 0
/* #NOAPP */
	ldi r24,lo8(4)
	sts _ZL14kernel_request,r24
	.loc 1 1334 0
	call _ZL12enter_kernelv
.LVL113:
	.loc 1 1336 0
	ldd r24,Y+1
	out __SREG__,r24
/* epilogue start */
.LBE122:
	.loc 1 1337 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE40:
	.size	Task_Next, .-Task_Next
	.section	.text.Task_GetArg,"ax",@progbits
.global	Task_GetArg
	.type	Task_GetArg, @function
Task_GetArg:
.LFB42:
	.loc 1 1360 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB123:
	.loc 1 1364 0
	in r18,__SREG__
.LVL114:
	.loc 1 1365 0
/* #APP */
 ;  1365 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1367 0
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-13
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL115:
	.loc 1 1369 0
	out __SREG__,r18
.LBE123:
	.loc 1 1372 0
	ret
	.cfi_endproc
.LFE42:
	.size	Task_GetArg, .-Task_GetArg
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB43:
	.loc 1 1378 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1379 0
	call _Z7OS_Initv
.LVL116:
	.cfi_endproc
.LFE43:
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
	.file 4 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 5 ".././os.h"
	.file 6 ".././error_code.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x102a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF129
	.byte	0x4
	.long	.LASF130
	.long	.LASF131
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0xe0
	.long	0xa3
	.uleb128 0x5
	.long	.LASF39
	.byte	0x10
	.byte	0x3
	.byte	0x93
	.long	0xfc
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x94
	.long	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x95
	.long	0x36b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x96
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x97
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.byte	0x1
	.long	.LASF39
	.byte	0x3
	.byte	0x98
	.byte	0x1
	.long	0xf4
	.uleb128 0x8
	.long	0x381
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x2c
	.long	0x107
	.uleb128 0x9
	.byte	0x2
	.long	0x10d
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x32
	.long	.LASF23
	.long	0x133
	.uleb128 0xc
	.long	.LASF18
	.sleb128 0
	.uleb128 0xc
	.long	.LASF19
	.sleb128 1
	.uleb128 0xc
	.long	.LASF20
	.sleb128 2
	.uleb128 0xc
	.long	.LASF21
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x38
	.long	0x10e
	.uleb128 0xb
	.byte	0x1
	.byte	0x3
	.byte	0x3e
	.long	.LASF24
	.long	0x16f
	.uleb128 0xc
	.long	.LASF25
	.sleb128 0
	.uleb128 0xc
	.long	.LASF26
	.sleb128 1
	.uleb128 0xc
	.long	.LASF27
	.sleb128 2
	.uleb128 0xc
	.long	.LASF28
	.sleb128 3
	.uleb128 0xc
	.long	.LASF29
	.sleb128 4
	.uleb128 0xc
	.long	.LASF30
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x3
	.byte	0x46
	.long	0x13e
	.uleb128 0xd
	.byte	0xf
	.byte	0x3
	.byte	0x4d
	.long	.LASF46
	.long	0x1f5
	.uleb128 0xe
	.string	"f"
	.byte	0x3
	.byte	0x4f
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"arg"
	.byte	0x3
	.byte	0x51
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF32
	.byte	0x3
	.byte	0x53
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x56
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF33
	.byte	0x3
	.byte	0x58
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF34
	.byte	0x3
	.byte	0x5a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.long	.LASF35
	.byte	0x3
	.byte	0x5b
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x6
	.long	.LASF36
	.byte	0x3
	.byte	0x5c
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x3
	.byte	0x5e
	.long	0x17a
	.uleb128 0x2
	.long	.LASF38
	.byte	0x3
	.byte	0x61
	.long	0x20b
	.uleb128 0xf
	.long	.LASF40
	.word	0x114
	.byte	0x3
	.byte	0x65
	.long	0x2cb
	.uleb128 0x6
	.long	.LASF41
	.byte	0x3
	.byte	0x68
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"sp"
	.byte	0x3
	.byte	0x6a
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.long	.LASF33
	.byte	0x3
	.byte	0x6c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x6e
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.long	.LASF34
	.byte	0x3
	.byte	0x6f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
	.uleb128 0x6
	.long	.LASF35
	.byte	0x3
	.byte	0x70
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.long	.LASF36
	.byte	0x3
	.byte	0x71
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a
	.uleb128 0x6
	.long	.LASF42
	.byte	0x3
	.byte	0x75
	.long	0x133
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"arg"
	.byte	0x3
	.byte	0x77
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0x6
	.long	.LASF32
	.byte	0x3
	.byte	0x79
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0x6
	.long	.LASF43
	.byte	0x3
	.byte	0x7b
	.long	0x2ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x6
	.long	.LASF44
	.byte	0x3
	.byte	0x7d
	.long	0x2ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0x10
	.long	0x46
	.long	0x2db
	.uleb128 0x11
	.long	0x2db
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF45
	.uleb128 0x12
	.long	0x2e7
	.uleb128 0x9
	.byte	0x2
	.long	0x3b
	.uleb128 0x9
	.byte	0x2
	.long	0x200
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.byte	0x81
	.long	.LASF47
	.long	0x31c
	.uleb128 0x6
	.long	.LASF48
	.byte	0x3
	.byte	0x82
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x3
	.byte	0x83
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x85
	.long	0x2f3
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.byte	0x8b
	.long	.LASF51
	.long	0x350
	.uleb128 0x6
	.long	.LASF48
	.byte	0x3
	.byte	0x8d
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x3
	.byte	0x8f
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x91
	.long	0x327
	.uleb128 0x10
	.long	0x2ed
	.long	0x36b
	.uleb128 0x11
	.long	0x2db
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	0x37b
	.long	0x37b
	.uleb128 0x11
	.long	0x2db
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x4d
	.uleb128 0x9
	.byte	0x2
	.long	0xa3
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.long	0x3d8
	.uleb128 0xc
	.long	.LASF53
	.sleb128 0
	.uleb128 0xc
	.long	.LASF54
	.sleb128 1
	.uleb128 0xc
	.long	.LASF55
	.sleb128 2
	.uleb128 0xc
	.long	.LASF56
	.sleb128 3
	.uleb128 0xc
	.long	.LASF57
	.sleb128 4
	.uleb128 0xc
	.long	.LASF58
	.sleb128 5
	.uleb128 0xc
	.long	.LASF59
	.sleb128 6
	.uleb128 0xc
	.long	.LASF60
	.sleb128 7
	.uleb128 0xc
	.long	.LASF61
	.sleb128 8
	.uleb128 0xc
	.long	.LASF62
	.sleb128 9
	.uleb128 0xc
	.long	.LASF63
	.sleb128 10
	.uleb128 0xc
	.long	.LASF64
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF65
	.uleb128 0x14
	.byte	0x2
	.uleb128 0x15
	.long	.LASF70
	.byte	0x1
	.word	0x2ef
	.byte	0x1
	.long	0x409
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.word	0x2ef
	.long	0x409
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.word	0x2f1
	.long	0x2ed
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x31c
	.uleb128 0x19
	.long	.LASF76
	.byte	0x1
	.word	0x36c
	.long	0x2ed
	.byte	0x1
	.long	0x43b
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.word	0x36c
	.long	0x43b
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.word	0x36e
	.long	0x2ed
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x350
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x480
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x2
	.byte	0x8e
	.long	0x480
	.uleb128 0x17
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x2
	.byte	0x90
	.long	0x480
	.uleb128 0x1c
	.long	.LASF74
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF132
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.uleb128 0x1e
	.long	0x83
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF75
	.uleb128 0x1f
	.long	.LASF94
	.byte	0x1
	.word	0x3ec
	.byte	0x1
	.uleb128 0x19
	.long	.LASF77
	.byte	0x1
	.word	0x31a
	.long	0x2ed
	.byte	0x1
	.long	0x4d4
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.word	0x31a
	.long	0x409
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.word	0x31c
	.long	0x2ed
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.word	0x31d
	.long	0x2ed
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.word	0x31e
	.long	0x58
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xe7
	.byte	0x3
	.long	0x4e2
	.long	0x4ed
	.uleb128 0x21
	.long	.LASF133
	.long	0x4ed
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.long	0x381
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.word	0x2fa
	.byte	0x1
	.long	0x526
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.word	0x2fa
	.long	0x409
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.word	0x2fa
	.long	0x2ed
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.word	0x30a
	.long	0x2ed
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.word	0x336
	.byte	0x1
	.long	0x54c
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.word	0x336
	.long	0x409
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.word	0x336
	.long	0x2ed
	.byte	0
	.uleb128 0x23
	.long	.LASF84
	.byte	0x1
	.byte	0x7e
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x24
	.long	.LASF85
	.byte	0x1
	.word	0x1b6
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x24
	.long	.LASF86
	.byte	0x1
	.word	0x1e3
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x25
	.long	.LASF134
	.byte	0x1
	.word	0x353
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5c7
	.uleb128 0x26
	.long	.LASF67
	.byte	0x1
	.word	0x353
	.long	0x43b
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF83
	.byte	0x1
	.word	0x353
	.long	0x2ed
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.word	0x53f
	.long	.LFB41
	.long	.LFE41
	.long	.LLST1
	.byte	0x1
	.long	0x605
	.uleb128 0x29
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x541
	.long	0x3b
	.long	.LLST2
	.uleb128 0x2b
	.long	.LVL3
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x40f
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x63e
	.uleb128 0x2d
	.long	0x420
	.byte	0x6
	.byte	0xfa
	.long	0x420
	.byte	0x9f
	.uleb128 0x29
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2e
	.long	0x42d
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF135
	.byte	0x1
	.word	0x25a
	.long	0x58
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6ea
	.uleb128 0x29
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.word	0x25d
	.long	0x2ed
	.long	.LLST3
	.uleb128 0x2a
	.long	.LASF88
	.byte	0x1
	.word	0x25e
	.long	0x2e7
	.long	.LLST4
	.uleb128 0x31
	.long	.LASF89
	.byte	0x1
	.word	0x295
	.long	0x2e7
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x32
	.long	0x526
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x2cd
	.long	0x6b8
	.uleb128 0x33
	.long	0x533
	.uleb128 0x34
	.long	0x53f
	.long	.LLST5
	.byte	0
	.uleb128 0x35
	.long	.LVL7
	.long	0x605
	.long	0x6df
	.uleb128 0x36
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
	.uleb128 0x37
	.long	0x420
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.byte	0
	.uleb128 0x2b
	.long	.LVL13
	.long	0x58a
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.word	0x212
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x3f9
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x8da
	.uleb128 0x29
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.word	0x3fb
	.long	0x3b
	.long	.LLST6
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.word	0x3fb
	.long	0x3b
	.long	.LLST7
	.uleb128 0x2a
	.long	.LASF92
	.byte	0x1
	.word	0x3fc
	.long	0x3b
	.long	.LLST8
	.uleb128 0x2a
	.long	.LASF93
	.byte	0x1
	.word	0x3fc
	.long	0x3b
	.long	.LLST9
	.uleb128 0x32
	.long	0x487
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x415
	.long	0x7ac
	.uleb128 0x3a
	.long	0x441
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x3f2
	.uleb128 0x3b
	.long	0x44d
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x29
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x3c
	.long	0x459
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x3d
	.long	0x464
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x487
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.word	0x41c
	.long	0x7f9
	.uleb128 0x3a
	.long	0x441
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x3f2
	.uleb128 0x3b
	.long	0x44d
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x29
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x3c
	.long	0x459
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x3d
	.long	0x464
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x487
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x426
	.long	0x844
	.uleb128 0x3a
	.long	0x441
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.word	0x3f2
	.uleb128 0x34
	.long	0x44d
	.long	.LLST10
	.uleb128 0x29
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x3e
	.long	0x459
	.long	.LLST11
	.uleb128 0x3e
	.long	0x464
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x487
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.word	0x42d
	.long	0x88f
	.uleb128 0x3a
	.long	0x441
	.long	.LBB53
	.long	.LBE53
	.byte	0x1
	.word	0x3f2
	.uleb128 0x34
	.long	0x44d
	.long	.LLST13
	.uleb128 0x29
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x3e
	.long	0x459
	.long	.LLST14
	.uleb128 0x3e
	.long	0x464
	.long	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x487
	.long	.LBB55
	.long	.LBE55
	.byte	0x1
	.word	0x433
	.uleb128 0x3a
	.long	0x441
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.word	0x3f2
	.uleb128 0x3b
	.long	0x44d
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x29
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x3c
	.long	0x459
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x3d
	.long	0x464
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	0x46f
	.byte	0
	.long	0x8ea
	.uleb128 0x1e
	.long	0x83
	.byte	0
	.uleb128 0x40
	.long	.LASF95
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	0x90c
	.uleb128 0x17
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0xbc
	.long	0x2ed
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.LASF97
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x1
	.word	0x37f
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF99
	.byte	0x1
	.word	0x2e1
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x3a8
	.long	.LASF137
	.long	.LFB30
	.long	.LFE30
	.long	.LLST16
	.byte	0x1
	.long	0xade
	.uleb128 0x29
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.word	0x3aa
	.long	0x58
	.long	.LLST17
	.uleb128 0x32
	.long	0x8ea
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.word	0x3e3
	.long	0xaa7
	.uleb128 0x42
	.long	0x8f2
	.long	.LBB86
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x97
	.long	0x9d9
	.uleb128 0x29
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x43
	.long	0x8ff
	.uleb128 0x44
	.long	0x490
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0xbc
	.long	0x9ce
	.uleb128 0x33
	.long	0x4a1
	.uleb128 0x29
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x3e
	.long	0x4ae
	.long	.LLST18
	.uleb128 0x3e
	.long	0x4ba
	.long	.LLST19
	.uleb128 0x3e
	.long	0x4c6
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL55
	.long	0x605
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x90c
	.long	.LBB98
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x9e
	.long	0xa9d
	.uleb128 0x44
	.long	0x914
	.long	.LBB100
	.long	.LBE100
	.byte	0x1
	.byte	0xee
	.long	0xa36
	.uleb128 0x32
	.long	0x3e1
	.long	.LBB102
	.long	.LBE102
	.byte	0x1
	.word	0x390
	.long	0xa2c
	.uleb128 0x33
	.long	0x3ee
	.uleb128 0x29
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x3e
	.long	0x3fb
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL57
	.long	0x700
	.byte	0
	.uleb128 0x32
	.long	0x91d
	.long	.LBB104
	.long	.LBE104
	.byte	0x1
	.word	0x113
	.long	0xa8a
	.uleb128 0x32
	.long	0x4f2
	.long	.LBB106
	.long	.LBE106
	.byte	0x1
	.word	0x2e7
	.long	0xa80
	.uleb128 0x33
	.long	0x4ff
	.uleb128 0x34
	.long	0x50b
	.long	.LLST22
	.uleb128 0x29
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x3e
	.long	0x518
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL68
	.long	0x58a
	.byte	0
	.uleb128 0x2b
	.long	.LVL62
	.long	0x63e
	.uleb128 0x2b
	.long	.LVL69
	.long	0x58a
	.byte	0
	.uleb128 0x2b
	.long	.LVL56
	.long	0x560
	.byte	0
	.uleb128 0x2b
	.long	.LVL43
	.long	0x63e
	.uleb128 0x2b
	.long	.LVL44
	.long	0x63e
	.uleb128 0x45
	.long	.LVL45
	.long	0x605
	.uleb128 0x36
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
	.uleb128 0x37
	.long	0x420
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.word	0x445
	.long	0xb5f
	.long	.LFB33
	.long	.LFE33
	.long	.LLST24
	.byte	0x1
	.long	0xb5f
	.uleb128 0x29
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x447
	.long	0x3b
	.long	.LLST25
	.uleb128 0x31
	.long	.LASF102
	.byte	0x1
	.word	0x44c
	.long	0xb5f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x32
	.long	0x4d4
	.long	.LBB112
	.long	.LBE112
	.byte	0x1
	.word	0x44c
	.long	0xb49
	.uleb128 0x2d
	.long	0x4e2
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x45
	.long	.LVL71
	.long	0x1017
	.uleb128 0x36
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x98
	.uleb128 0x28
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x45c
	.long	.LFB34
	.long	.LFE34
	.long	.LLST26
	.byte	0x1
	.long	0xbc4
	.uleb128 0x47
	.string	"s"
	.byte	0x1
	.word	0x45c
	.long	0xb5f
	.long	.LLST27
	.uleb128 0x47
	.string	"v"
	.byte	0x1
	.word	0x45c
	.long	0x37b
	.long	.LLST28
	.uleb128 0x48
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x45e
	.long	0x3b
	.long	.LLST29
	.uleb128 0x2b
	.long	.LVL77
	.long	0x575
	.uleb128 0x2b
	.long	.LVL81
	.long	0x700
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x485
	.long	.LFB35
	.long	.LFE35
	.long	.LLST30
	.byte	0x1
	.long	0xc2e
	.uleb128 0x47
	.string	"s"
	.byte	0x1
	.word	0x485
	.long	0xb5f
	.long	.LLST31
	.uleb128 0x49
	.string	"v"
	.byte	0x1
	.word	0x485
	.long	0x4d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x29
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x31
	.long	.LASF87
	.byte	0x1
	.word	0x487
	.long	0x3b
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.word	0x490
	.long	0x58
	.long	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x4ac
	.long	0x29
	.long	.LFB36
	.long	.LFE36
	.long	.LLST33
	.byte	0x1
	.long	0xc9c
	.uleb128 0x47
	.string	"f"
	.byte	0x1
	.word	0x4ac
	.long	0x107
	.long	.LLST34
	.uleb128 0x47
	.string	"arg"
	.byte	0x1
	.word	0x4ac
	.long	0x4d
	.long	.LLST35
	.uleb128 0x29
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x31
	.long	.LASF106
	.byte	0x1
	.word	0x4ae
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x4af
	.long	0x3b
	.long	.LLST36
	.uleb128 0x2b
	.long	.LVL91
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.word	0x4c2
	.long	0x29
	.long	.LFB37
	.long	.LFE37
	.long	.LLST37
	.byte	0x1
	.long	0xd0a
	.uleb128 0x47
	.string	"f"
	.byte	0x1
	.word	0x4c2
	.long	0x107
	.long	.LLST38
	.uleb128 0x47
	.string	"arg"
	.byte	0x1
	.word	0x4c2
	.long	0x4d
	.long	.LLST39
	.uleb128 0x29
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x31
	.long	.LASF106
	.byte	0x1
	.word	0x4c4
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x4c5
	.long	0x3b
	.long	.LLST40
	.uleb128 0x2b
	.long	.LVL97
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.word	0x4e7
	.long	0x29
	.long	.LFB38
	.long	.LFE38
	.long	.LLST41
	.byte	0x1
	.long	0xda8
	.uleb128 0x47
	.string	"f"
	.byte	0x1
	.word	0x4e7
	.long	0x107
	.long	.LLST42
	.uleb128 0x47
	.string	"arg"
	.byte	0x1
	.word	0x4e7
	.long	0x4d
	.long	.LLST43
	.uleb128 0x26
	.long	.LASF34
	.byte	0x1
	.word	0x4e7
	.long	0x5f
	.long	.LLST44
	.uleb128 0x26
	.long	.LASF35
	.byte	0x1
	.word	0x4e7
	.long	0x5f
	.long	.LLST45
	.uleb128 0x26
	.long	.LASF36
	.byte	0x1
	.word	0x4e7
	.long	0x5f
	.long	.LLST46
	.uleb128 0x29
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x31
	.long	.LASF106
	.byte	0x1
	.word	0x4e9
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x4ea
	.long	0x3b
	.long	.LLST47
	.uleb128 0x2b
	.long	.LVL103
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x514
	.long	0x58
	.long	.LFB39
	.long	.LFE39
	.long	.LLST48
	.byte	0x1
	.long	0xe3b
	.uleb128 0x47
	.string	"f"
	.byte	0x1
	.word	0x514
	.long	0x107
	.long	.LLST49
	.uleb128 0x47
	.string	"arg"
	.byte	0x1
	.word	0x514
	.long	0x58
	.long	.LLST50
	.uleb128 0x26
	.long	.LASF32
	.byte	0x1
	.word	0x514
	.long	0x6a
	.long	.LLST51
	.uleb128 0x26
	.long	.LASF110
	.byte	0x1
	.word	0x514
	.long	0x6a
	.long	.LLST52
	.uleb128 0x29
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x31
	.long	.LASF106
	.byte	0x1
	.word	0x516
	.long	0x58
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.word	0x517
	.long	0x3b
	.long	.LLST53
	.uleb128 0x2b
	.long	.LVL110
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.word	0x52e
	.long	.LFB40
	.long	.LFE40
	.long	.LLST54
	.byte	0x1
	.long	0xe78
	.uleb128 0x29
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x31
	.long	.LASF87
	.byte	0x1
	.word	0x530
	.long	0xe78
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2b
	.long	.LVL113
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x4a
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.word	0x54f
	.long	0x58
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xec7
	.uleb128 0x29
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x4b
	.string	"arg"
	.byte	0x1
	.word	0x551
	.long	0x58
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x31
	.long	.LASF87
	.byte	0x1
	.word	0x552
	.long	0x3b
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.word	0x561
	.long	0x58
	.long	.LFB43
	.long	.LFE43
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xeef
	.uleb128 0x2b
	.long	.LVL116
	.long	0x926
	.byte	0
	.uleb128 0x4c
	.long	.LASF114
	.byte	0x1
	.byte	0x25
	.long	0x2ed
	.byte	0x5
	.byte	0x3
	.long	_ZL8cur_task
	.uleb128 0x4c
	.long	.LASF115
	.byte	0x1
	.byte	0x2b
	.long	0xf11
	.byte	0x5
	.byte	0x3
	.long	_ZL9kernel_sp
	.uleb128 0x12
	.long	0x5f
	.uleb128 0x10
	.long	0x20b
	.long	0xf26
	.uleb128 0x11
	.long	0x2db
	.byte	0x8
	.byte	0
	.uleb128 0x4c
	.long	.LASF116
	.byte	0x1
	.byte	0x2e
	.long	0xf16
	.byte	0x5
	.byte	0x3
	.long	_ZL9task_desc
	.uleb128 0x4c
	.long	.LASF117
	.byte	0x1
	.byte	0x31
	.long	0xf49
	.byte	0x6
	.byte	0x3
	.long	_ZL9task_desc+2208
	.byte	0x9f
	.uleb128 0x22
	.long	0x2ed
	.uleb128 0x4c
	.long	.LASF118
	.byte	0x1
	.byte	0x34
	.long	0xf5f
	.byte	0x5
	.byte	0x3
	.long	_ZL14kernel_request
	.uleb128 0x12
	.long	0x16f
	.uleb128 0x4c
	.long	.LASF119
	.byte	0x1
	.byte	0x37
	.long	0xf75
	.byte	0x5
	.byte	0x3
	.long	_ZL26kernel_request_create_args
	.uleb128 0x12
	.long	0x1f5
	.uleb128 0x4c
	.long	.LASF120
	.byte	0x1
	.byte	0x3a
	.long	0xf8b
	.byte	0x5
	.byte	0x3
	.long	_ZL21kernel_request_retval
	.uleb128 0x12
	.long	0x58
	.uleb128 0x4c
	.long	.LASF121
	.byte	0x1
	.byte	0x3d
	.long	0x350
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x4c
	.long	.LASF122
	.byte	0x1
	.byte	0x40
	.long	0x350
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x4c
	.long	.LASF123
	.byte	0x1
	.byte	0x43
	.long	0x31c
	.byte	0x5
	.byte	0x3
	.long	_ZL14periodic_queue
	.uleb128 0x4c
	.long	.LASF124
	.byte	0x1
	.byte	0x46
	.long	0x350
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0x4c
	.long	.LASF125
	.byte	0x1
	.byte	0x49
	.long	0xe78
	.byte	0x5
	.byte	0x3
	.long	_ZL13ticks_counter
	.uleb128 0x10
	.long	0x2ed
	.long	0xff5
	.uleb128 0x11
	.long	0x2db
	.byte	0x8
	.byte	0
	.uleb128 0x4c
	.long	.LASF126
	.byte	0x1
	.byte	0x52
	.long	0xfe5
	.byte	0x5
	.byte	0x3
	.long	_ZL16name_to_task_ptr
	.uleb128 0x4c
	.long	.LASF127
	.byte	0x1
	.byte	0x58
	.long	0xe78
	.byte	0x5
	.byte	0x3
	.long	_ZL9error_msg
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF128
	.long	.LASF138
	.long	0x3df
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.long	0x6a
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
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x31
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
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
	.long	.LFE27
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
	.long	.LFB41
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE41
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
	.long	.LFE41
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
	.long	.LFE32
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
	.long	.LFE32
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
	.long	.LFE32
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
	.long	.LFB30
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
	.long	.LFE30
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
	.long	.LFB33
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST25:
	.long	.LVL70
	.long	.LVL73
	.word	0x1
	.byte	0x6c
	.long	.LVL73
	.long	.LFE33
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST26:
	.long	.LFB34
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST27:
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
	.long	.LVL79
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL74
	.long	.LVL77-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77-1
	.long	.LVL79
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL79
	.long	.LVL81-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL75
	.long	.LVL78
	.word	0x1
	.byte	0x6c
	.long	.LVL78
	.long	.LVL79
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	.LVL79
	.long	.LFE34
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST30:
	.long	.LFB35
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
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST31:
	.long	.LVL82
	.long	.LVL85
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL85
	.long	.LFE35
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL84
	.long	.LVL86
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL86
	.long	.LFE35
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LFB36
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LFE36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST34:
	.long	.LVL88
	.long	.LVL90
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL88
	.long	.LVL91-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL91-1
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL89
	.long	.LVL93
	.word	0x1
	.byte	0x6c
	.long	.LVL93
	.long	.LFE36
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST37:
	.long	.LFB37
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST38:
	.long	.LVL94
	.long	.LVL96
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL94
	.long	.LVL97-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL95
	.long	.LVL99
	.word	0x1
	.byte	0x6c
	.long	.LVL99
	.long	.LFE37
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST41:
	.long	.LFB38
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
	.long	.LFE38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST42:
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL100
	.long	.LVL103-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL103-1
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL100
	.long	.LVL103-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL103-1
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL100
	.long	.LVL103-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL103-1
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL100
	.long	.LVL106
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL101
	.long	.LVL105
	.word	0x1
	.byte	0x6c
	.long	.LVL105
	.long	.LFE38
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST48:
	.long	.LFB39
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14
	.long	.LFE39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST49:
	.long	.LVL107
	.long	.LVL109
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL109
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL107
	.long	.LVL110-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL107
	.long	.LVL110-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL107
	.long	.LVL110-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL108
	.long	.LVL112
	.word	0x1
	.byte	0x6c
	.long	.LVL112
	.long	.LFE39
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST54:
	.long	.LFB40
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LFE40
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xb4
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB30
	.long	.LFE30-.LFB30
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
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB86
	.long	.LBE86
	.long	.LBB109
	.long	.LBE109
	.long	0
	.long	0
	.long	.LBB98
	.long	.LBE98
	.long	.LBB110
	.long	.LBE110
	.long	0
	.long	0
	.long	.LBB114
	.long	.LBE114
	.long	.LBB115
	.long	.LBE115
	.long	0
	.long	0
	.long	.LFB14
	.long	.LFE14
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB27
	.long	.LFE27
	.long	.LFB41
	.long	.LFE41
	.long	.LFB45
	.long	.LFE45
	.long	.LFB21
	.long	.LFE21
	.long	.LFB20
	.long	.LFE20
	.long	.LFB32
	.long	.LFE32
	.long	.LFB30
	.long	.LFE30
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
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"NONE"
.LASF125:
	.string	"ticks_counter"
.LASF79:
	.string	"collision_counter"
.LASF39:
	.string	"service"
.LASF96:
	.string	"kernel_dispatch"
.LASF137:
	.string	"_Z7OS_Initv"
.LASF89:
	.string	"stack_top"
.LASF50:
	.string	"linkedlist_t"
.LASF53:
	.string	"ERR_1_PPP_NAME_OUT_OF_RANGE"
.LASF44:
	.string	"prev"
.LASF94:
	.string	"_delay_25ms"
.LASF63:
	.string	"ERR_RUN_5_RTOS_INTERNAL_ERROR"
.LASF34:
	.string	"period"
.LASF134:
	.string	"enqueue"
.LASF11:
	.string	"long long unsigned int"
.LASF31:
	.string	"kernel_request_t"
.LASF38:
	.string	"task_descriptor_t"
.LASF20:
	.string	"READY"
.LASF67:
	.string	"queue_ptr"
.LASF43:
	.string	"next"
.LASF18:
	.string	"DEAD"
.LASF90:
	.string	"Task_Terminate"
.LASF4:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF58:
	.string	"ERR_6_TIME_INTERVAL_IN_PPP_0"
.LASF22:
	.string	"task_state_t"
.LASF66:
	.string	"linkedlist_ptr"
.LASF42:
	.string	"state"
.LASF68:
	.string	"temp"
.LASF7:
	.string	"long int"
.LASF105:
	.string	"Task_Create_System"
.LASF21:
	.string	"WAITING"
.LASF27:
	.string	"TASK_CREATE"
.LASF111:
	.string	"Task_Next"
.LASF5:
	.string	"uint16_t"
.LASF75:
	.string	"double"
.LASF120:
	.string	"kernel_request_retval"
.LASF46:
	.string	"13create_args_t"
.LASF133:
	.string	"this"
.LASF98:
	.string	"kernel_update_ticker"
.LASF114:
	.string	"cur_task"
.LASF93:
	.string	"mask"
.LASF73:
	.string	"__tmp"
.LASF35:
	.string	"wcet"
.LASF103:
	.string	"Service_Subscribe"
.LASF54:
	.string	"ERR_2_CREATE_NAME_OUT_OF_RANGE"
.LASF15:
	.string	"value"
.LASF24:
	.string	"16kernel_request_t"
.LASF6:
	.string	"unsigned int"
.LASF28:
	.string	"TASK_TERMINATE"
.LASF136:
	.string	"__vector_17"
.LASF9:
	.string	"long unsigned int"
.LASF60:
	.string	"ERR_RUN_2_TOO_MANY_TASKS"
.LASF23:
	.string	"12task_state_t"
.LASF71:
	.string	"_delay_ms"
.LASF109:
	.string	"Task_Create"
.LASF32:
	.string	"level"
.LASF107:
	.string	"Task_Create_RR"
.LASF117:
	.string	"idle_task"
.LASF110:
	.string	"name"
.LASF131:
	.string	"E:\\\\Google Drive\\\\Course\\\\csc460\\\\lab\\\\CSC460\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF83:
	.string	"task_to_add"
.LASF72:
	.string	"__ms"
.LASF51:
	.string	"7queue_t"
.LASF56:
	.string	"ERR_4_PERIODIC_NAME_IN_USE"
.LASF97:
	.string	"kernel_handle_request"
.LASF49:
	.string	"tail"
.LASF122:
	.string	"rr_queue"
.LASF26:
	.string	"TIMER_EXPIRED"
.LASF127:
	.string	"error_msg"
.LASF138:
	.string	"_Znwj"
.LASF82:
	.string	"addlist"
.LASF33:
	.string	"remaining_wcet"
.LASF130:
	.string	".././os.cpp"
.LASF37:
	.string	"create_args_t"
.LASF115:
	.string	"kernel_sp"
.LASF13:
	.string	"tasks"
.LASF45:
	.string	"sizetype"
.LASF70:
	.string	"update_all_ticks"
.LASF47:
	.string	"12linkedlist_t"
.LASF101:
	.string	"Service_Init"
.LASF76:
	.string	"dequeue"
.LASF29:
	.string	"TASK_NEXT"
.LASF84:
	.string	"idle"
.LASF69:
	.string	"task_ptr"
.LASF92:
	.string	"flashes"
.LASF57:
	.string	"ERR_5_NAME_NOT_IN_PPP"
.LASF64:
	.string	"ERR_RUN_6_PERIODIC_COLLISION"
.LASF52:
	.string	"queue_t"
.LASF102:
	.string	"newService"
.LASF112:
	.string	"Task_GetArg"
.LASF132:
	.string	"__builtin_avr_delay_cycles"
.LASF3:
	.string	"unsigned char"
.LASF118:
	.string	"kernel_request"
.LASF40:
	.string	"td_struct"
.LASF16:
	.string	"counter"
.LASF95:
	.string	"kernel_main_loop"
.LASF87:
	.string	"sreg"
.LASF19:
	.string	"RUNNING"
.LASF129:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF77:
	.string	"get_next"
.LASF48:
	.string	"head"
.LASF88:
	.string	"stack_bottom"
.LASF8:
	.string	"uint32_t"
.LASF81:
	.string	"task_to_delete"
.LASF85:
	.string	"exit_kernel"
.LASF65:
	.string	"char"
.LASF123:
	.string	"periodic_queue"
.LASF104:
	.string	"Service_Publish"
.LASF100:
	.string	"OS_Init"
.LASF74:
	.string	"__ticks_dc"
.LASF14:
	.string	"valueLocations"
.LASF119:
	.string	"kernel_request_create_args"
.LASF0:
	.string	"int8_t"
.LASF78:
	.string	"found"
.LASF80:
	.string	"delete_task"
.LASF59:
	.string	"ERR_RUN_1_USER_CALLED_OS_ABORT"
.LASF55:
	.string	"ERR_3_PERIODIC_NAMED_IDLE"
.LASF86:
	.string	"enter_kernel"
.LASF124:
	.string	"system_queue"
.LASF116:
	.string	"task_desc"
.LASF1:
	.string	"uint8_t"
.LASF61:
	.string	"ERR_RUN_3_PERIODIC_TOOK_TOO_LONG"
.LASF17:
	.string	"voidfuncvoid_ptr"
.LASF121:
	.string	"dead_pool_queue"
.LASF12:
	.string	"SERVICE"
.LASF106:
	.string	"retval"
.LASF99:
	.string	"kernel_terminate_task"
.LASF108:
	.string	"Task_Create_Periodic"
.LASF62:
	.string	"ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST"
.LASF126:
	.string	"name_to_task_ptr"
.LASF135:
	.string	"kernel_create_task"
.LASF36:
	.string	"start"
.LASF41:
	.string	"stack"
.LASF113:
	.string	"main"
.LASF30:
	.string	"TASK_GET_ARG"
.LASF128:
	.string	"operator new"
.LASF91:
	.string	"OS_Abort"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
