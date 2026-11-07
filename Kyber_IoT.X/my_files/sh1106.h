/**
 * @file    sh1106.h
 * @brief   SH1106 (132 x 64) OLED driver, I2C interface, framebuffer based.
 *
 * Written for the MCC-generated I2C1 master driver (i2c1.c / i2c1.h) on PIC24,
 * but only one small function in sh1106.c (i2c_transfer) touches the I2C
 * driver, so it is easy to retarget.
 *
 * Basic use:
 *
 *      SYSTEM_Initialize();                    // MCC: sets up I2C1
 *      SH1106_Init();                          // reset, configure, display ON
 *      SH1106_DrawString(0, 0, "Hello", SH1106_WHITE, 2);
 *      SH1106_Update();                        // push changed pages to the OLED
 *
 * Notes
 *  - All drawing functions only modify the framebuffer in MCU RAM.
 *    Nothing appears on the screen until SH1106_Update() is called.
 *  - Blocking: every function that talks to the display waits until the
 *    I2C transfer is finished. Do not call from an interrupt handler.
 *  - The generated I2C driver is interrupt driven, so global interrupts
 *    must be enabled, otherwise calls fail with SH1106_ERR_TIMEOUT.
 *  - Write-only: the display RAM is never read back (the framebuffer
 *    in the MCU is the master copy).
 */

#ifndef SH1106_H
#define SH1106_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* ------------------------------------------------------------------------- */
/*  Configuration - edit here, or override with -D in the project options     */
/* ------------------------------------------------------------------------- */

/** 7-bit I2C slave address. SA0 pin low = 0x3C, SA0 pin high = 0x3D. */
#ifndef SH1106_I2C_ADDRESS
#define SH1106_I2C_ADDRESS          0x3C
#endif

/** Visible panel size. The controller RAM is 132 wide, most modules use 128. */
#ifndef SH1106_WIDTH
#define SH1106_WIDTH                128
#endif
#ifndef SH1106_HEIGHT
#define SH1106_HEIGHT               64
#endif

/**
 * RAM column of the first visible pixel. A 128 px panel is normally wired to
 * SEG2..SEG129 of the 132 outputs, hence 2. If your picture is shifted 2 px
 * (garbage column at one edge), change this to 0.
 */
#ifndef SH1106_COLUMN_OFFSET
#define SH1106_COLUMN_OFFSET        2
#endif

/**
 * Default orientation applied by SH1106_Init().
 * (1,1) = rotated 180 deg relative to the chip's reset state; this is the
 * upright orientation of most 1.3" modules. If the image is upside down or
 * mirrored, change these (or call SH1106_SetFlip() at run time).
 */
#ifndef SH1106_DEFAULT_FLIP_H
#define SH1106_DEFAULT_FLIP_H       1   /* 1 = segment remap A1h, 0 = A0h  */
#endif
#ifndef SH1106_DEFAULT_FLIP_V
#define SH1106_DEFAULT_FLIP_V       1   /* 1 = COM scan reversed C8h, 0 = C0h */
#endif

/** Contrast after SH1106_Init() (0..255, chip reset value is 0x80). */
#ifndef SH1106_DEFAULT_CONTRAST
#define SH1106_DEFAULT_CONTRAST     0x80
#endif

/** Internal charge pump output (VPP) after init, see SH1106_Pump. */
#ifndef SH1106_DEFAULT_PUMP
#define SH1106_DEFAULT_PUMP         SH1106_PUMP_8V0
#endif

/** Busy-wait iterations before an I2C transfer is declared timed out. */
#ifndef SH1106_I2C_TIMEOUT_LOOPS
#define SH1106_I2C_TIMEOUT_LOOPS    500000UL
#endif

/*
 * Optional hooks (define them in the project options or before including
 * this header; see sh1106.c for the defaults):
 *
 *   SH1106_DELAY_MS(ms)   millisecond delay. Default: __delay_ms(ms), which
 *                         needs FCY (instruction clock in Hz) to be defined.
 *   SH1106_RESET_LOW()    drive the OLED RES pin low  \  only if your module
 *   SH1106_RESET_HIGH()   drive the OLED RES pin high /  exposes RES to a GPIO
 *                         e.g. -DSH1106_RESET_LOW()=OLED_RES_SetLow()
 *   SH1106_I2C_STOP_BUSY() expression that is true while the I2C module is
 *                         still generating a STOP (default: I2C1CONLbits.PEN)
 */

