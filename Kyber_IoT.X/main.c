/* 
 * File:   main.c
 * Author: mwes
 *
 * Created on November 4, 2026, 4:25 PM
 */

#include "mcc_generated_files/system.h"
#include "my_files/sh1106.h"
#include "my_files/Kyber/tests.h"
#include "mcc_generated_files/led.h"

int main(void) {
    
    // Inicjalizacja
    SYSTEM_Initialize();
    SH1106_Init();
    
    uint8_t r = Test_ByteEncDec();
    if(r) LED_flashRed();
        
    SH1106_DrawString(0, 0, "Hello World!", SH1106_WHITE, 1);
    SH1106_Update();  
    
    while (1) {
        
    }
}