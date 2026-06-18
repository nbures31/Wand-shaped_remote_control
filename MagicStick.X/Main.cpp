/* 
 * File:   Main.cpp
 * Author: kokih
 *
 * Created on 2026/04/27, 22:52
 */
#include <xc.h>
#include <cstdlib>
#include <string.h>
#include <stdarg.h>
#include <stdio.h>

extern "C"{
    #include "definitions.h"
}
#include "Main.h"
#include "edge-impulse-sdk/classifier/ei_run_classifier.h"

using namespace std;
static float eiAccBuffer[EI_CLASSIFIER_SLICE_SIZE * EI_CLASSIFIER_RAW_SAMPLES_PER_FRAME] = {0};
                                                                                // EI(Edge Impulse で生成したAI)が使用するための加速度センサのデータ(2000ms/4)のバッファ
char tmpText[50];
void serial_printf(char* text);

int main(int argc, char** argv) {    
    // setup
    SYS_Initialize ( NULL );                                                    // picマイコン関連処理初期化
    
    signal_t signal;                                                            // 生データ受け渡し用
    ei_impulse_result_t result;                                                 // 結果格納用
    bool debugFlg = false;                                                              // デバッグ出力有無
     // コールバック関数と必要なデータ数を設定
    signal.total_length = EI_CLASSIFIER_SLICE_SIZE * EI_CLASSIFIER_RAW_SAMPLES_PER_FRAME;
    signal.get_data     = &get_signal_data;
    
    ADC_Enable();                                                               // ADC(アナログ/デジタル)変換を開始
    run_classifier_init();                                                      // 連続推論初期化
    // loop
    while(1){
        AccelRead();                                                            // 加速度センサ読み取り
        
        EI_IMPULSE_ERROR res = run_classifier_continuous(&signal, &result, debugFlg); // 連続推論

        if (res == EI_IMPULSE_OK) {
            // 結果をシリアル表示
            display_results(&ei_default_impulse, &result);
        }else{
            sprintf(tmpText, "fail %d\r\n\0", res);
            serial_printf(tmpText);
        }
    }
    
    return 0;
}

////////////////////////////////////////////////////////////
//  加速度センサデータ更新
////////////////////////////////////////////////////////////
void AccelRead(){
    size_t samples_per_slice = EI_CLASSIFIER_SLICE_SIZE;
    for (size_t i = 0; i < samples_per_slice; i++) {
        // 次のサンプリング時刻を計算 (20ms間隔)
        uint64_t next_tick = ei_read_timer_ms() + EI_CLASSIFIER_INTERVAL_MS;

        // 各軸を読み取ってバッファへ格納
        eiAccBuffer[(i * 3) + 0] = (float)AccelReadSub(PIN_ACC_X);
        eiAccBuffer[(i * 3) + 1] = (float)AccelReadSub(PIN_ACC_Y);
        eiAccBuffer[(i * 3) + 2] = (float)AccelReadSub(PIN_ACC_Z);
        
        // 20ms経過するまで待機
        while (ei_read_timer_ms() < next_tick);
    }
}

/////////////////////////////////////////////////////////////
//  加速度センサ読み取り　実処理
/////////////////////////////////////////////////////////////
uint32_t AccelReadSub(ADC_INPUT_POSITIVE pin) {
    ADC_InputSelect(ADC_MUX_A, pin, ADC_INPUT_NEGATIVE_VREFL);
    
    // 1. サンプリング（電気の取り込み）開始　変換用にコンデンサに電気をためる？
    ADC_SamplingStart();
    
    // 2. サンプリング用に少し待機
    CORETIMER_DelayUs(10);
    
    // 3. 変換開始（サンプリング終了）
    ADC_ConversionStart();
    
    // 4. 結果待機
    uint32_t timeout = 100000;
    while(!ADC_ResultIsReady() && timeout > 0) {
        timeout--;
    }
    
    // もしタイムアウトしてしまったら、警告を出して0を返す
    if (timeout == 0) {
        sprintf(tmpText, "ADC Error!\r\n\0");
        serial_printf(tmpText);
        return 0; 
    }
    
    return ADC_ResultGet(ADC_RESULT_BUFFER_0);
}

/////////////////////////////////////////////////////////////
//  EI用バッファデータ取得関数
/////////////////////////////////////////////////////////////
int get_signal_data(size_t offset, size_t length, float *out_ptr) {
    // SDKはスライスバッファ内のデータを要求してくる
    for (size_t i = 0; i < length; i++) {
        out_ptr[i] = eiAccBuffer[offset + i];
    }
    
    return 0;
}

/////////////////////////////////////////////////////////////
//  文字列出力用
/////////////////////////////////////////////////////////////
void serial_printf(char* text){
    UART1_Write((void*)text, strlen(text));
    while(UART1_WriteIsBusy()); // 言い終わるまで待つ
}

/////////////////////////////////////////////////////////////
//  エラー出力用
/////////////////////////////////////////////////////////////
void ei_printf(const char *format, ...) {
    char print_buf[256];
    va_list args;
    va_start(args, format);
    vsnprintf(print_buf, sizeof(print_buf), format, args);
    va_end(args);
    serial_printf(print_buf);
}