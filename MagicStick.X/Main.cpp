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
static float eiAccBuffer[EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE] = {0};
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
    signal.total_length = EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE;
    signal.get_data     = &get_signal_data;
    
    ADC_Enable();                                                               // ADC(アナログ/デジタル)変換を開始
    run_classifier_init();                                                      // 連続推論初期化
    // loop
    while(1){
        AccelRead();                                                            // 加速度センサ読み取り
        
        EI_IMPULSE_ERROR res = run_classifier(&signal, &result, debugFlg);

        if (res == EI_IMPULSE_OK) {
            if(result.anomaly > 0.3){
                sprintf(tmpText, "anomaly %f\r\n", result.anomaly);
                serial_printf(tmpText);
            }else{
                sprintf(tmpText, "classify     attack :%f  circle :%f  poke :%f\r\n", result.classification[0].value, result.classification[1].value, result.classification[2].value);
                serial_printf(tmpText);
            }
        } else {
            sprintf(tmpText, "fail %d\r\n", res);
            serial_printf(tmpText);
        }
    }
    
    return 0;
}

////////////////////////////////////////////////////////////
//  加速度センサデータ更新
////////////////////////////////////////////////////////////
void AccelRead(){
    int total_floats = EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE;                      // 300
    int slice_floats = EI_CLASSIFIER_SLICE_SIZE * EI_CLASSIFIER_RAW_SAMPLES_PER_FRAME; // 75
    int shift_floats = total_floats - slice_floats;                             // 225
    
    // 1. 古いデータを左にズラす（過去の記憶を保持）
    for (int i = 0; i < shift_floats; i++) {
        eiAccBuffer[i] = eiAccBuffer[i + slice_floats];
    }
    
    for (size_t i = 0; i < EI_CLASSIFIER_SLICE_SIZE; i++) {
        // 次のサンプリング時刻を計算 (20ms間隔)
        uint64_t next_tick = ei_read_timer_ms() + EI_CLASSIFIER_INTERVAL_MS;

        // 書き込む基準の位置（225番目以降）
        int base_idx = shift_floats + (i * 3);
        
        // 各軸を読み取ってバッファへ格納
        eiAccBuffer[base_idx + 0] = (float)AccelReadSub(PIN_ACC_X);
        eiAccBuffer[base_idx + 1] = (float)AccelReadSub(PIN_ACC_Y);
        eiAccBuffer[base_idx + 2] = (float)AccelReadSub(PIN_ACC_Z);
        
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
    char tx_buf[512]; // \rを追加するための、少し大きめの送信用バッファ
    va_list args;
    
    // 1. フォーマット通りに文字を組み立てる
    va_start(args, format);
    vsnprintf(print_buf, sizeof(print_buf), format, args);
    va_end(args);

    // 2. Linux式(\n)をWindows/シリアル通信式(\r\n)に変換する
    int j = 0;
    for (int i = 0; print_buf[i] != '\0' && j < 510; i++) {
        // もし「\n」を見つけたら、その直前に「\r」を割り込ませる
        if (print_buf[i] == '\n') {
            tx_buf[j++] = '\r'; 
        }
        tx_buf[j++] = print_buf[i];
    }
    tx_buf[j] = '\0'; // 最後に必ず終端文字を入れる

    // 3. 綺麗な改行に変換された文字を送信！
    serial_printf(tx_buf);
}