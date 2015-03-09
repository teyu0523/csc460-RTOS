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
<<<<<<< HEAD
	.loc 1 124 0
=======
	.loc 1 126 0
>>>>>>> origin/master
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
<<<<<<< HEAD
.LFB15:
	.loc 1 440 0
=======
.LFB10:
	.loc 1 431 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
	.loc 1 445 0
/* #APP */
 ;  445 ".././os.cpp" 1
=======
	.loc 1 436 0
/* #APP */
 ;  436 ".././os.cpp" 1
>>>>>>> origin/master
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
<<<<<<< HEAD
 ;  445 ".././os.cpp" 1
=======
 ;  436 ".././os.cpp" 1
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 450 0
=======
	.loc 1 441 0
>>>>>>> origin/master
/* #NOAPP */
	in r24,__SP_L__
	in r25,__SP_L__+1
	sts _ZL9kernel_sp+1,r25
	sts _ZL9kernel_sp,r24
<<<<<<< HEAD
	.loc 1 455 0
=======
	.loc 1 446 0
>>>>>>> origin/master
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	inc r31
	ld r24,Z
	ldd r25,Z+1
	out __SP_L__+1,r25
	out __SP_L__,r24
<<<<<<< HEAD
	.loc 1 460 0
/* #APP */
 ;  460 ".././os.cpp" 1
=======
	.loc 1 451 0
/* #APP */
 ;  451 ".././os.cpp" 1
>>>>>>> origin/master
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
<<<<<<< HEAD
 ;  460 ".././os.cpp" 1
=======
 ;  451 ".././os.cpp" 1
>>>>>>> origin/master
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
<<<<<<< HEAD
	.loc 1 471 0
 ;  471 ".././os.cpp" 1
=======
	.loc 1 462 0
 ;  462 ".././os.cpp" 1
>>>>>>> origin/master
	ret

 ;  0 "" 2
/* epilogue start */
<<<<<<< HEAD
	.loc 1 472 0
=======
	.loc 1 463 0
>>>>>>> origin/master
/* #NOAPP */
	.cfi_endproc
.LFE15:
	.size	_ZL11exit_kernelv, .-_ZL11exit_kernelv
	.section	.text._ZL12enter_kernelv,"ax",@progbits
	.type	_ZL12enter_kernelv, @function
_ZL12enter_kernelv:
<<<<<<< HEAD
.LFB16:
	.loc 1 485 0
=======
.LFB11:
	.loc 1 476 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
	.loc 1 490 0
/* #APP */
 ;  490 ".././os.cpp" 1
=======
	.loc 1 481 0
/* #APP */
 ;  481 ".././os.cpp" 1
>>>>>>> origin/master
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
<<<<<<< HEAD
 ;  490 ".././os.cpp" 1
=======
 ;  481 ".././os.cpp" 1
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 495 0
=======
	.loc 1 486 0
>>>>>>> origin/master
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
<<<<<<< HEAD
	.loc 1 500 0
=======
	.loc 1 491 0
>>>>>>> origin/master
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
<<<<<<< HEAD
	.loc 1 505 0
/* #APP */
 ;  505 ".././os.cpp" 1
=======
	.loc 1 496 0
/* #APP */
 ;  496 ".././os.cpp" 1
>>>>>>> origin/master
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
<<<<<<< HEAD
 ;  505 ".././os.cpp" 1
=======
 ;  496 ".././os.cpp" 1
>>>>>>> origin/master
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
<<<<<<< HEAD
	.loc 1 513 0
 ;  513 ".././os.cpp" 1
=======
	.loc 1 504 0
 ;  504 ".././os.cpp" 1
>>>>>>> origin/master
	ret

 ;  0 "" 2
/* epilogue start */
<<<<<<< HEAD
	.loc 1 514 0
=======
	.loc 1 505 0
>>>>>>> origin/master
/* #NOAPP */
	.cfi_endproc
.LFE16:
	.size	_ZL12enter_kernelv, .-_ZL12enter_kernelv
	.section	.text._ZL7enqueueP7queue_tP9td_struct,"ax",@progbits
	.type	_ZL7enqueueP7queue_tP9td_struct, @function
_ZL7enqueueP7queue_tP9td_struct:
<<<<<<< HEAD
.LFB24:
	.loc 1 853 0
=======
.LFB18:
	.loc 1 823 0
>>>>>>> origin/master
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
<<<<<<< HEAD
	.loc 1 854 0
=======
	.loc 1 824 0
>>>>>>> origin/master
	movw r26,r22
	subi r26,-16
	sbci r27,-2
	st X+,__zero_reg__
	st X,__zero_reg__
<<<<<<< HEAD
	.loc 1 856 0
=======
	.loc 1 826 0
>>>>>>> origin/master
	ld r24,Z
	ldd r25,Z+1
.LVL1:
	or r24,r25
	brne .L6
<<<<<<< HEAD
	.loc 1 859 0
=======
	.loc 1 829 0
>>>>>>> origin/master
	std Z+1,r23
	st Z,r22
	rjmp .L8
.L6:
<<<<<<< HEAD
	.loc 1 865 0
=======
	.loc 1 835 0
>>>>>>> origin/master
	ldd r26,Z+2
	ldd r27,Z+3
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
.L8:
<<<<<<< HEAD
	.loc 1 866 0
=======
	.loc 1 836 0
>>>>>>> origin/master
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
<<<<<<< HEAD
.LFB37:
	.loc 1 1286 0
=======
.LFB32:
	.loc 1 1363 0
>>>>>>> origin/master
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
<<<<<<< HEAD
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
=======
.LBB29:
	.loc 1 1366 0
	in r28,__SREG__
.LVL2:
	.loc 1 1367 0
/* #APP */
 ;  1367 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1369 0
/* #NOAPP */
	ldi r24,lo8(3)
	sts _ZL14kernel_request,r24
	.loc 1 1370 0
	call _ZL12enter_kernelv
.LVL3:
	.loc 1 1372 0
	out __SREG__,r28
/* epilogue start */
.LBE29:
	.loc 1 1373 0
>>>>>>> origin/master
	pop r28
.LVL4:
	ret
	.cfi_endproc
<<<<<<< HEAD
.LFE37:
=======
.LFE32:
>>>>>>> origin/master
	.size	Task_Terminate, .-Task_Terminate
	.section	.text._ZL7dequeueP7queue_t.isra.1,"ax",@progbits
	.type	_ZL7dequeueP7queue_t.isra.1, @function
_ZL7dequeueP7queue_t.isra.1:
<<<<<<< HEAD
.LFB41:
	.loc 1 877 0
=======
.LFB36:
	.loc 1 847 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
.LVL5:
<<<<<<< HEAD
.LBB31:
	.loc 1 879 0
=======
.LBB30:
	.loc 1 849 0
>>>>>>> origin/master
	ld r24,X+
	ld r25,X
	sbiw r26,1
.LVL6:
<<<<<<< HEAD
	.loc 1 881 0
	sbiw r24,0
	breq .L12
	.loc 1 883 0
=======
	.loc 1 851 0
	sbiw r24,0
	breq .L12
	.loc 1 853 0
>>>>>>> origin/master
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r18,Z
	ldd r19,Z+1
	st X+,r18
	st X,r19
<<<<<<< HEAD
	.loc 1 884 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
.LBE31:
	.loc 1 888 0
	ret
	.cfi_endproc
.LFE41:
=======
	.loc 1 854 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L12:
.LBE30:
	.loc 1 858 0
	ret
	.cfi_endproc
.LFE36:
>>>>>>> origin/master
	.size	_ZL7dequeueP7queue_t.isra.1, .-_ZL7dequeueP7queue_t.isra.1
	.section	.text._ZL18kernel_create_taskv,"ax",@progbits
	.type	_ZL18kernel_create_taskv, @function
_ZL18kernel_create_taskv:
<<<<<<< HEAD
.LFB18:
	.loc 1 604 0
=======
.LFB13:
	.loc 1 595 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
.LBB35:
	.loc 1 610 0
=======
.LBB34:
	.loc 1 601 0
>>>>>>> origin/master
	lds r24,_ZL15dead_pool_queue
	lds r25,_ZL15dead_pool_queue+1
	or r24,r25
	brne .+2
	rjmp .L23
<<<<<<< HEAD
	.loc 1 641 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L24
	.loc 1 648 0
=======
	.loc 1 632 0
	lds r24,_ZL26kernel_request_create_args+4
	tst r24
	breq .L24
	.loc 1 639 0
>>>>>>> origin/master
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL7:
	movw r22,r24
.LVL8:
	rjmp .L18
.LVL9:
.L24:
<<<<<<< HEAD
	.loc 1 643 0
	ldi r22,lo8(_ZL9task_desc+2208)
	ldi r23,hi8(_ZL9task_desc+2208)
.L18:
.LVL10:
	.loc 1 669 0
=======
	.loc 1 634 0
	ldi r22,lo8(_ZL9task_desc+2176)
	ldi r23,hi8(_ZL9task_desc+2176)
.L18:
.LVL10:
	.loc 1 660 0
>>>>>>> origin/master
	movw r30,r22
	subi r30,39
	sbci r31,-1
	st Z,__zero_reg__
<<<<<<< HEAD
	.loc 1 671 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 680 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 681 0
=======
	.loc 1 662 0
	ldi r24,lo8(-128)
	adiw r30,30
	st Z,r24
	.loc 1 671 0
	adiw r30,3
	st Z,__zero_reg__
	.loc 1 672 0
>>>>>>> origin/master
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r25
<<<<<<< HEAD
	.loc 1 682 0
=======
	.loc 1 673 0
>>>>>>> origin/master
	lds r24,_ZL26kernel_request_create_args
	lds r25,_ZL26kernel_request_create_args+1
	adiw r30,1
	st Z,r24
<<<<<<< HEAD
	.loc 1 683 0
	adiw r30,1
	st Z,__zero_reg__
	.loc 1 684 0
=======
	.loc 1 676 0
>>>>>>> origin/master
	ldi r24,lo8(gs(Task_Terminate))
	ldi r25,hi8(gs(Task_Terminate))
	adiw r30,1
	st Z,r25
	.loc 1 685 0
	adiw r30,1
	st Z,r24
<<<<<<< HEAD
	.loc 1 696 0
	adiw r30,1
=======
	.loc 1 687 0
>>>>>>> origin/master
	movw r24,r22
	subi r24,41
	sbci r25,-1
	std Z+1,r25
	st Z,r24
<<<<<<< HEAD
	.loc 1 698 0
=======
	.loc 1 689 0
>>>>>>> origin/master
	ldi r24,lo8(2)
	adiw r30,12
	st Z,r24
<<<<<<< HEAD
	.loc 1 699 0
=======
	.loc 1 690 0
>>>>>>> origin/master
	lds r24,_ZL26kernel_request_create_args+2
	lds r25,_ZL26kernel_request_create_args+2+1
	adiw r30,1
	std Z+1,r25
	st Z,r24
<<<<<<< HEAD
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
=======
	.loc 1 691 0
	lds r24,_ZL26kernel_request_create_args+4
	adiw r30,2
	st Z,r24
	.loc 1 694 0
>>>>>>> origin/master
	lds r24,_ZL26kernel_request_create_args+4
	cpi r24,lo8(2)
	breq .L19
	cpi r24,lo8(3)
	breq .L20
	cpi r24,lo8(1)
	brne .L26
<<<<<<< HEAD
	.loc 1 722 0
=======
	.loc 1 709 0
>>>>>>> origin/master
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
<<<<<<< HEAD
.LBB37:
	.loc 1 825 0
=======
	.loc 1 795 0
>>>>>>> origin/master
	movw r30,r22
	subi r30,-16
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
<<<<<<< HEAD
	.loc 1 826 0
=======
	.loc 1 796 0
>>>>>>> origin/master
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L22
<<<<<<< HEAD
	.loc 1 829 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 830 0
=======
	.loc 1 799 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 800 0
>>>>>>> origin/master
	sts _ZL14periodic_queue+1,r23
	sts _ZL14periodic_queue,r22
	rjmp .L27
