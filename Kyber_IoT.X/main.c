/* 
 * File:   main.c
 * Author: mwes
 *
 * Created on November 4, 2026, 4:25 PM
 */

#include "mcc_generated_files/system.h"
#include "my_files/sh1106.h"
#include "my_files/Kyber/tests.h"

int main(void) {
    
    // Inicjalizacja
    SYSTEM_Initialize();
    SH1106_Init();
        
    SH1106_DrawString(0, 0, "Hello World!", SH1106_WHITE, 1);
    SH1106_Update();  
    
    char result[32];
    
    Test_ByteEncDec(result);
    SH1106_DrawString(0, 8, result, SH1106_WHITE, 1);
    SH1106_Update();
    
    Test_PolyInv(result);
    SH1106_DrawString(0, 16, result, SH1106_WHITE, 1);
    SH1106_Update();
    
    Test_SimplePolyMul(10, result);
    SH1106_DrawString(0, 24, result, SH1106_WHITE, 1);
    SH1106_Update();
    
    while (1) {
        
    }
}