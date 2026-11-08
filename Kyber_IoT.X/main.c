/* 
 * File:   main.c
 * Author: mwes
 *
 * Created on November 4, 2026, 4:25 PM
 */

#include "mcc_generated_files/system.h"
#include "my_files/sh1106.h"

int main(void) {
    // Inicjalizacja systemowa MCU (generowana przez MCC)
    SYSTEM_Initialize();
    // Inicjalizacja wy?wietlacza OLED
    SH1106_Result r = SH1106_Init();
    SH1106_DrawString(0, 0, "Hello", SH1106_WHITE, 2);
    SH1106_Update();
    
    while (1) {
        // P?tla g?ówna
    }
}