.L22:
<<<<<<< HEAD
	.loc 1 836 0
=======
	.loc 1 806 0
>>>>>>> origin/master
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-16
	sbci r27,-2
	st X+,r22
	st X,r23
<<<<<<< HEAD
	.loc 1 837 0
	std Z+1,r25
	st Z,r24
.L27:
	.loc 1 838 0
=======
	.loc 1 807 0
	std Z+1,r25
	st Z,r24
.L28:
	.loc 1 808 0
>>>>>>> origin/master
	sts _ZL14periodic_queue+2+1,r23
	sts _ZL14periodic_queue+2,r22
	rjmp .L26
.LVL12:
.L28:
.LBE37:
.LBE36:
<<<<<<< HEAD
	.loc 1 722 0
=======
.LBE35:
	.loc 1 704 0
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
.L27:
	.loc 1 709 0
>>>>>>> origin/master
	call _ZL7enqueueP7queue_tP9td_struct
.LVL13:
	rjmp .L26
.L23:
<<<<<<< HEAD
	.loc 1 613 0
=======
	.loc 1 604 0
>>>>>>> origin/master
	ldi r24,0
	ldi r25,0
	ret
.L26:
<<<<<<< HEAD
	.loc 1 731 0
	ldi r24,lo8(1)
	ldi r25,0
.LBE35:
	.loc 1 732 0
=======
	.loc 1 718 0
	ldi r24,lo8(1)
	ldi r25,0
.LBE34:
	.loc 1 719 0
>>>>>>> origin/master
	ret
	.cfi_endproc
.LFE18:
	.size	_ZL18kernel_create_taskv, .-_ZL18kernel_create_taskv
	.section	.text.__vector_17,"ax",@progbits
.global	__vector_17
	.type	__vector_17, @function
__vector_17:
<<<<<<< HEAD
.LFB17:
	.loc 1 532 0
=======
.LFB12:
	.loc 1 523 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
	.loc 1 545 0
/* #APP */
 ;  545 ".././os.cpp" 1
=======
	.loc 1 536 0
/* #APP */
 ;  536 ".././os.cpp" 1
>>>>>>> origin/master
	push   r31             
	in     r31,0X3C        
	push   r31             
	in     r31,__SREG__    
	cli                    
	
 ;  0 "" 2
<<<<<<< HEAD
	.loc 1 547 0
 ;  547 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 549 0
 ;  549 ".././os.cpp" 1
=======
	.loc 1 538 0
 ;  538 ".././os.cpp" 1
	ori    r31, 0x80        
	
 ;  0 "" 2
	.loc 1 540 0
 ;  540 ".././os.cpp" 1
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 551 0
=======
	.loc 1 542 0
>>>>>>> origin/master
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	in r24,__SP_L__
	in r25,__SP_L__+1
	inc r31
	std Z+1,r25
	st Z,r24
<<<<<<< HEAD
	.loc 1 558 0
=======
	.loc 1 549 0
>>>>>>> origin/master
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
<<<<<<< HEAD
	.loc 1 563 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 568 0
=======
	.loc 1 554 0
	ldi r24,lo8(1)
	sts _ZL14kernel_request,r24
	.loc 1 559 0
>>>>>>> origin/master
	ldi r30,lo8(-120)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	subi r24,-16
	sbci r25,-40
	std Z+1,r25
	st Z,r24
<<<<<<< HEAD
	.loc 1 573 0
=======
	.loc 1 564 0
>>>>>>> origin/master
	lds r24,_ZL9kernel_sp
	lds r25,_ZL9kernel_sp+1
	out __SP_L__+1,r25
	out __SP_L__,r24
<<<<<<< HEAD
	.loc 1 578 0
/* #APP */
 ;  578 ".././os.cpp" 1
=======
	.loc 1 569 0
/* #APP */
 ;  569 ".././os.cpp" 1
>>>>>>> origin/master
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
<<<<<<< HEAD
 ;  578 ".././os.cpp" 1
=======
 ;  569 ".././os.cpp" 1
>>>>>>> origin/master
	pop    r31             
	out    __SREG__, r31   
	pop    r31             
	out    0X3C, r31       
	pop    r31             
	
 ;  0 "" 2
<<<<<<< HEAD
	.loc 1 588 0
 ;  588 ".././os.cpp" 1
=======
	.loc 1 579 0
 ;  579 ".././os.cpp" 1
>>>>>>> origin/master
	ret

 ;  0 "" 2
/* epilogue start */
<<<<<<< HEAD
	.loc 1 589 0
=======
	.loc 1 580 0
>>>>>>> origin/master
/* #NOAPP */
	.cfi_endproc
.LFE17:
	.size	__vector_17, .-__vector_17
	.section	.text.OS_Abort,"ax",@progbits
.global	OS_Abort
	.type	OS_Abort, @function
OS_Abort:
<<<<<<< HEAD
.LFB29:
	.loc 1 1019 0
=======
.LFB23:
	.loc 1 1065 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
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
=======
.LBB37:
	.loc 1 1069 0
/* #APP */
 ;  1069 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1072 0
/* #NOAPP */
	ldi r24,lo8(96)
	sts 257,r24
	.loc 1 1074 0
	lds r24,_ZL9error_msg
	cpi r24,lo8(6)
	brsh .L31
	.loc 1 1076 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(1))
.LVL14:
	.loc 1 1077 0
>>>>>>> origin/master
	ldi r19,lo8(64)
	rjmp .L32
.LVL15:
.L31:
<<<<<<< HEAD
	.loc 1 1035 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL16:
	.loc 1 1036 0
	ldi r19,lo8(32)
.LVL17:
.L32:
	.loc 1 1042 0
=======
	.loc 1 1081 0
	lds r24,_ZL9error_msg
	subi r24,lo8(-(-5))
.LVL16:
	.loc 1 1082 0
	ldi r19,lo8(32)
.LVL17:
.L32:
	.loc 1 1088 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 1044 0
	brne .L34
	.loc 1 1049 0
=======
.LBE38:
	.loc 1 1090 0
	brne .L34
	.loc 1 1095 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 1051 0
	brne .L37
.LVL27:
.L36:
	.loc 1 1057 0 discriminator 1
	cp r25,r24
	breq .L46
	.loc 1 1059 0
=======
.LBE41:
	.loc 1 1097 0
	brne .L37
.LVL27:
.L36:
	.loc 1 1103 0 discriminator 1
	cp r25,r24
	breq .L46
	.loc 1 1105 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 1061 0
	brne .L39
	.loc 1 1066 0
=======
.LBE44:
	.loc 1 1107 0
	brne .L39
	.loc 1 1112 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 1068 0
	brne .L41
	.loc 1 1057 0
=======
.LBE47:
	.loc 1 1114 0
	brne .L41
	.loc 1 1103 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 1074 0
=======
.LBE50:
	.loc 1 1120 0
>>>>>>> origin/master
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
<<<<<<< HEAD
.LFB27:
	.loc 1 938 0
=======
.LFB21:
	.loc 1 984 0
>>>>>>> origin/master
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
<<<<<<< HEAD
.LBB79:
	.loc 1 943 0
=======
.LBB75:
	.loc 1 989 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 958 0 discriminator 2
	st Z,__zero_reg__
	.loc 1 959 0 discriminator 2
=======
	.loc 1 1004 0 discriminator 2
	st Z,__zero_reg__
	.loc 1 1005 0 discriminator 2
>>>>>>> origin/master
	st X+,__zero_reg__
	st X+,__zero_reg__
	movw r24,r30
	adiw r24,8
<<<<<<< HEAD
	.loc 1 960 0 discriminator 2
=======
	.loc 1 1006 0 discriminator 2
>>>>>>> origin/master
	std Z+5,r25
	std Z+4,r24
	subi r30,-20
	sbci r31,-2
<<<<<<< HEAD
	.loc 1 956 0 discriminator 2
	ldi r18,hi8(_ZL9task_desc+2200)
	cpi r30,lo8(_ZL9task_desc+2200)
	cpc r31,r18
	brne .L49
	.loc 1 962 0
	sts _ZL9task_desc+2204+1,__zero_reg__
	sts _ZL9task_desc+2204,__zero_reg__
	.loc 1 963 0
=======
	.loc 1 1002 0 discriminator 2
	ldi r24,hi8(_ZL9task_desc+2168)
	cpi r30,lo8(_ZL9task_desc+2168)
	cpc r31,r24
	brne .L49
	.loc 1 1008 0
	sts _ZL9task_desc+2172+1,__zero_reg__
	sts _ZL9task_desc+2172,__zero_reg__
	.loc 1 1009 0
>>>>>>> origin/master
	ldi r16,lo8(_ZL9task_desc)
	ldi r17,hi8(_ZL9task_desc)
	sts _ZL15dead_pool_queue+1,r17
	sts _ZL15dead_pool_queue,r16
<<<<<<< HEAD
	.loc 1 964 0
	ldi r24,lo8(_ZL9task_desc+1932)
	ldi r25,hi8(_ZL9task_desc+1932)
	sts _ZL15dead_pool_queue+2+1,r25
	sts _ZL15dead_pool_queue+2,r24
	.loc 1 967 0
=======
	.loc 1 1010 0
	ldi r24,lo8(_ZL9task_desc+1904)
	ldi r25,hi8(_ZL9task_desc+1904)
	sts _ZL15dead_pool_queue+2+1,r25
	sts _ZL15dead_pool_queue+2,r24
	.loc 1 1013 0
>>>>>>> origin/master
	ldi r24,lo8(gs(_ZL4idlev))
	ldi r25,hi8(gs(_ZL4idlev))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
<<<<<<< HEAD
	.loc 1 968 0
	sts _ZL26kernel_request_create_args+4,__zero_reg__
	.loc 1 969 0
	call _ZL18kernel_create_taskv
.LVL43:
	.loc 1 972 0
=======
	.loc 1 1014 0
	sts _ZL26kernel_request_create_args+4,__zero_reg__
	.loc 1 1015 0
	call _ZL18kernel_create_taskv
.LVL43:
	.loc 1 1018 0
>>>>>>> origin/master
	ldi r24,lo8(gs(_Z6r_mainv))
	ldi r25,hi8(gs(_Z6r_mainv))
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
<<<<<<< HEAD
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
=======
	.loc 1 1019 0
	ldi r24,lo8(3)
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1020 0
	call _ZL18kernel_create_taskv
.LVL44:
	.loc 1 1023 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
	.loc 1 1024 0
	ldi r24,lo8(1)
	sts _ZL9task_desc+264,r24
	.loc 1 1025 0
>>>>>>> origin/master
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL45:
<<<<<<< HEAD
	.loc 1 988 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 989 0
=======
	.loc 1 1034 0
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	.loc 1 1035 0
>>>>>>> origin/master
	lds r24,132
	lds r25,132+1
	subi r24,-16
	sbci r25,-40
	sts 136+1,r25
	sts 136,r24
<<<<<<< HEAD
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
=======
	.loc 1 1037 0
	ldi r24,lo8(2)
	out 0x16,r24
.LBB76:
.LBB77:
.LBB78:
.LBB79:
	.loc 1 201 0
	clr r15
	inc r15
	.loc 1 198 0
	ldi r16,lo8(_ZL9task_desc+2176)
	ldi r17,hi8(_ZL9task_desc+2176)
.LBE79:
.LBE78:
.LBB83:
.LBB84:
	.loc 1 290 0
	ldi r24,lo8(2)
	mov r14,r24
.LBB85:
.LBB86:
	.loc 1 896 0
	ldi r25,lo8(100)
	mov r13,r25
	.loc 1 886 0
	ldi r18,lo8(20)
	mov r12,r18
.L89:
>>>>>>> origin/master
.LBE86:
.LBE85:
.LBE84:
.LBE83:
<<<<<<< HEAD
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
=======
.LBB96:
.LBB82:
	.loc 1 176 0
	lds r20,_ZL8cur_task
	lds r21,_ZL8cur_task+1
	movw r30,r20
	subi r30,-8
