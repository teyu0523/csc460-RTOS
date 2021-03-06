/**
 * @file os.c
 *
 * @brief A Real Time Operating System
 *
 * Our implementation of the operating system described by Mantis Cheng in os.h.
 *
 * @author Scott Craig
 * @author Justin Tanner
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "os.h"
#include "kernel.h"
#include "error_code.h"
#include "uart/uart.h"
#include "trace/trace.h"

/* Needed for memset */
/* #include <string.h> */

/** @brief main function provided by user application. The first task to run. */
extern int r_main();


/** PPP and PT defined in user application. *///extern const unsigned char PPP[];
extern const unsigned char PPP[];

/** PPP and PT defined in user application. */
extern const unsigned int PT;


/** The task descriptor of the currently RUNNING task. */
static task_descriptor_t* cur_task = NULL;

/** the task descripter of the next periodic task that will be run */
//static task_descriptor_t* temp_periodic_task = NULL;

/** Since this is a "full-served" model, the kernel is executing using its own stack. */
static volatile uint16_t kernel_sp;

/** This table contains all task descriptors, regardless of state, plus idler. */
static task_descriptor_t task_desc[MAXPROCESS + 1];

/** The special "idle task" at the end of the descriptors array. */
static task_descriptor_t* idle_task = &task_desc[MAXPROCESS];

/** The current kernel request. */
static volatile kernel_request_t kernel_request;

/** Arguments for Task_Create() request. */
static volatile create_args_t kernel_request_create_args;

/** Return value for Task_Create() request. */
static volatile int kernel_request_retval;

/** Number of tasks created so far */
static queue_t dead_pool_queue;

/** The ready queue for RR tasks. Their scheduling is round-robin. */
static queue_t rr_queue;


static linkedlist_t periodic_queue;

/** The ready queue for SYSTEM tasks. Their scheduling is first come, first served. */
static queue_t system_queue;

static SERVICE service_list[MAXSERVICES];
static uint8_t num_services = 0;

/** time counter in ticks */
static volatile uint8_t ticks_counter = 0;
static uint16_t volatile time_before_interrupt = 0;
/** Indicates if periodic task in this slot has already run this time */
//static uint8_t slot_task_finished = 0;

/** Index of name of task in current slot in PPP array. An even number from 0 to 2*(PT-1). */
//static unsigned int slot_name_index = 0;

/** The task descriptor for index "name of task" */
static task_descriptor_t* name_to_task_ptr[MAXNAME + 1];

/** The names that appear in PPP */
//static uint8_t name_in_PPP[MAXNAME + 1];

/** Error message used in OS_Abort() */
static uint8_t volatile error_msg = ERR_RUN_1_USER_CALLED_OS_ABORT;


/* Forward declarations */
/* kernel */
static void kernel_main_loop(void);
static void kernel_dispatch(void);
static void kernel_handle_request(void);
/* context switching */
static void exit_kernel(void) __attribute((noinline, naked));
static void enter_kernel(void) __attribute((noinline, naked));
extern "C" void TIMER1_COMPA_vect(void) __attribute__ ((signal, naked));

static int kernel_create_task();
static void kernel_terminate_task(void);
/* linkedlist */
/**Add created task to linkedlist*/
static void addlist(linkedlist_t* linkedlist_ptr, task_descriptor_t* task_to_add);
/**Get the next task in the linked list that has counter at 0*/
static task_descriptor_t* get_next(linkedlist_t* linkedlist_ptr);
/**Delete the current task in the linked list*/
static void delete_task(linkedlist_t* linkedlist_ptr, task_descriptor_t* task_to_delete);
/** decrement all counter in the linked list by 1 */
static void update_all_ticks(linkedlist_t* linkedlist_ptr);
/* queues */
static void enqueue(queue_t* queue_ptr, task_descriptor_t* task_to_add);
static task_descriptor_t* dequeue(queue_t* queue_ptr);

static void kernel_update_ticker(void);
//static void check_PPP_names(void);
static void idle (void);
static void _delay_25ms(void);
static void toggleProfilePulse(void);



/*
 * FUNCTIONS
 */
/**
 *  @brief The idle task does nothing but busy loop.
 */
static void idle (void)
{
    for(;;)
    {};
}


/**
 * @fn kernel_main_loop
 *
 * @brief The heart of the RTOS, the main loop where the kernel is entered and exited.
 *
 * The complete function is:
 *
 *  Loop
 *<ol><li>Select and dispatch a process to run</li>
 *<li>Exit the kernel (The loop is left and re-entered here.)</li>
 *<li>Handle the request from the process that was running.</li>
 *<li>End loop, go to 1.</li>
 *</ol>
 */
static void kernel_main_loop(void)
{
    for(;;)
    {
        kernel_dispatch();

        exit_kernel();

        /* if this task makes a system call, or is interrupted,
         * the thread of control will return to here. */

        kernel_handle_request();
    }
}


/**
 * @fn kernel_dispatch
 *
 *@brief The second part of the scheduler.
 *
 * Chooses the next task to run.
 *
 */
