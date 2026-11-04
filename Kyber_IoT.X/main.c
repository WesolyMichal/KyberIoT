/* 
 * File:   main.c
 * Author: mwes
 *
 * Created on November 4, 2026, 4:25 PM
 */

#include "mcc_generated_files/system.h"
#include "my_files/oled.h"


int main(void) {
    // Inicjalizacja systemowa MCU (generowana przez MCC)
    SYSTEM_Initialize();

    // Inicjalizacja wy?wietlacza OLED
    oled_init();

    while (1) {
        // P?tla g?ówna
    }
}