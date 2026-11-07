/* 
 * File:   oled.h
 * Author: mwes
 *
 * Created on November 4, 2026, 8:20 PM
 */

#ifndef OLED_H
#define	OLED_H

#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

//    extern void olederror_fprintf(int errnum);
    int oledflushfb();
    int oledstr(char *writebuf, uint8_t page, uint8_t fontnum, uint8_t fbwrite);
    int oledclear(uint8_t fbwrite);
    int oledinit();
    int oledoff();
    int oledon();
    int oledrv();
    int olednv();
    int oledsetpage(int pageno);
    int oledresetcol(); 
    int oledresetline();
    int oledhorizline(uint8_t startx, uint8_t starty, uint8_t xlen, uint8_t mode, uint8_t fbwrite);
    int oledvertline(uint8_t startx, uint8_t starty, uint8_t ylen, uint8_t mode, uint8_t fbwrite);
    int oledrectangle(uint8_t startx, uint8_t starty, uint8_t xlen, uint8_t ylen, uint8_t mode, uint8_t fbwrite);
    int oledfillrect(uint8_t startx, uint8_t starty, uint8_t xlen, uint8_t ylen, uint8_t mode, uint8_t fbwrite);
    int oledcircle(uint8_t startx, uint8_t starty, uint8_t r, uint8_t mode, uint8_t fbwrite);
    int oledfillcircle(uint8_t startx, uint8_t starty, uint8_t r, uint8_t mode, uint8_t fbwrite);
    int oledsetpixel(uint8_t x, uint8_t y, uint8_t mode, uint8_t fbwrite);

#ifdef	__cplusplus
}
#endif

#endif	/* OLED_H */