static void kernel_dispatch(void)
{
    /* If the current state is RUNNING, then select it to run again.
     * kernel_handle_request() has already determined it should be selected.
     */	
    if(cur_task->state != RUNNING || cur_task == idle_task)
    {
        if(system_queue.head != NULL)
        {
            cur_task = dequeue(&system_queue);
        }
        else if(periodic_queue.head !=NULL)
        {
            /* Keep running the current PERIODIC task. */
            task_descriptor_t* temp = get_next(&periodic_queue);
            if(temp != NULL)
            {
                cur_task = temp;

            }
            else if(rr_queue.head != NULL)
            {
                cur_task = dequeue(&rr_queue);
            }
            else
            {
                /* No task available, so idle. */
                cur_task = idle_task;
            }
        }
        else if(rr_queue.head != NULL)
        {
            cur_task = dequeue(&rr_queue);
        }
        else
        {
            /* No task available, so idle. */
            cur_task = idle_task;
        }

        cur_task->state = RUNNING;
    }
}


/**
 * @fn kernel_handle_request
 *
 *@brief The first part of the scheduler.
 *
 * Perform some action based on the system call or timer tick.
 * Perhaps place the current process in a ready or waitng queue.
 */
static void kernel_handle_request(void)
{

   switch(kernel_request)
    {
    case NONE:
        /* Should not happen. */
        break;

    case TIMER_EXPIRED:
        kernel_update_ticker();

        /* Round robin tasks get pre-empted on every tick. */
        if(cur_task->level == RR && cur_task->state == RUNNING)
        {
            cur_task->state = READY;
            enqueue(&rr_queue, cur_task);
        }
        break;

    case TASK_CREATE:
        kernel_request_retval = kernel_create_task();

        /* Check if new task has higer priority, and that it wasn't an ISR
         * making the request.
         */
        if(kernel_request_retval)
        {
            /* If new task is SYSTEM and cur is not, then don't run old one */
			
            if(cur_task->level != SYSTEM && kernel_request_create_args.level == SYSTEM )
            {
				cur_task->state = READY;
				if(cur_task->level == RR){
					enqueue(&rr_queue, cur_task);
				}
			} else if(cur_task->level == RR && kernel_request_create_args.level == PERIODIC )
			{	
				cur_task->state = READY;
				enqueue(&rr_queue, cur_task);
			}           
        } else {
			error_msg = ERR_RUN_2_TOO_MANY_TASKS;
			OS_Abort();
		}
        break;

    case TASK_TERMINATE:
		if(cur_task != idle_task)
		{
        	kernel_terminate_task();
		}
        break;

    case TASK_NEXT:
		switch(cur_task->level)
		{
	    case SYSTEM:
	        enqueue(&system_queue, cur_task);
			break;

	    case PERIODIC:
			
	        break;

	    case RR:
	        enqueue(&rr_queue, cur_task);
	        break;

	    default: /* idle_task */
			break;
		}

		cur_task->state = READY;
        break;

    case TASK_GET_ARG:
        /* Should not happen. Handled in task itself. */
        break;
		
    default:
        /* Should never happen */
        error_msg = -1;//ERR_RUN_8_RTOS_INTERNAL_ERROR;
        OS_Abort();
        break;
    }
    kernel_request = NONE;
}


/*
 * Context switching
 */
/**
 * It is important to keep the order of context saving and restoring exactly
 * in reverse. Also, when a new task is created, it is important to
 * initialize its "initial" context in the same order as a saved context.
 *
 * Save r31 and SREG on stack, disable interrupts, then save
 * the rest of the registers on the stack. In the locations this macro
 * is used, the interrupts need to be disabled, or they already are disabled.
 */
#define    SAVE_CTX_TOP()       asm volatile (\
	"push   r31             \n\t"\
    "in     r31,0X3C        \n\t"\
    "push   r31             \n\t"\
    "in     r31,__SREG__    \n\t"\
    "cli                    \n\t"::); /* Disable interrupt */

#define STACK_SREG_SET_I_BIT()    asm volatile (\
    "ori    r31, 0x80        \n\t"::);

#define    SAVE_CTX_BOTTOM()       asm volatile (\
    "push   r31             \n\t"\
    "push   r30             \n\t"\
    "push   r29             \n\t"\
    "push   r28             \n\t"\
    "push   r27             \n\t"\
    "push   r26             \n\t"\
    "push   r25             \n\t"\
    "push   r24             \n\t"\
    "push   r23             \n\t"\
    "push   r22             \n\t"\
    "push   r21             \n\t"\
    "push   r20             \n\t"\
    "push   r19             \n\t"\
    "push   r18             \n\t"\
    "push   r17             \n\t"\
    "push   r16             \n\t"\
    "push   r15             \n\t"\
    "push   r14             \n\t"\
    "push   r13             \n\t"\
    "push   r12             \n\t"\
    "push   r11             \n\t"\
    "push   r10             \n\t"\
    "push   r9              \n\t"\
    "push   r8              \n\t"\
    "push   r7              \n\t"\
    "push   r6              \n\t"\
    "push   r5              \n\t"\
    "push   r4              \n\t"\
    "push   r3              \n\t"\
    "push   r2              \n\t"\
    "push   r1              \n\t"\
    "push   r0              \n\t"::);

