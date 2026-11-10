/* 
 * File:   main.c
 * Author: mwes
 *
 * Created on November 4, 2026, 4:25 PM
 */

#include "mcc_generated_files/system.h"
#include "my_files/sh1106.h"
#include "my_files/comms.h"

int main(void) {
    // Inicjalizacja
    SYSTEM_Initialize();
    SH1106_Init();
    Comms_Init();
    // Inicjalizacja wy?wietlacza OLED
    
        
    SH1106_DrawString(0, 0, "Hello World!", SH1106_WHITE, 1);
    SH1106_Update();
    
    while (1) {
        // P?tla g?ówna
    }
}