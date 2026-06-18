#include <xc.h>
extern "C"{
    #include "definitions.h"
}
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

__attribute__((weak)) EI_IMPULSE_ERROR ei_run_impulse_check_canceled() {
    return EI_IMPULSE_OK;
}

__attribute__((weak)) void ei_printf(const char *format, ...) {
    va_list myargs;
    va_start(myargs, format);
    vprintf(format, myargs);
    va_end(myargs);
}

__attribute__((weak)) void ei_printf_float(float f) {
    ei_printf("%f", f);
}

__attribute__((weak)) void *ei_malloc(size_t size) {
    return malloc(size);
}

__attribute__((weak)) void *ei_calloc(size_t nitems, size_t size) {
    return calloc(nitems, size);
}

__attribute__((weak)) void ei_free(void *ptr) {
    free(ptr);
}

#if defined(__cplusplus) && EI_C_LINKAGE == 1
extern "C"
#endif
__attribute__((weak)) void DebugLog(const char* s) {
    ei_printf("%s", s);
}

__attribute__((weak)) EI_IMPULSE_ERROR ei_sleep(int32_t time_ms) {
    if (time_ms > 0) {
        // Harmony標準のコアタイマー遅延関数を使用
        CORETIMER_DelayMs((uint32_t)time_ms);
    }
    return EI_IMPULSE_OK;
}

uint64_t ei_read_timer_ms() {
    // コアタイマーのカウント値をミリ秒に変換して返す
    // 32ビットタイマーのオーバーフローを考慮し、内部で適切に処理された値を使用
    return (uint64_t)(CORETIMER_CounterGet() / (CORETIMER_FrequencyGet() / 1000));
}

uint64_t ei_read_timer_us() {
    // 同様にマイクロ秒（us）を返す関数
    return (uint64_t)(CORETIMER_CounterGet() / (CORETIMER_FrequencyGet() / 1000000));
}

extern "C" void _mon_putc(char c) {
    // UART1が空くまで待ってから1文字送信
    while(UART1_WriteIsBusy()); 
    UART1_Write(&c, 1);
}