>>>>>>> origin/master
	sbci r31,-2
	ld r18,Z
	cpi r18,lo8(1)
	brne .L50
	subi r24,lo8(_ZL9task_desc+2208)
	sbci r25,hi8(_ZL9task_desc+2208)
	breq .+2
	rjmp .L51
.L50:
<<<<<<< HEAD
.LBB92:
.LBB91:
	.loc 1 177 0
	lds r24,_ZL12system_queue
	lds r25,_ZL12system_queue+1
	or r24,r25
	breq .L52
	.loc 1 179 0
=======
	.loc 1 178 0
	lds r18,_ZL12system_queue
	lds r19,_ZL12system_queue+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L52
	.loc 1 180 0
>>>>>>> origin/master
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L110
.L52:
<<<<<<< HEAD
.LBB90:
	.loc 1 182 0
=======
	.loc 1 183 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 803 0
=======
.LBB80:
.LBB81:
	.loc 1 774 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L91
.L57:
.LVL47:
>>>>>>> origin/master
	movw r30,r24
	subi r30,-4
	sbci r31,-2
<<<<<<< HEAD
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
=======
	.loc 1 781 0
	cp r24,r20
	cpc r25,r21
	brne .L56
	.loc 1 783 0
	ld r18,Z
	ldd r19,Z+1
	rjmp .L55
.L56:
	.loc 1 785 0
	ld r24,Z
	ldd r25,Z+1
.LVL48:
	.loc 1 779 0
	sbiw r24,0
	brne .L57
	rjmp .L55
.LVL49:
.L91:
	.loc 1 774 0
>>>>>>> origin/master
	movw r18,r24
.LVL50:
.L55:
<<<<<<< HEAD
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
=======
.LBE81:
.LBE80:
	.loc 1 188 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	.loc 1 189 0
	movw r30,r18
	subi r30,-2
	sbci r31,-2
	ld r24,Z
	sts _ZL15ticks_remaining,r24
	rjmp .L53
.LVL50:
.L54:
>>>>>>> origin/master
	.loc 1 191 0
	lds r24,_ZL8rr_queue
	lds r25,_ZL8rr_queue+1
	or r24,r25
<<<<<<< HEAD
	breq .L61
=======
	breq .L58
>>>>>>> origin/master
	.loc 1 193 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
.L110:
	call _ZL7dequeueP7queue_t.isra.1
.LVL55:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L53
<<<<<<< HEAD
.L61:
.LBE87:
	.loc 1 208 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
.L53:
.LBE90:
.LBE91:
	.loc 1 211 0
=======
.L58:
	.loc 1 198 0
	sts _ZL8cur_task+1,r17
	sts _ZL8cur_task,r16
.L53:
	.loc 1 201 0
>>>>>>> origin/master
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-12
	sbci r31,-2
	st Z,r14
.L51:
<<<<<<< HEAD
.LBE92:
.LBE93:
.LBE105:
	.loc 1 150 0
	call _ZL11exit_kernelv
.LVL56:
.LBB106:
.LBB104:
	.loc 1 227 0
=======
.LBE82:
.LBE96:
	.loc 1 152 0
	call _ZL11exit_kernelv
.LVL52:
.LBB97:
.LBB95:
	.loc 1 216 0
>>>>>>> origin/master
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
<<<<<<< HEAD
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
=======
	rjmp .L59
.L63:
.LBB88:
.LBB87:
	.loc 1 871 0
	lds r24,_ZL13ticks_counter
	subi r24,lo8(-(1))
	sts _ZL13ticks_counter,r24
	.loc 1 872 0
	lds r24,_ZL15ticks_remaining
	subi r24,lo8(-(-1))
	sts _ZL15ticks_remaining,r24
	.loc 1 873 0
	lds r24,_ZL15ticks_remaining
	cpse r24,__zero_reg__
	rjmp .L66
	.loc 1 876 0
	lds r18,_ZL18next_task_periodic
	lds r19,_ZL18next_task_periodic+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L67
	sts _ZL18next_task_periodic+1,__zero_reg__
	sts _ZL18next_task_periodic,__zero_reg__
	rjmp .L69
.L67:
	.loc 1 886 0
	lds r24,_ZL13ticks_counter
	mov r22,r12
	call __udivmodqi4
	mov r24,r25
	ldi r25,0
	movw r30,r18
	subi r30,-6
>>>>>>> origin/master
	sbci r31,-2
	ld r20,Z
	cpi r20,lo8(2)
	brne .L69
<<<<<<< HEAD
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
=======
	.loc 1 888 0
	sts _ZL8cur_task+1,r19
	sts _ZL8cur_task,r18
	.loc 1 889 0
	sts _ZL18next_task_periodic+1,__zero_reg__
	sts _ZL18next_task_periodic,__zero_reg__
	.loc 1 890 0
	sbiw r30,4
	ld r24,Z
	sts _ZL15ticks_remaining,r24
	rjmp .L68
.L69:
	.loc 1 892 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	call _ZL7dequeueP7queue_t.isra.1
.LVL53:
	sts _ZL8cur_task+1,r25
	sts _ZL8cur_task,r24
	rjmp .L68
.L66:
	.loc 1 896 0
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
	.loc 1 226 0
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	movw r30,r22
	subi r30,-11
	sbci r31,-2
>>>>>>> origin/master
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
<<<<<<< HEAD
	rjmp .L65
	.loc 1 239 0
	st Z,r15
	.loc 1 240 0
	movw r22,r12
	rjmp .L117
.LVL61:
.L63:
	.loc 1 245 0
=======
	rjmp .L62
	.loc 1 228 0
	st Z,r14
	rjmp .L90
.L60:
	.loc 1 234 0
>>>>>>> origin/master
	std Y+1,r18
	call _ZL18kernel_create_taskv
.LVL62:
	sts _ZL21kernel_request_retval+1,r25
	sts _ZL21kernel_request_retval,r24
<<<<<<< HEAD
	.loc 1 250 0
=======
	.loc 1 239 0
>>>>>>> origin/master
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
	ldd r18,Y+1
	or r24,r25
	brne .+2
<<<<<<< HEAD
	rjmp .L65
	.loc 1 254 0
=======
	rjmp .L62
	.loc 1 242 0
	lds r19,_ZL26kernel_request_create_args+4
>>>>>>> origin/master
	lds r22,_ZL8cur_task
	lds r23,_ZL8cur_task+1
	movw r30,r22
	subi r30,-15
	sbci r31,-2
<<<<<<< HEAD
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
=======
	ld r19,Z
	cpi r19,lo8(3)
	breq .+2
	rjmp .L73
.L72:
	.loc 1 248 0
	movw r30,r22
	subi r30,-11
	sbci r31,-2
	ld r18,Z
	cpi r18,lo8(1)
	breq .+2
	rjmp .L62
	.loc 1 249 0
	lds r18,_ZL26kernel_request_create_args+4
	sbiw r30,3
	.loc 1 248 0
	cpi r18,lo8(2)
	brne .L75
	.loc 1 252 0
	st Z,r18
.L75:
	.loc 1 256 0
	ld r18,Z
	cpi r18,lo8(2)
	breq .+2
	rjmp .L62
.L90:
	.loc 1 258 0
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L114
.L65:
	.loc 1 264 0
	ldi r31,lo8(_ZL9task_desc+2176)
	cp r10,r31
	ldi r31,hi8(_ZL9task_desc+2176)
	cpc r11,r31
	brne .+2
	rjmp .L62
.LBB89:
.LBB90:
	.loc 1 728 0
	movw r30,r10
	subi r30,-8
	sbci r31,-2
	st Z,__zero_reg__
	.loc 1 729 0
>>>>>>> origin/master
	adiw r30,3
	ld r24,Z
	cpi r24,lo8(2)
	breq .+2
<<<<<<< HEAD
	rjmp .L77
.LVL63:
.LBB102:
.LBB103:
	.loc 1 765 0
=======
	rjmp .L76
.LVL55:
.LBB91:
.LBB92:
	.loc 1 742 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	breq .L78
	.loc 1 767 0
	sts _ZL14periodic_queue+1,r19
	sts _ZL14periodic_queue,r18
	.loc 1 768 0
=======
	breq .L77
	.loc 1 744 0
	sts _ZL14periodic_queue+1,r19
	sts _ZL14periodic_queue,r18
	.loc 1 745 0
>>>>>>> origin/master
	movw r30,r18
	subi r30,-18
	sbci r31,-2
<<<<<<< HEAD
	rjmp .L112
.L78:
	.loc 1 770 0
=======
	rjmp .L111
.L77:
	.loc 1 747 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	breq .L80
	.loc 1 771 0
	sts _ZL14periodic_queue+2+1,r19
	sts _ZL14periodic_queue+2,r18
	.loc 1 772 0
=======
	breq .L79
	.loc 1 748 0
	sts _ZL14periodic_queue+2+1,r19
	sts _ZL14periodic_queue+2,r18
	.loc 1 749 0
>>>>>>> origin/master
	movw r30,r18
	subi r30,-16
	sbci r31,-2
.L112:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
<<<<<<< HEAD
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
=======
	rjmp .L76
.L79:
	.loc 1 751 0
	cp r24,r10
	cpc r25,r11
	brne .L81
	.loc 1 752 0
	sts _ZL14periodic_queue+2+1,__zero_reg__
	sts _ZL14periodic_queue+2,__zero_reg__
	.loc 1 753 0
	sts _ZL14periodic_queue+1,__zero_reg__
	sts _ZL14periodic_queue,__zero_reg__
	rjmp .L76
.LVL56:
.L82:
	.loc 1 765 0
>>>>>>> origin/master
	movw r30,r24
	subi r30,-16
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
<<<<<<< HEAD
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
=======
.LVL57:
.L81:
	.loc 1 757 0
	sbiw r24,0
	breq .L76
	.loc 1 759 0
	cp r24,r10
	cpc r25,r11
	brne .L82
	.loc 1 760 0
	movw r30,r10
	subi r30,-14
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
.LVL58:
	.loc 1 761 0
>>>>>>> origin/master
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
<<<<<<< HEAD
	.loc 1 785 0
=======
	.loc 1 762 0
>>>>>>> origin/master
	movw r30,r18
	subi r30,-18
	sbci r31,-2
	std Z+1,r25
	st Z,r24
<<<<<<< HEAD
.LVL67:
.L77:
.LBE103:
.LBE102:
	.loc 1 746 0
	movw r22,r12
=======
.LVL59:
.L76:
.LBE92:
.LBE91:
	.loc 1 733 0
	movw r22,r10
>>>>>>> origin/master
	ldi r24,lo8(_ZL15dead_pool_queue)
	ldi r25,hi8(_ZL15dead_pool_queue)
.L114:
	call _ZL7enqueueP7queue_tP9td_struct
<<<<<<< HEAD
.LVL68:
	rjmp .L65
.L67:
.LBE101:
.LBE100:
	.loc 1 277 0
	movw r30,r12
	subi r30,-15
=======
.LVL60:
	rjmp .L62
.L64:
.LBE90:
.LBE89:
	.loc 1 271 0
	movw r30,r10
	subi r30,-11
>>>>>>> origin/master
	sbci r31,-2
	ld r24,Z
	cpi r24,lo8(1)
<<<<<<< HEAD
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
=======
	brne .L84
	.loc 1 283 0
	movw r22,r10
	ldi r24,lo8(_ZL8rr_queue)
	ldi r25,hi8(_ZL8rr_queue)
	rjmp .L112
.L86:
	.loc 1 274 0
	movw r22,r10
	ldi r24,lo8(_ZL12system_queue)
	ldi r25,hi8(_ZL12system_queue)
	rjmp .L112
.L85:
	.loc 1 278 0
	sts _ZL18slot_task_finished,r15