/**
 * @brief Push all the registers and SREG onto the stack.
 */
#define    SAVE_CTX()    SAVE_CTX_TOP();SAVE_CTX_BOTTOM();

/**
 * @brief Pop all registers and the status register.
 */
#define    RESTORE_CTX_BOTTOM()    asm volatile (\
    "pop    r0                \n\t"\
    "pop    r1                \n\t"\
    "pop    r2                \n\t"\
    "pop    r3                \n\t"\
    "pop    r4                \n\t"\
    "pop    r5                \n\t"\
    "pop    r6                \n\t"\
    "pop    r7                \n\t"\
    "pop    r8                \n\t"\
    "pop    r9                \n\t"\
    "pop    r10             \n\t"\
    "pop    r11             \n\t"\
    "pop    r12             \n\t"\
    "pop    r13             \n\t"\
    "pop    r14             \n\t"\
    "pop    r15             \n\t"\
    "pop    r16             \n\t"\
    "pop    r17             \n\t"\
    "pop    r18             \n\t"\
    "pop    r19             \n\t"\
    "pop    r20             \n\t"\
    "pop    r21             \n\t"\
    "pop    r22             \n\t"\
    "pop    r23             \n\t"\
    "pop    r24             \n\t"\
    "pop    r25             \n\t"\
    "pop    r26             \n\t"\
    "pop    r27             \n\t"\
    "pop    r28             \n\t"\
    "pop    r29             \n\t"\
    "pop    r30             \n\t"::);
    

#define RESTORE_CTX_TOP()	asm volatile (\
	"pop    r31             \n\t"\
    "out    __SREG__, r31   \n\t"\
    "pop    r31             \n\t"\
    "out    0X3C, r31       \n\t"\
    "pop    r31             \n\t"::);
	
	
#define RESTORE_CTX()	RESTORE_CTX_BOTTOM();RESTORE_CTX_TOP();

/**
 * @fn exit_kernel
 *
 * @brief The actual context switching code begins here.
 *
 * This function is called by the kernel. Upon entry, we are using
 * the kernel stack, on top of which is the address of the instruction
 * after the call to exit_kernel().
 *
 * Assumption: Our kernel is executed with interrupts already disabled.
 *
 * The "naked" attribute prevents the compiler from adding instructions
 * to save and restore register values. It also prevents an
 * automatic return instruction.
 */
static void exit_kernel(void)
{
    /*
     * The PC was pushed on the stack with the call to this function.
     * Now push on the I/O registers and the SREG as well.
     */
     SAVE_CTX();

    /*
     * The last piece of the context is the SP. Save it to a variable.
     */
    kernel_sp = SP;

    /*
     * Now restore the task's context, SP first.
     */
    SP = (uint16_t)(cur_task->sp);

    /*
     * Now restore I/O and SREG registers.
     */
    RESTORE_CTX();

    /*
     * return explicitly required as we are "naked".
     * Interrupts are enabled or disabled according to SREG
     * recovered from stack, so we don't want to explicitly
     * enable them here.
     *
     * The last piece of the context, the PC, is popped off the stack
     * with the ret instruction.
     */
    asm volatile ("ret\n"::);
}


/**
 * @fn enter_kernel
 *
 * @brief All system calls eventually enter here.
 *
 * Assumption: We are still executing on cur_task's stack.
 * The return address of the caller of enter_kernel() is on the
 * top of the stack.
 */
static void enter_kernel(void)
{
    /*
     * The PC was pushed on the stack with the call to this function.
     * Now push on the I/O registers and the SREG as well.
     */
    SAVE_CTX();

    /*
     * The last piece of the context is the SP. Save it to a variable.
     */
    cur_task->sp = (uint8_t*)SP;

    /*
     * Now restore the kernel's context, SP first.
     */
    SP = kernel_sp;

    /*
     * Now restore I/O and SREG registers.
     */
    RESTORE_CTX();

    /*
     * return explicitly required as we are "naked".
     *
     * The last piece of the context, the PC, is popped off the stack
     * with the ret instruction.
     */
    asm volatile ("ret\n"::);
}


/**
 * @fn TIMER1_COMPA_vect
 *
 * @brief The interrupt handler for output compare interrupts on Timer 1
 *
 * Used to enter the kernel when a tick expires.
 *
 * Assumption: We are still executing on the cur_task stack.
 * The return address inside the current task code is on the top of the stack.
 *
 * The "naked" attribute prevents the compiler from adding instructions
 * to save and restore register values. It also prevents an
 * automatic return instruction.
 */
