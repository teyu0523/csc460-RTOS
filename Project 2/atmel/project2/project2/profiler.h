/**
   Basic #defines to turn on various pins easily. This code is found courtesy of
   Mike Krazanowski and found documented here: https://webhome.csc.uvic.ca/~mcheng/460/summer.2013/samples/krazanowski_a2.pdf
*/

#ifndef _PROFILER_H_
#define _PROFILER_H_

#define PROFILECODE 1


#define PROFILE_DATADIRECTIONREGISTER   DDRC
#define PROFILE_OUTPORT                 PORTC
#define PROFILE_OUT_PIN37                PC0
#define PROFILE_OUT_PIN36                PC1
#define PROFILE_OUT_PIN35                PC2
#define PROFILE_OUT_PIN34                PC3
#define PROFILE_OUT_PIN33                PC4
#define PROFILE_OUT_PIN32                PC5
#define PROFILE_OUT_PIN31                PC6
#define PROFILE_OUT_PIN30                PC7

#if PROFILECODE

#define InitializeLogicAnalyzerProfiler() { PROFILE_DATADIRECTIONREGISTER |= 0xff; }
#define EnableProfileSample1() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN37)); }
#define EnableProfileSample2() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN36)); }
#define EnableProfileSample3() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN35)); }
#define EnableProfileSample4() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN34)); }
#define EnableProfileSample5() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN33)); }
#define EnableProfileSample6() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN32)); }
#define EnableProfileSample7() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN31)); }
#define EnableProfileSample8() { PROFILE_OUTPORT |= (_BV(PROFILE_OUT_PIN30)); }


#define DisableProfileSample1() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN37)); }
#define DisableProfileSample2() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN36)); }
#define DisableProfileSample3() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN35)); }
#define DisableProfileSample4() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN34)); }
#define DisableProfileSample5() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN33)); }
#define DisableProfileSample6() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN32)); }
#define DisableProfileSample7() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN31)); }
#define DisableProfileSample8() { PROFILE_OUTPORT &= ~(_BV(PROFILE_OUT_PIN30)); }

#endif

#endif