.LVL61:
.LBB93:
.LBB94:
	.loc 1 795 0
	movw r30,r10
	subi r30,-12
	sbci r31,-2
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 796 0
	lds r24,_ZL14periodic_queue
	lds r25,_ZL14periodic_queue+1
	adiw r30,2
	or r24,r25
	brne .L88
	.loc 1 799 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	.loc 1 800 0
	sts _ZL14periodic_queue+1,r11
	sts _ZL14periodic_queue,r10
	rjmp .L113
.L88:
	.loc 1 806 0
	lds r24,_ZL14periodic_queue+2
	lds r25,_ZL14periodic_queue+2+1
	movw r26,r24
	subi r26,-12
	sbci r27,-2
	st X+,r10
	st X,r11
	.loc 1 807 0
	std Z+1,r25
	st Z,r24
.L113:
	.loc 1 808 0
	sts _ZL14periodic_queue+2+1,r11
	sts _ZL14periodic_queue+2,r10
	rjmp .L84
.LVL62:
.L112:
.LBE94:
.LBE93:
	.loc 1 283 0
	call _ZL7enqueueP7queue_tP9td_struct
.LVL63:
.L84:
	.loc 1 290 0
	movw r30,r10
	subi r30,-8
	sbci r31,-2
	st Z,r14
	rjmp .L62
.L59:
	.loc 1 299 0
	ldi r24,lo8(-1)
	sts _ZL9error_msg,r24
.L115:
	.loc 1 300 0
	call OS_Abort
.LVL64:
.L62:
	.loc 1 303 0
	sts _ZL14kernel_request,__zero_reg__
	rjmp .L89
.L73:
	.loc 1 244 0
>>>>>>> origin/master
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
	.section	.text.Service_Init,"ax",@progbits
.global	Service_Init
	.type	Service_Init, @function
Service_Init:
.LFB24:
	.loc 1 1141 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB98:
	.loc 1 1142 0
	ldi r24,lo8(20)
	ldi r25,0
	call _Znwj
.LVL65:
	.loc 1 1143 0
	movw r30,r24
	std Z+19,__zero_reg__
	std Z+18,__zero_reg__
.LBE98:
	.loc 1 1145 0
	ret
	.cfi_endproc
.LFE24:
	.size	Service_Init, .-Service_Init
	.section	.text.Service_Subscribe,"ax",@progbits
.global	Service_Subscribe
	.type	Service_Subscribe, @function
Service_Subscribe:
<<<<<<< HEAD
.LFB30:
	.loc 1 1108 0
	.cfi_startproc
.LVL70:
=======
.LFB25:
	.loc 1 1156 0
	.cfi_startproc
.LVL66:
>>>>>>> origin/master
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1158 0
	lds r18,_ZL8cur_task
	lds r19,_ZL8cur_task+1
	movw r30,r18
	subi r30,-11
	sbci r31,-2
	ld r20,Z
	cpi r20,lo8(2)
	breq .L119
	.loc 1 1163 0
	movw r30,r24
	ldd r20,Z+18
	ldd r21,Z+19
	cpi r20,3
	cpc r21,__zero_reg__
	brge .L119
	movw r30,r20
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	.loc 1 1165 0
	std Z+1,r19
	st Z,r18
	.loc 1 1167 0
	std Z+9,r23
	std Z+8,r22
	.loc 1 1168 0
	subi r20,-1
	sbci r21,-1
	movw r30,r24
	std Z+19,r21
	std Z+18,r20
	.loc 1 1170 0
	movw r30,r18
	subi r30,-8
	sbci r31,-2
	ldi r24,lo8(3)
.LVL67:
	st Z,r24
	ret
.LVL68:
.L119:
	.loc 1 1174 0
	ldi r24,lo8(10)
.LVL69:
	sts _ZL9error_msg,r24
	.loc 1 1175 0
	call OS_Abort
.LVL70:
	.cfi_endproc
<<<<<<< HEAD
.LFE30:
=======
.LFE25:
>>>>>>> origin/master
	.size	Service_Subscribe, .-Service_Subscribe
	.section	.text.Service_Publish,"ax",@progbits
.global	Service_Publish
	.type	Service_Publish, @function
Service_Publish:
<<<<<<< HEAD
.LFB31:
	.loc 1 1121 0
	.cfi_startproc
.LVL71:
=======
.LFB26:
	.loc 1 1189 0
	.cfi_startproc
.LVL71:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
>>>>>>> origin/master
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LBB99:
	.loc 1 1191 0
	movw r26,r24
	adiw r26,16+1
	st X,r23
	st -X,r22
	sbiw r26,16
.LVL72:
	movw r30,r24
.LBB100:
	.loc 1 1194 0
	ldi r18,0
	ldi r19,0
	.loc 1 1199 0
	ldi r28,lo8(2)
.LVL73:
.L122:
	.loc 1 1194 0 discriminator 1
	movw r26,r24
	adiw r26,18
	ld r20,X+
	ld r21,X
	sbiw r26,18+1
	cp r20,r18
	cpc r21,r19
	brlt .L124
	.loc 1 1196 0 discriminator 2
	ldd r26,Z+8
	ldd r27,Z+9
	st X+,r22
	st X,r23
	.loc 1 1197 0 discriminator 2
	std Z+9,__zero_reg__
	std Z+8,__zero_reg__
	.loc 1 1199 0 discriminator 2
	ld r26,Z
	ldd r27,Z+1
	subi r26,-8
	sbci r27,-2
	st X,r28
	.loc 1 1200 0 discriminator 2
	st Z+,__zero_reg__
	st Z+,__zero_reg__
	.loc 1 1194 0 discriminator 2
	subi r18,-1
	sbci r19,-1
.LVL74:
	rjmp .L122
.L124:
/* epilogue start */
.LBE100:
.LBE99:
	.loc 1 1204 0
	pop r28
	ret
	.cfi_endproc
<<<<<<< HEAD
.LFE31:
=======
.LFE26:
>>>>>>> origin/master
	.size	Service_Publish, .-Service_Publish
	.section	.text.Task_Create_System,"ax",@progbits
.global	Task_Create_System
	.type	Task_Create_System, @function
Task_Create_System:
<<<<<<< HEAD
.LFB32:
	.loc 1 1139 0
	.cfi_startproc
.LVL72:
	.loc 1 1139 0
=======
.LFB27:
	.loc 1 1220 0
	.cfi_startproc
.LVL75:
>>>>>>> origin/master
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
<<<<<<< HEAD
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
=======
.LBB101:
	.loc 1 1224 0
	in r28,__SREG__
.LVL76:
	.loc 1 1225 0
/* #APP */
 ;  1225 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1227 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1228 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1229 0
	ldi r24,lo8(3)
.LVL77:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1232 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1233 0
	call _ZL12enter_kernelv
.LVL78:
	.loc 1 1235 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL79:
	.loc 1 1236 0
	out __SREG__,r28
/* epilogue start */
.LBE101:
	.loc 1 1239 0
	pop r28
.LVL80:
	ret
	.cfi_endproc
.LFE27:
>>>>>>> origin/master
	.size	Task_Create_System, .-Task_Create_System
	.section	.text.Task_Create_RR,"ax",@progbits
.global	Task_Create_RR
	.type	Task_Create_RR, @function
Task_Create_RR:
<<<<<<< HEAD
.LFB33:
	.loc 1 1161 0
	.cfi_startproc
.LVL78:
=======
.LFB28:
	.loc 1 1242 0
	.cfi_startproc
.LVL81:
>>>>>>> origin/master
	push r28
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
<<<<<<< HEAD
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
=======
.LBB102:
	.loc 1 1246 0
	in r28,__SREG__
.LVL82:
	.loc 1 1247 0
/* #APP */
 ;  1247 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1249 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1250 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1251 0
	ldi r24,lo8(1)
.LVL83:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1254 0
	ldi r24,lo8(2)
	sts _ZL14kernel_request,r24
	.loc 1 1255 0
	call _ZL12enter_kernelv
.LVL84:
	.loc 1 1257 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL85:
	.loc 1 1258 0
	out __SREG__,r28
/* epilogue start */
.LBE102:
	.loc 1 1261 0
	pop r28
.LVL86:
	ret
	.cfi_endproc
.LFE28:
>>>>>>> origin/master
	.size	Task_Create_RR, .-Task_Create_RR
	.section	.text.Task_Create_Periodic,"ax",@progbits
.global	Task_Create_Periodic
	.type	Task_Create_Periodic, @function
Task_Create_Periodic:
<<<<<<< HEAD
.LFB34:
	.loc 1 1198 0
	.cfi_startproc
.LVL84:
=======
.LFB29:
	.loc 1 1279 0
	.cfi_startproc
.LVL87:
>>>>>>> origin/master
	push r16
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI9:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI10:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
<<<<<<< HEAD
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
=======
.LBB103:
	.loc 1 1283 0
	in r28,__SREG__
.LVL88:
	.loc 1 1284 0
/* #APP */
 ;  1284 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1286 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1287 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1288 0
	ldi r24,lo8(2)
.LVL89:
	sts _ZL26kernel_request_create_args+4,r24
	.loc 1 1289 0
	sts _ZL26kernel_request_create_args+5+1,r21
	sts _ZL26kernel_request_create_args+5,r20
	.loc 1 1290 0
	sts _ZL26kernel_request_create_args+7+1,r19
	sts _ZL26kernel_request_create_args+7,r18
	.loc 1 1291 0
	sts _ZL26kernel_request_create_args+9+1,r17
	sts _ZL26kernel_request_create_args+9,r16
	.loc 1 1294 0
	sts _ZL14kernel_request,r24
	.loc 1 1295 0
	call _ZL12enter_kernelv
.LVL90:
	.loc 1 1297 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL91:
	.loc 1 1298 0
	out __SREG__,r28
/* epilogue start */
.LBE103:
	.loc 1 1301 0
	pop r28
.LVL92:
	pop r17
	pop r16
.LVL93:
	ret
	.cfi_endproc
.LFE29:
>>>>>>> origin/master
	.size	Task_Create_Periodic, .-Task_Create_Periodic
	.section	.text.Task_Create,"ax",@progbits
.global	Task_Create
	.type	Task_Create, @function
Task_Create:
<<<<<<< HEAD
.LFB35:
	.loc 1 1243 0
	.cfi_startproc
.LVL91:
=======
.LFB30:
	.loc 1 1320 0
	.cfi_startproc
.LVL94:
>>>>>>> origin/master
	push r28
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
<<<<<<< HEAD
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
=======
.LBB104:
	.loc 1 1324 0
	in r28,__SREG__
.LVL95:
	.loc 1 1325 0
/* #APP */
 ;  1325 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1327 0
/* #NOAPP */
	sts _ZL26kernel_request_create_args+1,r25
	sts _ZL26kernel_request_create_args,r24
	.loc 1 1328 0
	sts _ZL26kernel_request_create_args+2+1,r23
	sts _ZL26kernel_request_create_args+2,r22
	.loc 1 1329 0
	sts _ZL26kernel_request_create_args+4,r20
	.loc 1 1332 0
	ldi r24,lo8(2)
.LVL96:
	sts _ZL14kernel_request,r24
	.loc 1 1333 0
	call _ZL12enter_kernelv
.LVL97:
	.loc 1 1335 0
	lds r24,_ZL21kernel_request_retval
	lds r25,_ZL21kernel_request_retval+1
.LVL98:
	.loc 1 1336 0
	out __SREG__,r28
/* epilogue start */
.LBE104:
	.loc 1 1339 0
	pop r28
.LVL99:
	ret
	.cfi_endproc
.LFE30:
>>>>>>> origin/master
	.size	Task_Create, .-Task_Create
	.section	.text.Task_Next,"ax",@progbits
.global	Task_Next
	.type	Task_Next, @function
Task_Next:
<<<<<<< HEAD
.LFB36:
	.loc 1 1269 0
=======
.LFB31:
	.loc 1 1346 0
>>>>>>> origin/master
	.cfi_startproc
	push r28
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI14:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI15:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
<<<<<<< HEAD
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
=======
.LBB105:
	.loc 1 1349 0
	in r24,__SREG__
	std Y+1,r24
	.loc 1 1350 0
/* #APP */
 ;  1350 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1352 0