void TIMER1_COMPA_vect(void)
{
	//PORTB ^= _BV(PB7);		// Arduino LED
    /*
     * Save the interrupted task's context on its stack,
     * and save the stack pointer.
     *
     * On the cur_task's stack, the registers and SREG are
     * saved in the right order, but we have to modify the stored value
     * of SREG. We know it should have interrupts enabled because this
     * ISR was able to execute, but it has interrupts disabled because
     * it was stored while this ISR was executing. So we set the bit (I = bit 7)
     * in the stored value.
     */
    SAVE_CTX_TOP();

    STACK_SREG_SET_I_BIT();

    SAVE_CTX_BOTTOM();

    cur_task->sp = (uint8_t*)SP;

    /*
     * Now that we already saved a copy of the stack pointer
     * for every context including the kernel, we can move to
     * the kernel stack and use it. We will restore it again later.
     */
    SP = kernel_sp;

    /*
     * Inform the kernel that this task was interrupted.
     */
    kernel_request = TIMER_EXPIRED;

    /*
     * Prepare for next tick interrupt.
     */
    OCR1A += TICK_CYCLES;

    /*
     * Restore the kernel context. (The stack pointer is restored again.)
     */
    SP = kernel_sp;

    /*
     * Now restore I/O and SREG registers.
     */
    RESTORE_CTX();

    /*
     * We use "ret" here, not "reti", because we do not want to
     * enable interrupts inside the kernel.
     * Explilictly required as we are "naked".
     *
     * The last piece of the context, the PC, is popped off the stack
     * with the ret instruction.
     */
    asm volatile ("ret\n"::);
}


/*
 * Tasks Functions
 */
/**
 *  @brief Kernel function to create a new task.
 *
 * When creating a new task, it is important to initialize its stack just like
 * it has called "enter_kernel()"; so that when we switch to it later, we
 * can just restore its execution context on its stack.
 * @sa enter_kernel
 */
static int kernel_create_task()
{
    /* The new task. */
    task_descriptor_t *p;
    uint8_t* stack_bottom;


    if (dead_pool_queue.head == NULL)
    {
        /* Too many tasks! */
        return 0;
    }
	if(kernel_request_create_args.level == PERIODIC){
		if(kernel_request_create_args.wcet <= 0 || 
		kernel_request_create_args.period <= 0 || 
		kernel_request_create_args.start < 0)
		{
			error_msg = ERR_5_PERIODIC_INVALID_INPUT;
			OS_Abort();
		}
		if(kernel_request_create_args.wcet > kernel_request_create_args.period)
		{
			error_msg = ERR_4_PERIODIC_WCET_GREATER_THAN_PERIOD;
			OS_Abort();
		}

	}

	/* idling "task" goes in last descriptor. */
	if(kernel_request_create_args.level == NULL)
	{
		p = &task_desc[MAXPROCESS];
	}
	/* Find an unused descriptor. */
	else
	{
	    p = dequeue(&dead_pool_queue);
	}

    stack_bottom = &(p->stack[WORKSPACE-1]);

    /* The stack grows down in memory, so the stack pointer is going to end up
     * pointing to the location 32 + 1 + 2 + 2 = 37 bytes above the bottom, to make
     * room for (from bottom to top):
     *   the address of Task_Terminate() to destroy the task if it ever returns,
     *   the address of the start of the task to "return" to the first time it runs,
     *   register 31,
     *   the stored SREG, and
     *   registers 30 to 0.
     */
    uint8_t* stack_top = stack_bottom - (32 + 1 + 1 + 3 + 3); //modified to mega2560

    /* Not necessary to clear the task descriptor. */
    /* memset(p,0,sizeof(task_descriptor_t)); */

    /* stack_top[0] is the byte above the stack.
     * stack_top[1] is r0. */
    stack_top[2] = (uint8_t) 0; /* r1 is the "zero" register. */
    /* stack_top[31] is r30. */
    stack_top[32] = (uint8_t) _BV(SREG_I); /* set SREG_I bit in stored SREG. */
    /* stack_top[33] is r31. */

    /* We are placing the address (16-bit) of the functions
     * onto the stack in reverse byte order (least significant first, followed
     * by most significant).  This is because the "return" assembly instructions
     * (ret and reti) pop addresses off in BIG ENDIAN (most sig. first, least sig.
     * second), even though the AT90 is LITTLE ENDIAN machine.
     */
	 stack_top[35] = (uint8_t)(0);
	 stack_top[36] = (uint8_t)((uint16_t)(kernel_request_create_args.f) >> 8);
	 stack_top[37] = (uint8_t)(uint16_t)(kernel_request_create_args.f);
	 stack_top[38] = (uint8_t)(0);
	 stack_top[39] = (uint8_t)((uint16_t)Task_Terminate >> 8);
	 stack_top[40] = (uint8_t)(uint16_t)Task_Terminate;
	
    //stack_top[34] = (uint8_t)((uint16_t)(kernel_request_create_args.f) >> 8);
    //stack_top[35] = (uint8_t)(uint16_t)(kernel_request_create_args.f);
    //stack_top[36] = (uint8_t)((uint16_t)Task_Terminate >> 8);
    //stack_top[37] = (uint8_t)(uint16_t)Task_Terminate;

    /*
     * Make stack pointer point to cell above stack (the top).
     * Make room for 32 registers, SREG and two return addresses.
     */
    p->sp = stack_top;

    p->state = READY;
    p->arg = kernel_request_create_args.arg;
    p->level = kernel_request_create_args.level;
	p->period = kernel_request_create_args.period;
	p->wcet = kernel_request_create_args.wcet;
	p->start = kernel_request_create_args.start;
	p->counter = kernel_request_create_args.counter;
    //p->remaining_start = kernel_request_create_args.remaining_start;
    p->remaining_wcet = kernel_request_create_args.remaining_wcet;
    //p->name = kernel_request_create_args.name;

	switch(kernel_request_create_args.level)
	{
    case SYSTEM:
    	/* Put SYSTEM and Round Robin tasks on a queue. */
        enqueue(&system_queue, p);
		break;
	case PERIODIC:
		/* Put this newly created PPP task into the PPP lookup array */
		//name_to_task_ptr[kernel_request_create_args.name] = p;
		addlist(&periodic_queue, p);
		break;
    case RR:
		/* Put SYSTEM and Round Robin tasks on a queue. */
        enqueue(&rr_queue, p);
		break;

	default:
		/* idle task does not go in a queue */
		break;
	}


    return 1;
}