/* ------------------------------------------------------------------------- */
/*  Types                                                                     */
/* ------------------------------------------------------------------------- */

typedef enum
{
    SH1106_OK = 0,
    SH1106_ERR_NO_DEVICE,   /**< address not acknowledged (address, wiring, pull-ups, power) */
    SH1106_ERR_NACK,        /**< device acknowledged its address but NACKed a byte */
    SH1106_ERR_BUS,         /**< I2C driver failure (queue full, collision, lost state) */
    SH1106_ERR_TIMEOUT,     /**< transfer never finished (bus hung / interrupts disabled) */
    SH1106_ERR_PARAM        /**< bad argument */
} SH1106_Result;

typedef enum
{
    SH1106_BLACK  = 0,      /**< pixel off */
    SH1106_WHITE  = 1,      /**< pixel on  */
    SH1106_INVERT = 2       /**< toggle pixel */
} SH1106_Color;

/** Charge pump output voltage (command 30h-33h). */
typedef enum
{
    SH1106_PUMP_6V4 = 0,
    SH1106_PUMP_7V4 = 1,
    SH1106_PUMP_8V0 = 2,    /**< chip reset value */
    SH1106_PUMP_9V0 = 3
} SH1106_Pump;

/** Raw command bytes (datasheet "Command Table"), for SH1106_SendCommand(s). */
enum
{
    SH1106_CMD_COLUMN_LOW     = 0x00,   /* | low  nibble of column      */
    SH1106_CMD_COLUMN_HIGH    = 0x10,   /* | high nibble of column      */
    SH1106_CMD_PUMP_VOLTAGE   = 0x30,   /* | SH1106_Pump                */
    SH1106_CMD_START_LINE     = 0x40,   /* | line 0..63                 */
    SH1106_CMD_CONTRAST       = 0x81,   /* followed by 0..255           */
    SH1106_CMD_SEG_NORMAL     = 0xA0,
    SH1106_CMD_SEG_REVERSE    = 0xA1,
    SH1106_CMD_ALL_ON_RESUME  = 0xA4,   /* display follows RAM          */
    SH1106_CMD_ALL_ON         = 0xA5,   /* every pixel on (test)        */
    SH1106_CMD_NORMAL         = 0xA6,
    SH1106_CMD_INVERSE        = 0xA7,
    SH1106_CMD_MUX_RATIO      = 0xA8,   /* followed by 0..63 (= ratio-1) */
    SH1106_CMD_DCDC_MODE      = 0xAD,   /* followed by 8Ah (off) / 8Bh (on) */
    SH1106_CMD_DISPLAY_OFF    = 0xAE,
    SH1106_CMD_DISPLAY_ON     = 0xAF,
    SH1106_CMD_PAGE_ADDR      = 0xB0,   /* | page 0..7                  */
    SH1106_CMD_COM_NORMAL     = 0xC0,
    SH1106_CMD_COM_REVERSE    = 0xC8,
    SH1106_CMD_DISPLAY_OFFSET = 0xD3,   /* followed by 0..63            */
    SH1106_CMD_CLOCK_DIV      = 0xD5,   /* followed by osc[7:4] div[3:0] */
    SH1106_CMD_PRECHARGE      = 0xD9,   /* followed by discharge/precharge */
    SH1106_CMD_COM_PINS       = 0xDA,   /* followed by 02h / 12h        */
    SH1106_CMD_VCOM_DESELECT  = 0xDB,   /* followed by 0..255           */
    SH1106_CMD_NOP            = 0xE3
};

/* ------------------------------------------------------------------------- */
/*  Display control                                                           */
/* ------------------------------------------------------------------------- */

/**
 * Power-up sequence from the datasheet: optional hardware reset, send the
 * configuration, clear the display RAM, display ON. Takes ~150 ms.
 * Returns the first error encountered (SH1106_ERR_NO_DEVICE if nothing answers
 * at SH1106_I2C_ADDRESS).
 */
SH1106_Result SH1106_Init(void);

/** Display on/off. Off = sleep mode: oscillator and charge pump stop, RAM is kept. */
SH1106_Result SH1106_SetDisplayOn(bool on);

/** Contrast / segment current, 0..255. */
SH1106_Result SH1106_SetContrast(uint8_t contrast);