/* #NOAPP */
	ldi r24,lo8(4)
	sts _ZL14kernel_request,r24
	.loc 1 1353 0
	call _ZL12enter_kernelv
.LVL100:
	.loc 1 1355 0
	ldd r24,Y+1
	out __SREG__,r24
/* epilogue start */
.LBE105:
	.loc 1 1356 0
>>>>>>> origin/master
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
<<<<<<< HEAD
.LFE36:
=======
.LFE31:
>>>>>>> origin/master
	.size	Task_Next, .-Task_Next
	.section	.text.Task_GetArg,"ax",@progbits
.global	Task_GetArg
	.type	Task_GetArg, @function
Task_GetArg:
<<<<<<< HEAD
.LFB38:
	.loc 1 1302 0
=======
.LFB33:
	.loc 1 1379 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
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
=======
.LBB106:
	.loc 1 1383 0
	in r18,__SREG__
.LVL101:
	.loc 1 1384 0
/* #APP */
 ;  1384 ".././os.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 1386 0
>>>>>>> origin/master
/* #NOAPP */
	lds r30,_ZL8cur_task
	lds r31,_ZL8cur_task+1
	subi r30,-13
	sbci r31,-2
	ld r24,Z
	ldd r25,Z+1
<<<<<<< HEAD
.LVL99:
	.loc 1 1311 0
	out __SREG__,r18
.LBE112:
	.loc 1 1314 0
	ret
	.cfi_endproc
.LFE38:
=======
.LVL102:
	.loc 1 1388 0
	out __SREG__,r18
.LBE106:
	.loc 1 1391 0
	ret
	.cfi_endproc
.LFE33:
>>>>>>> origin/master
	.size	Task_GetArg, .-Task_GetArg
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
<<<<<<< HEAD
.LFB39:
	.loc 1 1320 0
=======
.LFB34:
	.loc 1 1397 0
>>>>>>> origin/master
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
<<<<<<< HEAD
	.loc 1 1321 0
	call _Z7OS_Initv
.LVL100:
	.cfi_endproc
.LFE39:
=======
	.loc 1 1398 0
	call _Z7OS_Initv
.LVL103:
	.cfi_endproc
.LFE34:
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	0xeab
=======
	.long	0xf38
>>>>>>> origin/master
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LASF121
	.byte	0x4
	.long	.LASF122
	.long	.LASF123
	.long	.Ldebug_ranges0+0x30
=======
	.long	.LASF126
	.byte	0x4
	.long	.LASF127
	.long	.LASF128
	.long	.Ldebug_ranges0+0x48
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LASF124
	.byte	0x1
	.uleb128 0x2
=======
	.long	.LASF38
	.byte	0x14
	.byte	0x5
	.byte	0x8c
	.long	0xe8
	.uleb128 0x6
>>>>>>> origin/master
	.long	.LASF13
	.byte	0x5
	.byte	0x8d
	.long	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x8e
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x8f
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0x90
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x2c
	.long	0xf3
	.uleb128 0x7
	.byte	0x2
	.long	0xf9
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x32
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
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0x38
	.long	0xfa
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x3e
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
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.byte	0x46
<<<<<<< HEAD
	.long	0xeb
	.uleb128 0xa
	.byte	0xf
	.byte	0x5
	.byte	0x4d
	.long	.LASF41
	.long	0x1a2
	.uleb128 0xb
=======
	.long	0x12a
	.uleb128 0xb
	.byte	0xb
	.byte	0x5
	.byte	0x4d
	.long	.LASF45
	.long	0x1c5
	.uleb128 0xc
>>>>>>> origin/master
	.string	"f"
	.byte	0x5
	.byte	0x4f
	.long	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"arg"
	.byte	0x5
	.byte	0x51
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x53
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0x56
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF34
	.byte	0x5
	.byte	0x58
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x5a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
<<<<<<< HEAD
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
=======
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.long	0x166
	.uleb128 0x2
	.long	.LASF37
>>>>>>> origin/master
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
<<<<<<< HEAD
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
=======
	.long	0x1db
	.uleb128 0xd
	.long	.LASF39
	.word	0x110
	.byte	0x5
	.byte	0x62
	.long	0x27d
	.uleb128 0x6
	.long	.LASF40
	.byte	0x5
	.byte	0x65
	.long	0x27d
>>>>>>> origin/master
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"sp"
	.byte	0x5
<<<<<<< HEAD
	.byte	0x6a
	.long	0x28f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.long	.LASF30
=======
	.byte	0x67
	.long	0x294
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.long	.LASF33
>>>>>>> origin/master
	.byte	0x5
	.byte	0x6c
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x102
<<<<<<< HEAD
	.uleb128 0xc
	.long	.LASF29
=======
	.uleb128 0x6
	.long	.LASF34
>>>>>>> origin/master
	.byte	0x5
	.byte	0x6e
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x6f
	.long	0x5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x106
<<<<<<< HEAD
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x70
	.long	0x5f
=======
	.uleb128 0x6
	.long	.LASF41
	.byte	0x5
	.byte	0x6e
	.long	0x11f
>>>>>>> origin/master
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
<<<<<<< HEAD
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
=======
>>>>>>> origin/master
	.string	"arg"
	.byte	0x5
	.byte	0x77
	.long	0x58
	.byte	0x3
	.byte	0x23
<<<<<<< HEAD
	.uleb128 0x10d
	.uleb128 0xc
	.long	.LASF28
=======
	.uleb128 0x109
	.uleb128 0x6
	.long	.LASF32
>>>>>>> origin/master
	.byte	0x5
	.byte	0x79
	.long	0x3b
	.byte	0x3
	.byte	0x23
<<<<<<< HEAD
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
=======
	.uleb128 0x10b
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0x74
	.long	0x29f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x6
	.long	.LASF43
	.byte	0x5
	.byte	0x76
	.long	0x29f
>>>>>>> origin/master
	.byte	0x3
	.byte	0x23
	.uleb128 0x112
	.byte	0
	.uleb128 0xe
	.long	0x46
<<<<<<< HEAD
	.long	0x288
	.uleb128 0xf
	.long	0x288
=======
	.long	0x28d
	.uleb128 0xf
	.long	0x28d
>>>>>>> origin/master
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
<<<<<<< HEAD
	.long	.LASF40
	.uleb128 0x10
	.long	0x294
	.uleb128 0x6
=======
	.long	.LASF44
	.uleb128 0x10
	.long	0x299
	.uleb128 0x7
>>>>>>> origin/master
	.byte	0x2
	.long	0x3b
	.uleb128 0x7
	.byte	0x2
<<<<<<< HEAD
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
=======
	.long	0x1d0
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x7a
	.long	.LASF46
	.long	0x2ce
	.uleb128 0x6
	.long	.LASF47
	.byte	0x5
	.byte	0x7b
	.long	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.byte	0x7c
	.long	0x29f
>>>>>>> origin/master
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
<<<<<<< HEAD
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
=======
	.long	.LASF49
	.byte	0x5
	.byte	0x7e
	.long	0x2a5
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.byte	0x84
	.long	.LASF50
	.long	0x302
	.uleb128 0x6
	.long	.LASF47
	.byte	0x5
	.byte	0x86
	.long	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x5
	.byte	0x88
	.long	0x29f
>>>>>>> origin/master
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
<<<<<<< HEAD
	.long	.LASF47
	.byte	0x5
	.byte	0x91
	.long	0x2d4
=======
	.long	.LASF51
	.byte	0x5
	.byte	0x8a
	.long	0x2d9
	.uleb128 0xe
	.long	0x29f
	.long	0x31d
	.uleb128 0xf
	.long	0x28d
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	0x32d
	.long	0x32d
	.uleb128 0xf
	.long	0x28d
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4d
>>>>>>> origin/master
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.byte	0x10
<<<<<<< HEAD
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
=======
	.long	0x37e
	.uleb128 0xa
	.long	.LASF52
	.sleb128 0
	.uleb128 0xa
	.long	.LASF53
	.sleb128 1
	.uleb128 0xa
	.long	.LASF54
	.sleb128 2
	.uleb128 0xa
	.long	.LASF55
	.sleb128 3
	.uleb128 0xa
	.long	.LASF56
	.sleb128 4
	.uleb128 0xa
	.long	.LASF57
	.sleb128 5
	.uleb128 0xa
	.long	.LASF58
	.sleb128 6
	.uleb128 0xa
	.long	.LASF59
	.sleb128 7
	.uleb128 0xa
	.long	.LASF60
	.sleb128 8
	.uleb128 0xa
	.long	.LASF61
	.sleb128 9
	.uleb128 0xa
	.long	.LASF62
	.sleb128 10
	.byte	0
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.word	0x304
	.long	0x29f
	.byte	0x1
	.long	0x3b6
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.word	0x304
	.long	0x3b6
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.word	0x304
	.long	0x29f
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.word	0x30a
	.long	0x29f
>>>>>>> origin/master
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
<<<<<<< HEAD
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
=======
	.long	0x2ce
	.uleb128 0x12
	.long	.LASF66
	.byte	0x1
	.word	0x34f
	.long	0x29f
	.byte	0x1
	.long	0x3e8
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.word	0x34f
	.long	0x3e8
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF69
	.byte	0x1
	.word	0x351
	.long	0x29f
>>>>>>> origin/master
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
<<<<<<< HEAD
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
=======
	.long	0x302
	.uleb128 0x16
	.long	.LASF74
	.byte	0x2
	.byte	0x8e
	.byte	0x3
	.long	0x42d
	.uleb128 0x17
	.long	.LASF70
	.byte	0x2
	.byte	0x8e
	.long	0x42d
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF71
	.byte	0x2
	.byte	0x90
	.long	0x42d
	.uleb128 0x18
	.long	.LASF72
>>>>>>> origin/master
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x1a
	.byte	0x1
<<<<<<< HEAD
	.long	.LASF126
=======
	.long	.LASF129
>>>>>>> origin/master
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
<<<<<<< HEAD
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
=======
	.long	.LASF73
	.uleb128 0x1b
	.long	.LASF89
	.byte	0x1
	.word	0x41b
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF75
	.byte	0x1
	.word	0x319
	.byte	0x1
	.long	0x463
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.word	0x319
	.long	0x3b6
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.word	0x319
	.long	0x29f
	.byte	0
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.word	0x2e3
	.byte	0x1
	.long	0x497
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.word	0x2e3
	.long	0x3b6
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.word	0x2e3
	.long	0x29f
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.word	0x2f4
	.long	0x29f
>>>>>>> origin/master
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
<<<<<<< HEAD
	.byte	0x7b
	.long	.LFB11
	.long	.LFE11
=======
	.byte	0x7d
	.long	.LFB6
	.long	.LFE6
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF80
	.byte	0x1
<<<<<<< HEAD
	.word	0x1b7
	.long	.LFB15
	.long	.LFE15
=======
	.word	0x1ae
	.long	.LFB10
	.long	.LFE10
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x1
<<<<<<< HEAD
	.word	0x1e4
	.long	.LFB16
	.long	.LFE16
=======
	.word	0x1db
	.long	.LFB11
	.long	.LFE11
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1f
<<<<<<< HEAD
	.long	.LASF127
	.byte	0x1
	.word	0x354
	.long	.LFB24
	.long	.LFE24
=======
	.long	.LASF130
	.byte	0x1
	.word	0x336
	.long	.LFB18
	.long	.LFE18
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
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
=======
	.long	0x512
	.uleb128 0x20
	.long	.LASF67
	.byte	0x1
	.word	0x336
	.long	0x3e8
	.long	.LLST0
	.uleb128 0x21
	.long	.LASF76
	.byte	0x1
	.word	0x336
	.long	0x29f
>>>>>>> origin/master
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
<<<<<<< HEAD
	.word	0x505
	.long	.LFB37
	.long	.LFE37
	.long	.LLST1
	.byte	0x1
	.long	0x566
=======
	.word	0x552
	.long	.LFB32
	.long	.LFE32
	.long	.LLST1
	.byte	0x1
	.long	0x550