/**
 * @brief Kernel function to destroy the current task.
 */
static void kernel_terminate_task(void)
{
    /* deallocate all resources used by this task */
    cur_task->state = DEAD;
    if(cur_task->level == PERIODIC)
    {
        delete_task(&periodic_queue, cur_task);
    }
    enqueue(&dead_pool_queue, cur_task);
}

/*
 * Linkedlist manipulation
 */
static void update_all_ticks(linkedlist_t* linkedlist_ptr)
{
	task_descriptor_t* temp = linkedlist_ptr->head;
	while(temp != NULL)
	{
		temp->counter--;
		temp = temp->next;
	}
}


static void delete_task(linkedlist_t* linkedlist_ptr, task_descriptor_t* task_to_delete)
{
	if(linkedlist_ptr->head == task_to_delete && linkedlist_ptr->head->next != NULL)
	{
		linkedlist_ptr->head = linkedlist_ptr->head->next;
		linkedlist_ptr->head->prev = NULL;
		return;
	} else if (linkedlist_ptr->tail == task_to_delete && linkedlist_ptr->tail->prev != NULL) {
		linkedlist_ptr->tail = linkedlist_ptr->tail->prev;
		linkedlist_ptr->tail->next = NULL;
		return;
	} else if (linkedlist_ptr->tail == task_to_delete && linkedlist_ptr->head == task_to_delete) {
		linkedlist_ptr->tail = NULL;
		linkedlist_ptr->head = NULL;
		return;
	} else {
		task_to_delete = task_to_delete->prev;
		task_to_delete->next = task_to_delete->next->next;
		task_to_delete->next->prev = task_to_delete;
	}	
}
/**
 *	get the next available task in the list
 */
static task_descriptor_t* get_next(linkedlist_t* linkedlist_ptr)//, task_descriptor_t* task_to_find_before)
{	
	task_descriptor_t* temp = linkedlist_ptr->head;
	task_descriptor_t* found = NULL;
	int collision_counter = 0;
	/** logic for checking collision **/
	while(temp!=NULL)
	{
		if(temp->counter <= 0)
		{			
			temp->counter = temp->period; 
			temp->remaining_wcet = temp->wcet;
			found = temp;
			++collision_counter;
		}
		if(collision_counter >= 2)
		{
			error_msg = ERR_RUN_6_PERIODIC_COLLISION;
			OS_Abort();
		}
		temp = temp->next;
	}	
	return found;
}
/**
 * @brief add task to end of linkedlist
 *
 */
static void addlist(linkedlist_t* linkedlist_ptr, task_descriptor_t* task_to_add)
{
	task_to_add->next = NULL;
	 if(linkedlist_ptr->head == NULL)
	 {
		 /* empty queue */
		 task_to_add->prev = NULL;
		 linkedlist_ptr->head = task_to_add;
		 linkedlist_ptr->tail = task_to_add;
	 }
	 else
	 {
		 /* put task at the back of the linkedlist */
		 linkedlist_ptr->tail->next = task_to_add;
		 task_to_add->prev = linkedlist_ptr->tail;
		 linkedlist_ptr->tail = task_to_add;
	 }
}

/*
 * Queue manipulation.
 */

/**
 * @brief Add a task the head of the queue
 *
 * @param queue_ptr the queue to insert in
 * @param task_to_add the task descriptor to add
 */
static void enqueue(queue_t* queue_ptr, task_descriptor_t* task_to_add)
{
    task_to_add->next = NULL;

    if(queue_ptr->head == NULL)
    {
        /* empty queue */
        queue_ptr->head = task_to_add;
        queue_ptr->tail = task_to_add;
    }
    else
    {
        /* put task at the back of the queue */
        queue_ptr->tail->next = task_to_add;
        queue_ptr->tail = task_to_add;
    }
}