/** Invert the whole display without touching RAM. */
SH1106_Result SH1106_SetInvert(bool invert);

/** Light every pixel regardless of RAM (panel test). false = back to normal. */
SH1106_Result SH1106_SetAllPixelsOn(bool on);

/** Mirror horizontally (segment remap) and/or vertically (COM scan direction). */
SH1106_Result SH1106_SetFlip(bool flip_h, bool flip_v);

/**
 * Hardware vertical scroll: the RAM line shown at the top of the screen
 * (0..63). Wraps around, no framebuffer data is resent.
 */
SH1106_Result SH1106_SetStartLine(uint8_t line);

/** Internal DC-DC (charge pump) on/off. Display must be off while changing. */
SH1106_Result SH1106_SetChargePump(bool on);

/** Charge pump output voltage (higher = brighter, more power). */
SH1106_Result SH1106_SetPumpVoltage(SH1106_Pump voltage);

/* Low level access ------------------------------------------------------- */

/** Send one command byte. */
SH1106_Result SH1106_SendCommand(uint8_t command);

/** Send several command bytes (including their arguments) in one transfer. */
SH1106_Result SH1106_SendCommands(const uint8_t *commands, uint8_t length);

/**
 * Write raw bytes to display RAM at the current page/column pointer
 * (set with SH1106_CMD_PAGE_ADDR / COLUMN_LOW / COLUMN_HIGH). The column
 * pointer auto-increments, the page does not. length <= SH1106_WIDTH.
 */
SH1106_Result SH1106_SendData(const uint8_t *data, uint8_t length);

/* ------------------------------------------------------------------------- */
/*  Framebuffer -> display                                                    */
/* ------------------------------------------------------------------------- */

/** Send only the 8-pixel-high pages that changed since the last update. */
SH1106_Result SH1106_Update(void);

/** Send every page (use to recover after a power glitch / display reset). */
SH1106_Result SH1106_UpdateAll(void);

/** Direct pointer to the framebuffer: page-major, bit0 = top pixel of a page,
 *  size SH1106_WIDTH * SH1106_HEIGHT / 8. If you write to it yourself, call
 *  SH1106_UpdateAll() afterwards. */
uint8_t *SH1106_GetBuffer(void);

/* ------------------------------------------------------------------------- */
/*  Drawing (framebuffer only). Coordinates: (0,0) top-left, x right, y down. */
/*  Everything is clipped to the screen, off-screen coordinates are fine.     */
/* ------------------------------------------------------------------------- */

void SH1106_Fill(SH1106_Color color);
void SH1106_Clear(void);                           /* = Fill(SH1106_BLACK) */

void SH1106_DrawPixel(int16_t x, int16_t y, SH1106_Color color);
bool SH1106_GetPixel(int16_t x, int16_t y);        /* false if off-screen  */

void SH1106_DrawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, SH1106_Color color);
void SH1106_DrawRect(int16_t x, int16_t y, int16_t w, int16_t h, SH1106_Color color);
void SH1106_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, SH1106_Color color);
void SH1106_DrawCircle(int16_t cx, int16_t cy, int16_t r, SH1106_Color color);
void SH1106_FillCircle(int16_t cx, int16_t cy, int16_t r, SH1106_Color color);

/**
 * Monochrome bitmap: row-major, 1 bit per pixel, MSB = leftmost pixel, every
 * row padded to a whole byte ((w+7)/8 bytes per row). Only set bits are
 * drawn, so it is transparent where the bitmap is 0.
 */
void SH1106_DrawBitmap(int16_t x, int16_t y, const uint8_t *bitmap,
                       int16_t w, int16_t h, SH1106_Color color);

/* Text: built-in 5x7 font, ASCII 32..126, 6x8 px cell at scale 1. Background is
 * transparent (use SH1106_FillRect first to clear it). scale 1..n multiplies. */
void    SH1106_DrawChar(int16_t x, int16_t y, char c, SH1106_Color color, uint8_t scale);

/** Draws a string, '\n' starts a new line. Returns the x position after the last char. */
int16_t SH1106_DrawString(int16_t x, int16_t y, const char *str, SH1106_Color color, uint8_t scale);

/** Pixel width of the longest line of str (handy for centering). */
uint16_t SH1106_TextWidth(const char *str, uint8_t scale);

#ifdef __cplusplus
}
#endif

#endif /* SH1106_H */