>>>>>>> origin/master
	.uleb128 0x23
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
<<<<<<< HEAD
	.word	0x507
=======
	.word	0x554
>>>>>>> origin/master
	.long	0x3b
	.long	.LLST2
	.uleb128 0x25
	.long	.LVL3
<<<<<<< HEAD
	.long	0x4d6
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x38e
	.long	.LFB41
	.long	.LFE41
=======
	.long	0x4c0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x3bc
	.long	.LFB36
	.long	.LFE36
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
	.long	0x59f
	.uleb128 0x27
	.long	0x39f
	.byte	0x6
	.byte	0xfa
	.long	0x39f
=======
	.long	0x589
	.uleb128 0x27
	.long	0x3cd
	.byte	0x6
	.byte	0xfa
	.long	0x3cd
>>>>>>> origin/master
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
<<<<<<< HEAD
	.long	0x3ac
=======
	.long	0x3da
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LASF128
	.byte	0x1
	.word	0x25b
=======
	.long	.LASF131
	.byte	0x1
	.word	0x252
>>>>>>> origin/master
	.long	0x58
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
	.long	0x64b
=======
	.long	0x635
>>>>>>> origin/master
	.uleb128 0x23
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
<<<<<<< HEAD
	.word	0x25e
	.long	0x29a
=======
	.word	0x255
	.long	0x29f
>>>>>>> origin/master
	.long	.LLST3
	.uleb128 0x24
	.long	.LASF83
	.byte	0x1
<<<<<<< HEAD
	.word	0x25f
	.long	0x294
=======
	.word	0x256
	.long	0x299
>>>>>>> origin/master
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
<<<<<<< HEAD
	.word	0x296
	.long	0x294
=======
	.word	0x28d
	.long	0x299
>>>>>>> origin/master
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2c
<<<<<<< HEAD
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
=======
	.long	0x43d
	.long	.LBB35
	.long	.LBE35
	.byte	0x1
	.word	0x2bb
	.long	0x603
	.uleb128 0x2d
	.long	0x44a
	.uleb128 0x2e
	.long	0x456
>>>>>>> origin/master
	.long	.LLST5
	.byte	0
	.uleb128 0x2f
	.long	.LVL7
<<<<<<< HEAD
	.long	0x566
	.long	0x640
=======
	.long	0x550
	.long	0x62a
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	0x39f
=======
	.long	0x3cd
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.byte	0
	.uleb128 0x25
	.long	.LVL13
<<<<<<< HEAD
	.long	0x4eb
=======
	.long	0x4d5
>>>>>>> origin/master
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
<<<<<<< HEAD
	.long	.LASF129
	.byte	0x1
	.word	0x213
	.long	.LFB17
	.long	.LFE17
=======
	.long	.LASF132
	.byte	0x1
	.word	0x20a
	.long	.LFB12
	.long	.LFE12
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.long	.LASF86
	.byte	0x1
<<<<<<< HEAD
	.word	0x3fa
	.long	.LFB29
	.long	.LFE29
=======
	.word	0x428
	.long	.LFB23
	.long	.LFE23
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
	.long	0x83b
=======
	.long	0x825
>>>>>>> origin/master
	.uleb128 0x23
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
<<<<<<< HEAD
	.word	0x3fc
=======
	.word	0x42a
>>>>>>> origin/master
	.long	0x3b
	.long	.LLST6
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
<<<<<<< HEAD
	.word	0x3fc
=======
	.word	0x42a
>>>>>>> origin/master
	.long	0x3b
	.long	.LLST7
	.uleb128 0x24
	.long	.LASF87
	.byte	0x1
<<<<<<< HEAD
	.word	0x3fd
=======
	.word	0x42b
>>>>>>> origin/master
	.long	0x3b
	.long	.LLST8
	.uleb128 0x24
	.long	.LASF88
	.byte	0x1
<<<<<<< HEAD
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
=======
	.word	0x42b
	.long	0x3b
	.long	.LLST9
	.uleb128 0x2c
	.long	0x434
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x444
	.long	0x6f7
	.uleb128 0x34
	.long	0x3ee
	.long	.LBB39
	.long	.LBE39
	.byte	0x1
	.word	0x421
	.uleb128 0x35
	.long	0x3fa
>>>>>>> origin/master
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x36
<<<<<<< HEAD
	.long	0x3d8
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3e3
=======
	.long	0x406
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x411
>>>>>>> origin/master
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
<<<<<<< HEAD
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
=======
	.long	0x434
	.long	.LBB41
	.long	.LBE41
	.byte	0x1
	.word	0x44b
	.long	0x744
	.uleb128 0x34
	.long	0x3ee
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x421
	.uleb128 0x35
	.long	0x3fa
>>>>>>> origin/master
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x36
<<<<<<< HEAD
	.long	0x3d8
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3e3
=======
	.long	0x406
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x411
>>>>>>> origin/master
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
<<<<<<< HEAD
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
=======
	.long	0x434
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x455
	.long	0x78f
	.uleb128 0x34
	.long	0x3ee
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x421
	.uleb128 0x2e
	.long	0x3fa
>>>>>>> origin/master
	.long	.LLST10
	.uleb128 0x23
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x38
<<<<<<< HEAD
	.long	0x3d8
	.long	.LLST11
	.uleb128 0x38
	.long	0x3e3
=======
	.long	0x406
	.long	.LLST11
	.uleb128 0x38
	.long	0x411
>>>>>>> origin/master
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
<<<<<<< HEAD
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
=======
	.long	0x434
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x45c
	.long	0x7da
	.uleb128 0x34
	.long	0x3ee
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.word	0x421
	.uleb128 0x2e
	.long	0x3fa
>>>>>>> origin/master
	.long	.LLST13
	.uleb128 0x23
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x38
<<<<<<< HEAD
	.long	0x3d8
	.long	.LLST14
	.uleb128 0x38
	.long	0x3e3
=======
	.long	0x406
	.long	.LLST14
	.uleb128 0x38
	.long	0x411
>>>>>>> origin/master
	.long	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
<<<<<<< HEAD
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
=======
	.long	0x434
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.word	0x462
	.uleb128 0x34
	.long	0x3ee
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x421
	.uleb128 0x35
	.long	0x3fa
>>>>>>> origin/master
	.byte	0x4
	.long	0x41c80000
	.uleb128 0x23
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x36
<<<<<<< HEAD
	.long	0x3d8
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x3e3
=======
	.long	0x406
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x37
	.long	0x411
>>>>>>> origin/master
	.long	0x61a80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
<<<<<<< HEAD
	.long	0x3ee
	.byte	0
	.long	0x84b
	.uleb128 0x1b
=======
	.long	0x41c
	.byte	0
	.long	0x835
	.uleb128 0x1a
>>>>>>> origin/master
	.long	0x83
	.byte	0
	.uleb128 0x3a
	.long	.LASF90
<<<<<<< HEAD
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
=======
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF91
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF92
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF93
	.byte	0x1
	.word	0x362
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x1
	.word	0x2d5
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x3d7
	.long	.LASF133
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.byte	0x1
	.long	0xa18
>>>>>>> origin/master
	.uleb128 0x23
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
<<<<<<< HEAD
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
=======
	.word	0x3d9
	.long	0x58
	.long	.LLST17
	.uleb128 0x2c
	.long	0x835
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.word	0x412
	.long	0x9e1
	.uleb128 0x3c
	.long	0x83d
	.long	.LBB78
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x96
	.long	0x8fa
	.uleb128 0x3d
	.long	0x37e
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.byte	0xbc
	.long	0x8f0
	.uleb128 0x2d
	.long	0x38f
	.uleb128 0x2e
	.long	0x39b
	.long	.LLST18
>>>>>>> origin/master
	.uleb128 0x23
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x38
	.long	0x42d
	.long	.LLST18
	.uleb128 0x38
<<<<<<< HEAD
	.long	0x439
=======
	.long	0x3a8
>>>>>>> origin/master
	.long	.LLST19
	.uleb128 0x38
	.long	0x445
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x25
<<<<<<< HEAD
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
=======
	.long	.LVL51
	.long	0x550
	.byte	0
	.uleb128 0x3c
	.long	0x845
	.long	.LBB83
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x9d
	.long	0x9d7
	.uleb128 0x3c
	.long	0x84d
	.long	.LBB85
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xdf
	.long	0x944
	.uleb128 0x3e
	.long	.LVL53
	.long	0x550
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
	.long	0x3cd
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x856
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.word	0x10a
	.long	0x998
	.uleb128 0x2c
	.long	0x463
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.word	0x2db
	.long	0x98e
	.uleb128 0x2d
	.long	0x470
	.uleb128 0x2e
	.long	0x47c
	.long	.LLST20
>>>>>>> origin/master
	.uleb128 0x23
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x38
<<<<<<< HEAD
	.long	0x37a
=======
	.long	0x489
>>>>>>> origin/master
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x25
<<<<<<< HEAD
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
=======
	.long	.LVL60
	.long	0x4d5
	.byte	0
	.uleb128 0x2c
	.long	0x43d
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.word	0x117
	.long	0x9bb
	.uleb128 0x2d
	.long	0x44a
	.uleb128 0x2e
	.long	0x456
>>>>>>> origin/master
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
<<<<<<< HEAD
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
=======
	.long	.LVL54
	.long	0x589
	.uleb128 0x25
	.long	.LVL63
	.long	0x4d5
	.uleb128 0x25
	.long	.LVL64
	.long	0x64b
	.byte	0
	.uleb128 0x25
	.long	.LVL52
	.long	0x4ab
	.byte	0
	.uleb128 0x25
	.long	.LVL43
	.long	0x589
	.uleb128 0x25
	.long	.LVL44
	.long	0x589
	.uleb128 0x3e
	.long	.LVL45
	.long	0x550
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	0x39f
=======
	.long	0x3cd
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
<<<<<<< HEAD
	.long	.LASF95
	.byte	0x1
	.word	0x453
	.long	.LFB30
	.long	.LFE30
=======
	.long	.LASF96
	.byte	0x1
	.word	0x474
	.long	0xa68
	.long	.LFB24
	.long	.LFE24
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
	.long	0xa7c
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.word	0x453
	.long	0xa7c
=======
	.long	0xa68
	.uleb128 0x23
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2b
	.long	.LASF97
	.byte	0x1
	.word	0x476
	.long	0xa68
>>>>>>> origin/master
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.uleb128 0x40
	.string	"v"
	.byte	0x1
	.word	0x453
	.long	0xa82
=======
	.uleb128 0x3e
	.long	.LVL65
	.long	0xf1f
	.uleb128 0x30
>>>>>>> origin/master
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x98
	.uleb128 0x33
	.byte	0x1
<<<<<<< HEAD
	.long	.LASF96
	.byte	0x1
	.word	0x460
	.long	.LFB31
	.long	.LFE31
=======
	.long	.LASF98
	.byte	0x1
	.word	0x483
	.long	.LFB25
	.long	.LFE25
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
	.long	0xac5
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.word	0x460
	.long	0xa7c
=======
	.long	0xaae
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.word	0x483
	.long	0xa68
	.long	.LLST23
	.uleb128 0x40
	.string	"v"
	.byte	0x1
	.word	0x483
	.long	0x32d
	.long	.LLST24
	.uleb128 0x25
	.long	.LVL70
	.long	0x64b
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.word	0x4a4
	.long	.LFB26
	.long	.LFE26
	.long	.LLST25
	.byte	0x1
	.long	0xb03
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.word	0x4a4
	.long	0xa68
>>>>>>> origin/master
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.uleb128 0x40
	.string	"v"
	.byte	0x1
	.word	0x460
=======
	.uleb128 0x41
	.string	"v"
	.byte	0x1
	.word	0x4a4
>>>>>>> origin/master
	.long	0x4d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x23
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x4aa
	.long	0x58
	.long	.LLST26
	.byte	0