/**
 * @brief Pops head of queue and returns it.
 *
 * @param queue_ptr the queue to pop
 * @return the popped task descriptor
 */
static task_descriptor_t* dequeue(queue_t* queue_ptr)
{
    task_descriptor_t* task_ptr = queue_ptr->head;

    if(queue_ptr->head != NULL)
    {
        queue_ptr->head = queue_ptr->head->next;
        task_ptr->next = NULL;
    }

    return task_ptr;
}


/**
 * @brief Update the current time.
 * 
 * Update the global total ticker time as well as 
 * updating all periodic task counter by decrementing by 1
 */
static void kernel_update_ticker(void) // runs by interrupt 
{
    /* PORTD ^= LED_D5_RED; */
	time_before_interrupt = TCNT1;
	++ticks_counter;
	if(cur_task->level == PERIODIC && cur_task->state == RUNNING)
	{
		--cur_task->remaining_wcet;
		if(cur_task->wcet <= 0) //
		{
			error_msg = ERR_RUN_3_PERIODIC_TOOK_TOO_LONG;
			OS_Abort();
		}
	}
	update_all_ticks(&periodic_queue);
}

#undef SLOW_CLOCK

#ifdef SLOW_CLOCK
/**
 * @brief For DEBUGGING to make the clock run slower
 *
 * Divide CLKI/O by 64 on timer 1 to run at 125 kHz  CS3[210] = 011
 * 1 MHz CS3[210] = 010
 */
static void kernel_slow_clock(void)
{
    TCCR1B &= ~(_BV(CS12) | _BV(CS10));
    TCCR1B |= (_BV(CS11));
}
#endif

/**
 * @brief Setup the RTOS and create main() as the first SYSTEM level task.
 *
 * Point of entry from the C runtime crt0.S.
 */
void OS_Init()
{
    //toggleProfilePulse();

    int i;

    /* Set up the clocks */

    TCCR1B |= (_BV(CS11));

#ifdef SLOW_CLOCK
    kernel_slow_clock();
#endif

    //check_PPP_names();

    /*
     * Initialize dead pool to contain all but last task descriptor.
     *
     * DEAD == 0, already set in .init4
     */
    for (i = 0; i < MAXPROCESS - 1; i++)
    {
        task_desc[i].state = DEAD;
        name_to_task_ptr[i] = NULL;
        task_desc[i].next = &task_desc[i + 1];
    }
    task_desc[MAXPROCESS - 1].next = NULL;
    dead_pool_queue.head = &task_desc[0];
    dead_pool_queue.tail = &task_desc[MAXPROCESS - 1];

	/* Create idle "task" */
    kernel_request_create_args.f = (voidfuncvoid_ptr)idle;
    kernel_request_create_args.level = NULL;
    kernel_create_task();

    /* Create "main" task as SYSTEM level. */
    kernel_request_create_args.f = (voidfuncvoid_ptr)r_main;
    kernel_request_create_args.level = SYSTEM;
    kernel_create_task();

    /* First time through. Select "main" task to run first. */
    cur_task = task_desc;
    cur_task->state = RUNNING;
    dequeue(&system_queue);

    /* Initilize time slot */
    //if(PT > 0)
    //{
        //ticks_remaining = PPP[1];
    //}

    /* Set up Timer 1 Output Compare interrupt,the TICK clock. */
    TIMSK1 |= _BV(OCIE1A);
    //OCR1A = TCNT1 + TICK_CYCLES;
	OCR1A = TICK_CYCLES;
	TCNT1 = 0;
    /* Clear flag. */
    TIFR1 = _BV(OCF1A);

    

    /*
     * The main loop of the RTOS kernel.
     */
    kernel_main_loop();
	//toggleProfilePulse();
}




/**
 *  @brief Delay function adapted from <util/delay.h>
 */
static void _delay_25ms(void)
{
    //uint16_t i;

    /* 4 * 50000 CPU cycles = 25 ms */
    //asm volatile ("1: sbiw %0,1" "\n\tbrne 1b" : "=w" (i) : "0" (50000));
    _delay_ms(25);
}


/** 
 * @brief Abort the execution of this RTOS due to an unrecoverable erorr.
 */
void OS_Abort(void)
{
    uint8_t i, j;
    uint8_t flashes, mask;

    Disable_Interrupt();

    /* Initialize port for output */
    DDRH = LED_RED_MASK | LED_GREEN_MASK;

    if(error_msg < ERR_RUN_1_USER_CALLED_OS_ABORT)
    {
        flashes = error_msg + 1;
        mask = LED_GREEN_MASK;
    }
    else
    {
        flashes = error_msg + 1 - ERR_RUN_1_USER_CALLED_OS_ABORT;
        mask = LED_RED_MASK;
    }


    for(;;)
    {
        PORTH = (uint8_t)(LED_RED_MASK | LED_GREEN_MASK);

        for(i = 0; i < 100; ++i)
        {
               _delay_25ms();
        }

        PORTH = (uint8_t) 0;

        for(i = 0; i < 40; ++i)
        {
               _delay_25ms();
        }


        for(j = 0; j < flashes; ++j)
        {
            PORTH = mask;

            for(i = 0; i < 10; ++i)
            {
                _delay_25ms();
            }

            PORTH = (uint8_t) 0;

            for(i = 0; i < 10; ++i)
            {
                _delay_25ms();
            }
        }

        for(i = 0; i < 20; ++i)
        {
            _delay_25ms();
        }
    }
}

