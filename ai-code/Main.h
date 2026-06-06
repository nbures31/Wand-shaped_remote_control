/* 
 * File:   Main.h
 * Author: kokih
 *
 * Created on 2026/05/09, 11:15
 */

#ifndef MAIN_H
#define	MAIN_H

#include <xc.h>
#ifdef	__cplusplus
extern "C" {
#endif
    #include "definitions.h"
#ifdef	__cplusplus
}
#endif

/*/////////////////////////////////////////////////////
 * ピン定義
 */////////////////////////////////////////////////////
#define PIN_ACC_X               ADC_INPUT_POSITIVE_AN2                          // 加速度センサ　X軸
#define PIN_ACC_Y               ADC_INPUT_POSITIVE_AN3                          // 加速度センサ　Y軸
#define PIN_ACC_Z               ADC_INPUT_POSITIVE_AN4                          // 加速度センサ　Z軸




#define TM_ACCREAD              20                                              // 加速度センサ読み取りインターバル(ms)

void AccelRead();                                                               // 加速度センサデータ更新
uint32_t AccelReadSub(ADC_INPUT_POSITIVE pin);                                  // 加速度センサ読み取り　実処理
int get_signal_data(size_t offset, size_t length, float *out_ptr);              // EI用バッファデータ取得関数

#endif	/* MAIN_H */

