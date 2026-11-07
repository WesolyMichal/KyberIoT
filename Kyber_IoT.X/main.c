/* 
 * File:   main.c
 * Author: mwes
 *
 * Created on November 4, 2026, 4:25 PM
 */

#include "mcc_generated_files/system.h"
#include "my_files/oled.h"
#include "mcc_generated_files/i2c1.h"
#include "mcc_generated_files/led.h"

void my_delay_ms(uint16_t ms) {
    while (ms--) {
        for (volatile uint16_t i = 0; i < 400; i++) {
            __asm__("nop");
        }
    }
}

int main(void) {
    my_delay_ms(500);
    // Inicjalizacja systemowa MCU (generowana przez MCC)
    SYSTEM_Initialize();
    // Inicjalizacja wy?wietlacza OLED
    oledinit();
    while (1) {
        // P?tla g?ówna
    }
}