<<<<<<< HEAD
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
=======
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x4c3
	.long	0x29
	.long	.LFB27
	.long	.LFE27
	.long	.LLST27
	.byte	0x1
	.long	0xb71
	.uleb128 0x40
	.string	"f"
	.byte	0x1
	.word	0x4c3
	.long	0xf3
	.long	.LLST28
	.uleb128 0x40
	.string	"arg"
	.byte	0x1
	.word	0x4c3
	.long	0x4d
	.long	.LLST29
	.uleb128 0x23
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2b
	.long	.LASF101
	.byte	0x1
	.word	0x4c5
>>>>>>> origin/master
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
<<<<<<< HEAD
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
=======
	.word	0x4c6
	.long	0x3b
	.long	.LLST30
	.uleb128 0x25
	.long	.LVL78
	.long	0x4c0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.word	0x4d9
	.long	0x29
	.long	.LFB28
	.long	.LFE28
	.long	.LLST31
	.byte	0x1
	.long	0xbdf
	.uleb128 0x40
	.string	"f"
	.byte	0x1
	.word	0x4d9
	.long	0xf3
	.long	.LLST32
	.uleb128 0x40
	.string	"arg"
	.byte	0x1
	.word	0x4d9
	.long	0x4d
	.long	.LLST33
	.uleb128 0x23
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2b
	.long	.LASF101
	.byte	0x1
	.word	0x4db
>>>>>>> origin/master
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
<<<<<<< HEAD
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
=======
	.word	0x4dc
	.long	0x3b
	.long	.LLST34
	.uleb128 0x25
	.long	.LVL84
	.long	0x4c0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x4fe
	.long	0x29
	.long	.LFB29
	.long	.LFE29
	.long	.LLST35
	.byte	0x1
	.long	0xc7d
	.uleb128 0x40
	.string	"f"
	.byte	0x1
	.word	0x4fe
	.long	0xf3
	.long	.LLST36
	.uleb128 0x40
	.string	"arg"
	.byte	0x1
	.word	0x4fe
	.long	0x4d
	.long	.LLST37
	.uleb128 0x20
	.long	.LASF33
	.byte	0x1
	.word	0x4fe
	.long	0x5f
	.long	.LLST38
	.uleb128 0x20
	.long	.LASF34
	.byte	0x1
	.word	0x4fe
>>>>>>> origin/master
	.long	0x5f
	.long	.LLST39
	.uleb128 0x20
<<<<<<< HEAD
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
=======
	.long	.LASF35
	.byte	0x1
	.word	0x4fe
	.long	0x5f
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x2b
	.long	.LASF101
	.byte	0x1
	.word	0x500
>>>>>>> origin/master
	.long	0x29
	.byte	0x1
	.byte	0x68
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
<<<<<<< HEAD
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
=======
	.word	0x501
	.long	0x3b
	.long	.LLST41
	.uleb128 0x25
	.long	.LVL90
	.long	0x4c0
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x527
	.long	0x58
	.long	.LFB30
	.long	.LFE30
	.long	.LLST42
	.byte	0x1
	.long	0xd10
	.uleb128 0x40
	.string	"f"
	.byte	0x1
	.word	0x527
	.long	0xf3
	.long	.LLST43
	.uleb128 0x40
	.string	"arg"
	.byte	0x1
	.word	0x527
	.long	0x58
	.long	.LLST44
>>>>>>> origin/master
	.uleb128 0x20
	.long	.LASF32
	.byte	0x1
<<<<<<< HEAD
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
=======
	.word	0x527
	.long	0x6a
	.long	.LLST45
	.uleb128 0x20
	.long	.LASF105
	.byte	0x1
	.word	0x527
	.long	0x6a
	.long	.LLST46
	.uleb128 0x23
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x2b
	.long	.LASF101
	.byte	0x1
	.word	0x529
>>>>>>> origin/master
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
<<<<<<< HEAD
	.word	0x4dd
	.long	0x3b
	.long	.LLST44
	.uleb128 0x25
	.long	.LVL94
	.long	0x4d6
=======
	.word	0x52a
	.long	0x3b
	.long	.LLST47
	.uleb128 0x25
	.long	.LVL97
	.long	0x4c0
>>>>>>> origin/master
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
<<<<<<< HEAD
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
=======
	.long	.LASF106
	.byte	0x1
	.word	0x541
	.long	.LFB31
	.long	.LFE31
	.long	.LLST48
	.byte	0x1
	.long	0xd4d
	.uleb128 0x23
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x2b
	.long	.LASF82
	.byte	0x1
	.word	0x543
	.long	0xd4d
>>>>>>> origin/master
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x25
<<<<<<< HEAD
	.long	.LVL97
	.long	0x4d6
=======
	.long	.LVL100
	.long	0x4c0
>>>>>>> origin/master
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x3b
<<<<<<< HEAD
	.uleb128 0x43
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x515
	.long	0x58
	.long	.LFB38
	.long	.LFE38
=======
	.uleb128 0x3f
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.word	0x562
	.long	0x58
	.long	.LFB33
	.long	.LFE33
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
	.long	0xd5e
	.uleb128 0x23
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x44
	.string	"arg"
	.byte	0x1
	.word	0x517
=======
	.long	0xd9c
	.uleb128 0x23
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x43
	.string	"arg"
	.byte	0x1
	.word	0x564
>>>>>>> origin/master
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
<<<<<<< HEAD
	.word	0x518
=======
	.word	0x565
>>>>>>> origin/master
	.long	0x3b
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
<<<<<<< HEAD
	.uleb128 0x43
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x527
	.long	0x58
	.long	.LFB39
	.long	.LFE39
=======
	.uleb128 0x3f
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.word	0x574
	.long	0x58
	.long	.LFB34
	.long	.LFE34
>>>>>>> origin/master
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
<<<<<<< HEAD
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
=======
	.long	0xdc4
	.uleb128 0x25
	.long	.LVL103
	.long	0x85f
	.byte	0
	.uleb128 0x44
	.long	.LASF109
	.byte	0x1
	.byte	0x24
	.long	0x29f
	.byte	0x5
	.byte	0x3
	.long	_ZL8cur_task
	.uleb128 0x44
	.long	.LASF110
	.byte	0x1
	.byte	0x27
	.long	0x29f
	.byte	0x5
	.byte	0x3
	.long	_ZL18next_task_periodic
	.uleb128 0x44
	.long	.LASF111
	.byte	0x1
	.byte	0x2a
	.long	0xdf7
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL9kernel_sp
	.uleb128 0x10
	.long	0x5f
	.uleb128 0xe
<<<<<<< HEAD
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
=======
	.long	0x1db
	.long	0xe0c
	.uleb128 0xf
	.long	0x28d
	.byte	0x8
	.byte	0
	.uleb128 0x44
	.long	.LASF112
	.byte	0x1
	.byte	0x2d
	.long	0xdfc
	.byte	0x5
	.byte	0x3
	.long	_ZL9task_desc
	.uleb128 0x44
	.long	.LASF113
	.byte	0x1
	.byte	0x30
	.long	0xe2f
>>>>>>> origin/master
	.byte	0x6
	.byte	0x3
	.long	_ZL9task_desc+2208
	.byte	0x9f
	.uleb128 0x46
	.long	0x29a
	.uleb128 0x45
<<<<<<< HEAD
	.long	.LASF111
	.byte	0x1
	.byte	0x34
	.long	0xdf6
=======
	.long	0x29f
	.uleb128 0x44
	.long	.LASF114
	.byte	0x1
	.byte	0x33
	.long	0xe45
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL14kernel_request
	.uleb128 0x10
<<<<<<< HEAD
	.long	0x11c
	.uleb128 0x45
	.long	.LASF112
	.byte	0x1
	.byte	0x37
	.long	0xe0c
=======
	.long	0x15b
	.uleb128 0x44
	.long	.LASF115
	.byte	0x1
	.byte	0x36
	.long	0xe5b
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL26kernel_request_create_args
	.uleb128 0x10
<<<<<<< HEAD
	.long	0x1a2
	.uleb128 0x45
	.long	.LASF113
	.byte	0x1
	.byte	0x3a
	.long	0xe22
=======
	.long	0x1c5
	.uleb128 0x44
	.long	.LASF116
	.byte	0x1
	.byte	0x39
	.long	0xe71
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL21kernel_request_retval
	.uleb128 0x10
	.long	0x58
<<<<<<< HEAD
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
=======
	.uleb128 0x44
	.long	.LASF117
	.byte	0x1
	.byte	0x3c
	.long	0x302
	.byte	0x5
	.byte	0x3
	.long	_ZL15dead_pool_queue
	.uleb128 0x44
	.long	.LASF118
	.byte	0x1
	.byte	0x3f
	.long	0x302
	.byte	0x5
	.byte	0x3
	.long	_ZL8rr_queue
	.uleb128 0x44
	.long	.LASF119
	.byte	0x1
	.byte	0x42
	.long	0x2ce
	.byte	0x5
	.byte	0x3
	.long	_ZL14periodic_queue
	.uleb128 0x44
	.long	.LASF120
	.byte	0x1
	.byte	0x45
	.long	0x302
	.byte	0x5
	.byte	0x3
	.long	_ZL12system_queue
	.uleb128 0x44
	.long	.LASF121
	.byte	0x1
	.byte	0x48
	.long	0xd4d
	.byte	0x5
	.byte	0x3
	.long	_ZL15ticks_remaining
	.uleb128 0x44
	.long	.LASF122
	.byte	0x1
	.byte	0x49
	.long	0xd4d
	.byte	0x5
	.byte	0x3
	.long	_ZL13ticks_counter
	.uleb128 0x44
	.long	.LASF123
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_ZL18slot_task_finished
	.uleb128 0xe
	.long	0x29f
	.long	0xefd
	.uleb128 0xf
	.long	0x28d
	.byte	0x8
	.byte	0
	.uleb128 0x44
	.long	.LASF124
	.byte	0x1
	.byte	0x51
	.long	0xeed
	.byte	0x5
	.byte	0x3
	.long	_ZL16name_to_task_ptr
	.uleb128 0x44
	.long	.LASF125
	.byte	0x1
	.byte	0x57
	.long	0xd4d
>>>>>>> origin/master
	.byte	0x5
	.byte	0x3
	.long	_ZL9error_msg
	.uleb128 0x46
	.byte	0x1
	.long	.LASF134
	.long	.LASF135
	.long	0xf39
	.byte	0x1
	.byte	0x1
	.long	0xf39
	.uleb128 0x1a
	.long	0x6a
	.byte	0
	.uleb128 0x47
	.byte	0x2
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
<<<<<<< HEAD
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
=======
	.uleb128 0x3f
>>>>>>> origin/master
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
<<<<<<< HEAD
	.uleb128 0x42
=======
	.uleb128 0x40
>>>>>>> origin/master
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
<<<<<<< HEAD
	.uleb128 0x43
=======
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
>>>>>>> origin/master
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
<<<<<<< HEAD
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
=======
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LFB37
=======
	.long	.LFB32
>>>>>>> origin/master
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
<<<<<<< HEAD
	.long	.LFE37
=======
	.long	.LFE32
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LFE37
=======
	.long	.LFE32
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LVL64
=======
	.long	.LVL66
>>>>>>> origin/master
	.long	.LVL67
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
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
=======
	.long	.LVL67
	.long	.LVL68
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL68
	.long	.LVL69
>>>>>>> origin/master
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL74
	.long	.LFE32
=======
	.long	.LVL69
	.long	.LFE25
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST26:
	.long	.LVL72
	.long	.LVL75-1
=======
.LLST24:
	.long	.LVL66
	.long	.LVL70-1
>>>>>>> origin/master
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL75-1
	.long	.LFE32
=======
	.long	.LVL70-1
	.long	.LFE25
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST27:
	.long	.LVL73
	.long	.LVL77
	.word	0x1
	.byte	0x6c
	.long	.LVL77
	.long	.LFE32
=======
.LLST25:
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
.LLST26:
	.long	.LVL72
	.long	.LVL73
>>>>>>> origin/master
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73
	.long	.LFE26
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
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
<<<<<<< HEAD
.LLST29:
	.long	.LVL78
	.long	.LVL80
