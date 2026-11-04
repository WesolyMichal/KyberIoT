#include "oled.h"
#include "../mcc_generated_files/i2c1.h"

#define SH1106_I2C_ADDRESS  0x3C

void my_delay_ms(uint16_t ms) {
    while (ms--) {
        for (volatile uint16_t i = 0; i < 400; i++) {
            __asm__("nop");
        }
    }
}

// Funkcja wysy?aj?ca komend? do wy?wietlacza SH1106
void SH1106_WriteCommand(uint8_t cmd) {
    uint8_t buffer[2];
    buffer[0] = 0x00; // Control byte: Co = 0, D/C# = 0 (informuje ekran, ?e wysy?amy komend?)
    buffer[1] = cmd;
    
    I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;
    
    // Wywo?anie funkcji z wygenerowanego sterownika I2C1
    I2C1_MasterWrite(buffer, 2, SH1106_I2C_ADDRESS, &status);
    
    // Opcjonalnie: Oczekiwanie na zako?czenie transakcji w kolejce
    while(status == I2C1_MESSAGE_PENDING) {
        // Mo?esz tutaj doda? licznik timeoutu, aby unikn?? zawieszenia,
        // je?li ekran nie odpowiada lub nie jest pod??czony.
    }
}

// Inicjalizacja wy?wietlacza SH1106 (128x64)
void SH1106_Init(void) {
    my_delay_ms(100);
    
    SH1106_WriteCommand(0xAE); // Wy??czenie wy?wietlacza (Display OFF)
    SH1106_WriteCommand(0xD5); // Cz?stotliwo?? zegara oscylatora
    SH1106_WriteCommand(0x80); 
    SH1106_WriteCommand(0xA8); // Multiplex Ratio
    SH1106_WriteCommand(0x3F); // 1/64 duty
    SH1106_WriteCommand(0xD3); // Przesuni?cie wy?wietlacza (Display Offset)
    SH1106_WriteCommand(0x00); 
    SH1106_WriteCommand(0x40); // Linia startowa (Start Line = 0)
    SH1106_WriteCommand(0x8D); // Pompa ?adunkowa (Charge Pump)
    SH1106_WriteCommand(0x14); // W??cz pomp? 3.3V
    SH1106_WriteCommand(0x20); // Tryb adresowania pami?ci
    SH1106_WriteCommand(0x02); // Tryb page addressing
    SH1106_WriteCommand(0xA1); // Segment Remap
    SH1106_WriteCommand(0xC8); // COM Output Scan Direction
    SH1106_WriteCommand(0xDA); // Konfiguracja pinów COM
    SH1106_WriteCommand(0x12); 
    SH1106_WriteCommand(0x81); // Kontrast
    SH1106_WriteCommand(0xCF); 
    SH1106_WriteCommand(0xD9); // Okres pre-charge
    SH1106_WriteCommand(0xF1); 
    SH1106_WriteCommand(0xDB); // Poziom VCOMH
    SH1106_WriteCommand(0x40); 
    SH1106_WriteCommand(0xA4); // Wy?wietlanie z pami?ci RAM
    SH1106_WriteCommand(0xA6); // Normalny tryb (nieinwertowany)
    SH1106_WriteCommand(0xAF); // W??czenie wy?wietlacza (Display ON)
}

void oled_init(void){
    SH1106_Init();
};