/**
 * return current time.
 */
#define CYCLES_PER_MS TICK_CYCLES/TICK
#define HALF_MS TICK_CYCLES / (TICK << 1)
uint16_t Now()
{
    uint16_t ret_val;
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();
	
    //ret_val = ticks_counter*TICK + (TCNT1 + HALF_MS) / (CYCLES_PER_MS);
	ret_val = ticks_counter*TICK + ((TCNT1 - time_before_interrupt)/((F_CPU / TIMER_PRESCALER) / 1000));
    SREG = sreg;
	
	return ret_val; 
}

/**
 * \return a non-NULL SERVICE descriptor if successful; NULL otherwise.
 *
 *  Initialize a new, non-NULL SERVICE descriptor.
 */
SERVICE* Service_Init()
{
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();

    if(num_services < MAXSERVICES){
        service_list[num_services].counter = 0;
        num_services++;
    }
    else{
        error_msg = ERR_RUN_9_SERVICE_MAX_SERVICES_REACH; //need a new error
        OS_Abort();
    }
    
    SREG = sreg; 

	return &service_list[num_services - 1];
}

/**  
  * \param s an Service descriptor
  * \param v pointer to memory where the received value will be written
  *
  * The calling task waits for the next published value associated with service "s".
  * More than one task may wait for a service. When a new value "v" is published to
  * "s", all waiting tasks resume and obtain the same value. 
  */
void Service_Subscribe( SERVICE *s, int16_t *v )
{
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();

    //if the call task is periodic, return an error
    if(cur_task->level == PERIODIC){
        error_msg =  ERR_RUN_8_SUBSCRIBE_PERIODIC_TASK; //need a new error
        OS_Abort();
    }
    //else subscribe task to service 
    if(s->counter < 3) {
        //store pointer of task in SERVICE s
        s->tasks[s->counter] = cur_task;
        //store pointer of where recieved value v will be written
        s->valueLocations[s->counter] = v;
        s->counter++;
        //set to task to WAITING (Do I block task here? or handled elsewhere?)
        cur_task->state = WAITING;
        SREG = sreg; 		
		enter_kernel();
    }
	// service has reached max subscribing limit
	else{
	   error_msg =  ERR_RUN_7_SUBSCRIBE_MAX_SUBSCRIBERS_REACHED; //need a new error
        OS_Abort();	
	}

    SREG = sreg; 
	
}


/**  
  * \param e a Service descriptor
  *
  * The calling task publishes a new value "v" to service "s". All waiting tasks on
  * service "s" will be resumed and receive a copy of this value "v". 
  * Values generated by services without subscribers will be lost.
  */
void Service_Publish( SERVICE *s, int16_t v )
{
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();

    //set the new valve v the SERVICE s's value property
    s->value = v;

    //for every task subcribed to this service
    for(int i = 0; i < s->counter; i++){
        //write the SERVICE s's value to task
        *(s->valueLocations[i]) = v;
        //s->valueLocations[i] = NULL;
        //set the task to READY state (do I have add them the ready queue here? or is that handled elsewhere?)
        (s->tasks[i])->state = READY;


        if((s->tasks[i])->level == SYSTEM){
            enqueue(&system_queue, s->tasks[i]);
			if(cur_task->level == RR){
				cur_task->state = READY;
				enqueue(&rr_queue, cur_task);
			} else if (cur_task->level == PERIODIC) {
				cur_task->state = READY;	
			}
        } 
		else if((s->tasks[i])->level == PERIODIC){
			error_msg =  ERR_RUN_5_RTOS_INTERNAL_ERROR; //need a new error
			OS_Abort();
		}
        else if((s->tasks[i])->level == RR){
            enqueue(&rr_queue, s->tasks[i]);
        }

		//else if(cur_task->level == PERIODIC && s->tasks[i]->level == SYSTEM){
			//
		//}
		//s->tasks[i] = NULL;
    }

    s->counter = 0;
    enter_kernel();
    SREG = sreg; 
	
}

 /**
   * \param f  a parameterless function to be created as a process instance
   * \param arg an integer argument to be assigned to this process instance
   * \return 0 if not successful; otherwise non-zero.
   * \sa Task_GetArg()
   *
   *  A new process is created to execute the parameterless
   *  function \a f with an initial parameter \a arg, which is retrieved
   *  by a call to Task_GetArg().  If a new process cannot be
   *  created, 0 is returned; otherwise, it returns non-zero.
   *
   * \sa \ref policy
   */