=======
.LLST28:
	.long	.LVL75
	.long	.LVL77
>>>>>>> origin/master
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL80
	.long	.LFE33
=======
	.long	.LVL77
	.long	.LFE27
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST30:
	.long	.LVL78
	.long	.LVL81-1
=======
.LLST29:
	.long	.LVL75
	.long	.LVL78-1
>>>>>>> origin/master
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL81-1
	.long	.LFE33
=======
	.long	.LVL78-1
	.long	.LFE27
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST31:
	.long	.LVL79
	.long	.LVL83
	.word	0x1
	.byte	0x6c
	.long	.LVL83
	.long	.LFE33
=======
.LLST30:
	.long	.LVL76
	.long	.LVL80
	.word	0x1
	.byte	0x6c
	.long	.LVL80
	.long	.LFE27
>>>>>>> origin/master
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
<<<<<<< HEAD
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
=======
	.long	.LFE28
>>>>>>> origin/master
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
<<<<<<< HEAD
.LLST33:
	.long	.LVL84
	.long	.LVL86
=======
.LLST32:
	.long	.LVL81
	.long	.LVL83
>>>>>>> origin/master
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL86
	.long	.LFE34
=======
	.long	.LVL83
	.long	.LFE28
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST34:
	.long	.LVL84
	.long	.LVL87-1
=======
.LLST33:
	.long	.LVL81
	.long	.LVL84-1
>>>>>>> origin/master
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL87-1
	.long	.LFE34
=======
	.long	.LVL84-1
	.long	.LFE28
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
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
=======
.LLST34:
	.long	.LVL82
	.long	.LVL86
	.word	0x1
	.byte	0x6c
	.long	.LVL86
	.long	.LFE28
>>>>>>> origin/master
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST39:
	.long	.LFB35
	.long	.LCFI10
=======
.LLST35:
	.long	.LFB29
	.long	.LCFI8
>>>>>>> origin/master
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI10
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
<<<<<<< HEAD
.LLST40:
	.long	.LVL91
	.long	.LVL93
=======
.LLST36:
	.long	.LVL87
	.long	.LVL89
>>>>>>> origin/master
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL93
	.long	.LFE35
=======
	.long	.LVL89
	.long	.LFE29
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST41:
	.long	.LVL91
	.long	.LVL94-1
=======
.LLST37:
	.long	.LVL87
	.long	.LVL90-1
>>>>>>> origin/master
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL94-1
	.long	.LFE35
=======
	.long	.LVL90-1
	.long	.LFE29
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST42:
	.long	.LVL91
	.long	.LVL94-1
=======
.LLST38:
	.long	.LVL87
	.long	.LVL90-1
>>>>>>> origin/master
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL94-1
	.long	.LFE35
=======
	.long	.LVL90-1
	.long	.LFE29
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST43:
	.long	.LVL91
	.long	.LVL94-1
=======
.LLST39:
	.long	.LVL87
	.long	.LVL90-1
>>>>>>> origin/master
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
<<<<<<< HEAD
	.long	.LVL94-1
	.long	.LFE35
=======
	.long	.LVL90-1
	.long	.LFE29
>>>>>>> origin/master
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST44:
	.long	.LVL92
	.long	.LVL96
	.word	0x1
	.byte	0x6c
	.long	.LVL96
	.long	.LFE35
=======
.LLST40:
	.long	.LVL87
	.long	.LVL93
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL88
	.long	.LVL92
	.word	0x1
	.byte	0x6c
	.long	.LVL92
	.long	.LFE29
>>>>>>> origin/master
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
<<<<<<< HEAD
.LLST45:
	.long	.LFB36
=======
.LLST42:
	.long	.LFB30
>>>>>>> origin/master
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LFE30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST43:
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
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
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
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL94
	.long	.LVL97-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97-1
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL94
	.long	.LVL97-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97-1
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL95
	.long	.LVL99
	.word	0x1
	.byte	0x6c
	.long	.LVL99
	.long	.LFE30
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST48:
	.long	.LFB31
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
<<<<<<< HEAD
	.long	.LFE36
=======
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15
	.long	.LFE31
>>>>>>> origin/master
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
	.long	.LFB11
	.long	.LFE11-.LFB11
<<<<<<< HEAD
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
=======
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB21
	.long	.LFE21-.LFB21
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LFB32
	.long	.LFE32-.LFB32
=======
>>>>>>> origin/master
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
<<<<<<< HEAD
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
=======
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
=======
	.long	.LFB18
	.long	.LFE18
	.long	.LFB32
	.long	.LFE32
	.long	.LFB36
	.long	.LFE36
	.long	.LFB13
	.long	.LFE13
	.long	.LFB12
	.long	.LFE12
	.long	.LFB23
	.long	.LFE23
	.long	.LFB21
	.long	.LFE21
>>>>>>> origin/master
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
<<<<<<< HEAD
	.long	.LFB32
	.long	.LFE32
=======
>>>>>>> origin/master
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
<<<<<<< HEAD
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
=======
>>>>>>> origin/master
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
<<<<<<< HEAD
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
=======
.LASF106:
	.string	"Task_Next"
.LASF96:
	.string	"Service_Init"
.LASF64:
	.string	"task_to_find_before"
.LASF94:
	.string	"kernel_terminate_task"
.LASF59:
	.string	"ERR_RUN_2_TOO_MANY_TASKS"
.LASF65:
	.string	"get_next"
.LASF90:
	.string	"kernel_main_loop"
.LASF17:
	.string	"voidfuncvoid_ptr"
.LASF127:
	.string	".././os.cpp"
.LASF109:
	.string	"cur_task"
.LASF107:
	.string	"Task_GetArg"
.LASF41:
	.string	"state"
.LASF13:
	.string	"tasks"
.LASF36:
	.string	"create_args_t"
.LASF78:
	.string	"task_to_delete"
.LASF71:
	.string	"__tmp"
.LASF49:
	.string	"linkedlist_t"
.LASF44:
	.string	"sizetype"
.LASF45:
	.string	"13create_args_t"
.LASF46:
	.string	"12linkedlist_t"
.LASF134:
	.string	"operator new"
.LASF108:
	.string	"main"
.LASF0:
	.string	"int8_t"
.LASF117:
	.string	"dead_pool_queue"
.LASF77:
	.string	"delete_task"
.LASF130:
	.string	"enqueue"
.LASF40:
	.string	"stack"
.LASF52:
	.string	"ERR_1_PPP_NAME_OUT_OF_RANGE"
.LASF70:
	.string	"__ms"
.LASF53:
	.string	"ERR_2_CREATE_NAME_OUT_OF_RANGE"
.LASF101:
	.string	"retval"
.LASF119:
	.string	"periodic_queue"
.LASF55:
	.string	"ERR_4_PERIODIC_NAME_IN_USE"
.LASF15:
	.string	"value"
.LASF47:
	.string	"head"
.LASF1:
	.string	"uint8_t"
.LASF133:
	.string	"_Z7OS_Initv"
.LASF60:
	.string	"ERR_RUN_3_PERIODIC_TOOK_TOO_LONG"
.LASF110:
	.string	"next_task_periodic"
.LASF123:
	.string	"slot_task_finished"
.LASF62:
	.string	"ERR_RUN_5_RTOS_INTERNAL_ERROR"
.LASF27:
	.string	"TASK_CREATE"
.LASF21:
	.string	"WAITING"
.LASF83:
	.string	"stack_bottom"
.LASF80:
	.string	"exit_kernel"
.LASF93:
	.string	"kernel_update_ticker"
.LASF98:
	.string	"Service_Subscribe"
.LASF111:
	.string	"kernel_sp"
.LASF68:
	.string	"temp"
.LASF10:
	.string	"long long int"
.LASF95:
	.string	"OS_Init"
.LASF91:
	.string	"kernel_dispatch"
.LASF12:
	.string	"SERVICE"
.LASF79:
	.string	"idle"
.LASF29:
	.string	"TASK_NEXT"
.LASF7:
	.string	"long int"
.LASF23:
	.string	"12task_state_t"
.LASF33:
	.string	"period"
.LASF114:
	.string	"kernel_request"
.LASF97:
	.string	"newService"
.LASF120:
	.string	"system_queue"
.LASF115:
	.string	"kernel_request_create_args"
.LASF54:
	.string	"ERR_3_PERIODIC_NAMED_IDLE"
.LASF113:
	.string	"idle_task"
.LASF69:
	.string	"task_ptr"
.LASF26:
	.string	"TIMER_EXPIRED"
.LASF48:
	.string	"tail"
.LASF39:
	.string	"td_struct"
.LASF129:
	.string	"__builtin_avr_delay_cycles"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"counter"
.LASF99:
	.string	"Service_Publish"
.LASF92:
	.string	"kernel_handle_request"
.LASF118:
	.string	"rr_queue"
.LASF75:
	.string	"addlist"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF124:
	.string	"name_to_task_ptr"
.LASF5:
	.string	"uint16_t"
.LASF116:
	.string	"kernel_request_retval"
.LASF74:
	.string	"_delay_ms"
.LASF35:
	.string	"start"
.LASF125:
	.string	"error_msg"
.LASF42:
	.string	"next"
.LASF19:
	.string	"RUNNING"
.LASF28:
	.string	"TASK_TERMINATE"
.LASF128:
	.string	"C:\\\\Users\\\\Mikko\\\\Documents\\\\CSC460\\\\Project\\\\csc460-RTOS\\\\Project 2\\\\atmel\\\\project2\\\\project2\\\\Debug"
.LASF20:
	.string	"READY"
.LASF103:
	.string	"Task_Create_Periodic"
.LASF4:
	.string	"int16_t"
.LASF122:
	.string	"ticks_counter"
.LASF82:
	.string	"sreg"
.LASF14:
	.string	"valueLocations"
.LASF135:
	.string	"_Znwj"
.LASF50:
	.string	"7queue_t"
.LASF76:
	.string	"task_to_add"
.LASF37:
	.string	"task_descriptor_t"
.LASF131:
	.string	"kernel_create_task"
.LASF9:
	.string	"long unsigned int"
.LASF73:
	.string	"double"
.LASF57:
	.string	"ERR_6_TIME_INTERVAL_IN_PPP_0"
.LASF104:
	.string	"Task_Create"
.LASF102:
	.string	"Task_Create_RR"
.LASF85:
	.string	"Task_Terminate"
.LASF30:
	.string	"TASK_GET_ARG"
.LASF87:
	.string	"flashes"
.LASF32:
	.string	"level"
.LASF25:
	.string	"NONE"
.LASF61:
	.string	"ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST"
.LASF56:
	.string	"ERR_5_NAME_NOT_IN_PPP"
.LASF31:
	.string	"kernel_request_t"
.LASF84:
	.string	"stack_top"
.LASF105:
	.string	"name"
.LASF22:
	.string	"task_state_t"
.LASF72:
	.string	"__ticks_dc"
.LASF89:
	.string	"_delay_25ms"
.LASF67:
	.string	"queue_ptr"
.LASF51:
	.string	"queue_t"
.LASF100:
	.string	"Task_Create_System"
.LASF81:
	.string	"enter_kernel"
.LASF63:
	.string	"linkedlist_ptr"
.LASF112:
	.string	"task_desc"
.LASF121:
	.string	"ticks_remaining"
.LASF132:
	.string	"__vector_17"
.LASF18:
	.string	"DEAD"
.LASF43:
	.string	"prev"
.LASF38:
	.string	"service"
.LASF86:
	.string	"OS_Abort"
.LASF66:
	.string	"dequeue"
.LASF34:
	.string	"wcet"
.LASF58:
	.string	"ERR_RUN_1_USER_CALLED_OS_ABORT"
.LASF88:
	.string	"mask"
.LASF24:
	.string	"16kernel_request_t"
.LASF126:
	.string	"GNU C++ 4.8.1 -fpreprocessed -mrelax -mmcu=atmega2560 -g2 -Os -ansi -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
>>>>>>> origin/master
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
