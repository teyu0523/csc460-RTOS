/**
 * @file   error_code.h
 *
 * @brief Error messages returned in OS_Abort().
 *        Green errors are initialization errors
 *        Red errors are runt time errors
 *
 * CSC 460/560 Real Time Operating Systems - Mantis Cheng
 *
 * @author Scott Craig
 * @author Justin Tanner
 */
#ifndef __ERROR_CODE_H__
#define __ERROR_CODE_H__

enum {

/** GREEN ERRORS -- Initialize time errors. */
    
/** PPP invalid -- Names must be in range [0 .. MAXPROCESS] */
ERR_1_PPP_NAME_OUT_OF_RANGE,

/** PERIODIC name is out of range [1 .. MAXNAME] */
ERR_2_CREATE_NAME_OUT_OF_RANGE,

/** PERIODIC start time below current ticks */
ERR_3_PERIODIC_START_TIME_BELOW_CURRENT_TICK,

/** PERIODIC worst case greater than period*/
ERR_4_PERIODIC_WCET_GREATER_THAN_PERIOD,

/** PERIODIC invalid input ex wcet <= 0 or period <= 0 */
ERR_5_PERIODIC_INVALID_INPUT,

/** Time interval 0 in PPP array */
ERR_6_TIME_INTERVAL_IN_PPP_0,


/** RED ERRORS -- Run time errors. */

/** User called OS_Abort() */
ERR_RUN_1_USER_CALLED_OS_ABORT,

/** Too many tasks created. Only allowed MAXPROCESS at any time.*/
ERR_RUN_2_TOO_MANY_TASKS,

/** PERIODIC task still running at end of time slot. */
ERR_RUN_3_PERIODIC_TOOK_TOO_LONG,

/** ISR made a request that only tasks are allowed. */
ERR_RUN_4_ILLEGAL_ISR_KERNEL_REQUEST,

/** RTOS Internal error in handling request. */
ERR_RUN_5_RTOS_INTERNAL_ERROR,

/** PERIODIC task running at same time */
ERR_RUN_6_PERIODIC_COLLISION,

/** Subscribers over number of tasks */
ERR_RUN_7_SUBSCRIBE_MAX_SUBSCRIBERS_REACHED,

/** Subscriber is called in periodic task */
ERR_RUN_8_SUBSCRIBE_PERIODIC_TASK,

/** Max servcices */
ERR_RUN_9_SERVICE_MAX_SERVICES_REACH
};


#endif