int8_t Task_Create_System(void (*f)(void), int16_t arg)
{
	    int8_t retval;
	    uint8_t sreg;

	    sreg = SREG;
	    Disable_Interrupt();

	    kernel_request_create_args.f = (voidfuncvoid_ptr)f;
	    kernel_request_create_args.arg = arg;
	    kernel_request_create_args.level = (uint8_t)SYSTEM;

	    kernel_request = TASK_CREATE;
	    enter_kernel();

	    retval = kernel_request_retval;
	    SREG = sreg;

	    return retval;
}

int8_t Task_Create_RR(void (*f)(void), int16_t arg)
{
		int8_t retval;
		uint8_t sreg;

		sreg = SREG;
		Disable_Interrupt();

		kernel_request_create_args.f = (voidfuncvoid_ptr)f;
		kernel_request_create_args.arg = arg;
		kernel_request_create_args.level = (uint8_t)RR;

		kernel_request = TASK_CREATE;
		enter_kernel();

		retval = kernel_request_retval;
		SREG = sreg;

		return retval;
}
/**
   * \param f a parameterless function to be created as a process instance
   * \param arg an integer argument to be assigned to this process instanace
   * \param period its execution period in TICKs
   * \param wcet its worst-case execution time in TICKs, must be less than "period"
   * \param start its start time in TICKs
   * \return 0 if not successful; otherwise non-zero.
   * \sa Task_GetArg()
   *
   *  A new process is created to execute the parameterless
   *  function \a f with an initial parameter \a arg, which is retrieved
   *  by a call to Task_GetArg().  If a new process cannot be
   *  created, 0 is returned; otherwise, it returns non-zero.
   *
   * \sa \ref policy
   */
int8_t Task_Create_Periodic(void(*f)(void), int16_t arg, uint16_t period, uint16_t wcet, uint16_t start)
{
	int8_t retval;
	uint8_t sreg;

	sreg = SREG;
	Disable_Interrupt();

	kernel_request_create_args.f = (voidfuncvoid_ptr)f;
	kernel_request_create_args.arg = arg;
	kernel_request_create_args.level = (uint8_t)PERIODIC;
	kernel_request_create_args.period = period;
	kernel_request_create_args.wcet = wcet;
	kernel_request_create_args.start = start; 
	kernel_request_create_args.counter = start; //period;
    kernel_request_create_args.remaining_wcet = wcet;
    //kernel_request_create_args.remaining_start = start;
	
	//kernel_request_create_args.name = (uint8_t)name;

	kernel_request = TASK_CREATE;
	enter_kernel();

	retval = kernel_request_retval;
	SREG = sreg;

	return retval;
}
/**
 * @param f  a parameterless function to be created as a process instance
 * @param arg an integer argument to be assigned to this process instanace
 * @param level assigned scheduling level: SYSTEM, PERIODIC or RR
 * @param name assigned PERIODIC process name
 * @return 0 if not successful; otherwise non-zero.
 * @sa Task_GetArg(), PPP[].
 *
 *  A new process  is created to execute the parameterless
 *  function @a f with an initial parameter @a arg, which is retrieved
 *  by a call to Task_GetArg().  If a new process cannot be
 *  created, 0 is returned; otherwise, it returns non-zero.
 *  The created process will belong to its scheduling @a level.
 *  If the process is PERIODIC, then its @a name is a user-specified name
 *  to be used in the PPP[] array. Otherwise, @a name is ignored.
 * @sa @ref policy
 */
int Task_Create(void (*f)(void), int arg, unsigned int level, unsigned int name)
{
    int retval;
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();

    kernel_request_create_args.f = (voidfuncvoid_ptr)f;
    kernel_request_create_args.arg = arg;
    kernel_request_create_args.level = (uint8_t)level;
    //kernel_request_create_args.name = (uint8_t)name;

    kernel_request = TASK_CREATE;
    enter_kernel();

    retval = kernel_request_retval;
    SREG = sreg;

    return retval;
}


/**
  * @brief The calling task gives up its share of the processor voluntarily.
  */
void Task_Next()
{
    uint8_t volatile sreg;

    sreg = SREG;
    Disable_Interrupt();

    kernel_request = TASK_NEXT;
    enter_kernel();

    SREG = sreg;
}


/**
  * @brief The calling task terminates itself.
  */
void Task_Terminate()
{
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();

    kernel_request = TASK_TERMINATE;
    enter_kernel();

    SREG = sreg;
}


/** @brief Retrieve the assigned parameter.
 */
int Task_GetArg(void)
{
    int arg;
    uint8_t sreg;

    sreg = SREG;
    Disable_Interrupt();

    arg = cur_task->arg;

    SREG = sreg;

    return arg;
}

void toggleProfilePulse(){
    PORTB ^= (_BV(PB5));
}

/**
 * Runtime entry point into the program; just start the RTOS.  The application layer must define r_main() for its entry point.
 */
int main()
{
    //DDRB = (_BV(PB5));
	//PORTB &= ~_BV(PB5);

	OS_Init();

	return 0;
}
