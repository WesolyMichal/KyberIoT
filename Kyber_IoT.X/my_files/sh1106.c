/**
 * @file    sh1106.c
 * @brief   SH1106 132x64 OLED driver over I2C (MCC I2C1 master driver).
 *
 * Only commands documented in the SH1106 datasheet (V2.4) are used. The
 * SH1106 is *not* an SSD1306: it has no horizontal/vertical addressing mode
 * (so the page and column are set before every page write), no 8Dh charge
 * pump command (DC-DC is AD 8B) and no 20h/21h/22h commands.
 */

#include "sh1106.h"
#include "sh1106_font5x7.h"

#include "../mcc_generated_files/i2c1.h"          /* MCC generated I2C1 driver */

#include <stddef.h>
#include <string.h>
#define FCY 32000000UL

/* ------------------------------------------------------------------------- */
/*  Port hooks                                                                */
/* ------------------------------------------------------------------------- */

#ifndef SH1106_DELAY_MS
    #if defined(FCY)
        #include <libpic30.h>
        #define SH1106_DELAY_MS(ms)     __delay_ms(ms)
    #else
        #error "sh1106.c: define SH1106_DELAY_MS(ms), or define FCY (instruction clock in Hz) so __delay_ms() can be used."
    #endif
#endif

/* Is the I2C module still busy generating the STOP condition? */
#ifndef SH1106_I2C_STOP_BUSY
#define SH1106_I2C_STOP_BUSY()          (I2C1CONLbits.PEN != 0)
#endif

/* ------------------------------------------------------------------------- */
/*  Constants / sanity checks                                                 */
/* ------------------------------------------------------------------------- */

#define SH1106_RAM_COLUMNS      132
#define PAGES                   (SH1106_HEIGHT / 8)

#if (SH1106_HEIGHT % 8) != 0 || SH1106_HEIGHT > 64 || SH1106_HEIGHT < 8
#error "SH1106_HEIGHT must be a multiple of 8, 8..64"
#endif
#if (SH1106_COLUMN_OFFSET + SH1106_WIDTH) > SH1106_RAM_COLUMNS
#error "SH1106_COLUMN_OFFSET + SH1106_WIDTH must not exceed 132"
#endif
#if (SH1106_WIDTH + 7) > 255
#error "I2C1_MasterWrite() length is 8 bit: SH1106_WIDTH + 7 must be <= 255"
#endif

/* I2C control bytes: bit7 = Co (another control byte follows each data byte),
 * bit6 = D/C# (1 = display data, 0 = command). */
#define CTRL_CMD_STREAM         0x00u   /* Co=0 D/C=0: all following bytes are commands   */
#define CTRL_CMD_SINGLE         0x80u   /* Co=1 D/C=0: one command byte, then control byte */
#define CTRL_DATA_STREAM        0x40u   /* Co=0 D/C=1: all following bytes are RAM data    */

/* Transmit buffer: biggest message is one page update =
 * 3 x (control + command) + control + WIDTH data bytes. */
#define PAGE_HEADER_BYTES       7u
#define TX_SIZE                 (PAGE_HEADER_BYTES + SH1106_WIDTH)

#define ALL_PAGES_MASK          ((uint8_t)((1u << PAGES) - 1u))

/* ------------------------------------------------------------------------- */
/*  State                                                                     */
/* ------------------------------------------------------------------------- */

static uint8_t  s_fb[SH1106_WIDTH * PAGES];     /* page-major, bit0 = top pixel   */
static uint8_t  s_dirty;                        /* bit n set = page n needs sending */

/* Static (not on the stack) because the I2C interrupt keeps reading it after
 * a timeout, and static because the generated driver keeps pointers to both. */
static uint8_t  s_tx[TX_SIZE];
static volatile I2C1_MESSAGE_STATUS s_i2c_status;

/* ------------------------------------------------------------------------- */
/*  I2C transport - the only place that knows about the MCC driver            */
/* ------------------------------------------------------------------------- */

/** Send the first @p len bytes of s_tx to the display and wait for the result. */
static SH1106_Result i2c_transfer(uint8_t len)
{
    uint32_t guard;
    I2C1_MESSAGE_STATUS st;
    SH1106_Result res;

    s_i2c_status = I2C1_MESSAGE_PENDING;
    I2C1_MasterWrite(s_tx, len, SH1106_I2C_ADDRESS,
                     (I2C1_MESSAGE_STATUS *)&s_i2c_status);

    /* The generated driver is interrupt driven: wait for it to finish. */
    guard = SH1106_I2C_TIMEOUT_LOOPS;
    while (s_i2c_status == I2C1_MESSAGE_PENDING)
    {
        if (guard == 0u)
        {
            return SH1106_ERR_TIMEOUT;
        }
        guard--;
    }

    st = s_i2c_status;
    switch (st)
    {
        case I2C1_MESSAGE_COMPLETE:         res = SH1106_OK;            break;
        case I2C1_MESSAGE_ADDRESS_NO_ACK:   res = SH1106_ERR_NO_DEVICE; break;
        case I2C1_DATA_NO_ACK:              res = SH1106_ERR_NACK;      break;
        default:                            res = SH1106_ERR_BUS;       break;
    }

    /* The driver reports "complete" the moment it *starts* the STOP condition.
     * Let the STOP finish before the caller can start the next transfer,
     * otherwise a back-to-back START may be issued while the module is busy. */
    guard = SH1106_I2C_TIMEOUT_LOOPS;
    while (SH1106_I2C_STOP_BUSY() && (guard != 0u))
    {
        guard--;
    }

    return res;
}

/* ------------------------------------------------------------------------- */
/*  Commands / data                                                           */
/* ------------------------------------------------------------------------- */

SH1106_Result SH1106_SendCommands(const uint8_t *commands, uint8_t length)
{
    if ((commands == NULL) || (length == 0u) || (length > (TX_SIZE - 1u)))
    {
        return SH1106_ERR_PARAM;
    }
    s_tx[0] = CTRL_CMD_STREAM;
    memcpy(&s_tx[1], commands, length);
    return i2c_transfer((uint8_t)(length + 1u));
}

SH1106_Result SH1106_SendCommand(uint8_t command)
{
    s_tx[0] = CTRL_CMD_STREAM;
    s_tx[1] = command;
    return i2c_transfer(2u);
}

SH1106_Result SH1106_SendData(const uint8_t *data, uint8_t length)
{
    if ((data == NULL) || (length == 0u) || (length > SH1106_WIDTH))
    {
        return SH1106_ERR_PARAM;
    }
    s_tx[0] = CTRL_DATA_STREAM;
    memcpy(&s_tx[1], data, length);
    return i2c_transfer((uint8_t)(length + 1u));
}

/* ------------------------------------------------------------------------- */
/*  Display control                                                           */
/* ------------------------------------------------------------------------- */

SH1106_Result SH1106_SetDisplayOn(bool on)
{
    return SH1106_SendCommand(on ? SH1106_CMD_DISPLAY_ON : SH1106_CMD_DISPLAY_OFF);
}

SH1106_Result SH1106_SetContrast(uint8_t contrast)
{
    uint8_t cmd[2];
    cmd[0] = SH1106_CMD_CONTRAST;
    cmd[1] = contrast;
    return SH1106_SendCommands(cmd, 2u);
}

SH1106_Result SH1106_SetInvert(bool invert)
{
    return SH1106_SendCommand(invert ? SH1106_CMD_INVERSE : SH1106_CMD_NORMAL);
}

SH1106_Result SH1106_SetAllPixelsOn(bool on)
{
    return SH1106_SendCommand(on ? SH1106_CMD_ALL_ON : SH1106_CMD_ALL_ON_RESUME);
}

SH1106_Result SH1106_SetFlip(bool flip_h, bool flip_v)
{
    uint8_t cmd[2];
    cmd[0] = flip_h ? SH1106_CMD_SEG_REVERSE : SH1106_CMD_SEG_NORMAL;
    cmd[1] = flip_v ? SH1106_CMD_COM_REVERSE : SH1106_CMD_COM_NORMAL;
    return SH1106_SendCommands(cmd, 2u);
}

SH1106_Result SH1106_SetStartLine(uint8_t line)
{
    if (line > 63u)
    {
        return SH1106_ERR_PARAM;
    }
    return SH1106_SendCommand((uint8_t)(SH1106_CMD_START_LINE | line));
}

SH1106_Result SH1106_SetChargePump(bool on)
{
    uint8_t cmd[2];
    cmd[0] = SH1106_CMD_DCDC_MODE;
    cmd[1] = on ? 0x8Bu : 0x8Au;
    return SH1106_SendCommands(cmd, 2u);
}

SH1106_Result SH1106_SetPumpVoltage(SH1106_Pump voltage)
{
    return SH1106_SendCommand((uint8_t)(SH1106_CMD_PUMP_VOLTAGE | ((uint8_t)voltage & 0x03u)));
}

/* Power-up configuration. Everything not listed is left at its reset value. */
static const uint8_t s_init_seq[] =
{
    SH1106_CMD_DISPLAY_OFF,
    SH1106_CMD_CLOCK_DIV,      0x80,    /* divide ratio 1, osc +15% (reset value is 0x50) */
    SH1106_CMD_MUX_RATIO,      (SH1106_HEIGHT - 1),
    SH1106_CMD_DISPLAY_OFFSET, 0x00,
    SH1106_CMD_START_LINE | 0x00,
    SH1106_CMD_DCDC_MODE,      0x8B,    /* internal DC-DC on (VPP generated on chip) */
    SH1106_CMD_PUMP_VOLTAGE | SH1106_DEFAULT_PUMP,
    (SH1106_DEFAULT_FLIP_H ? SH1106_CMD_SEG_REVERSE : SH1106_CMD_SEG_NORMAL),
    (SH1106_DEFAULT_FLIP_V ? SH1106_CMD_COM_REVERSE : SH1106_CMD_COM_NORMAL),
    SH1106_CMD_COM_PINS,       0x12,    /* alternative COM pad configuration (reset value) */
    SH1106_CMD_CONTRAST,       SH1106_DEFAULT_CONTRAST,
    SH1106_CMD_PRECHARGE,      0x22,    /* reset value: 2 DCLK discharge / 2 DCLK precharge */
    SH1106_CMD_VCOM_DESELECT,  0x35,    /* reset value (0.77 x VREF) */
    SH1106_CMD_ALL_ON_RESUME,
    SH1106_CMD_NORMAL
};

SH1106_Result SH1106_Init(void)
{
    SH1106_Result res;

    memset(s_fb, 0, sizeof(s_fb));
    s_dirty = 0u;

    SH1106_DELAY_MS(20);                /* let VDD / VPP settle after power-up */

#if defined(SH1106_RESET_LOW) && defined(SH1106_RESET_HIGH)
    SH1106_RESET_HIGH();
    SH1106_DELAY_MS(1);
    SH1106_RESET_LOW();                 /* datasheet: RES low >= 10 us */
    SH1106_DELAY_MS(1);
    SH1106_RESET_HIGH();
    SH1106_DELAY_MS(1);
#endif

    res = SH1106_SendCommands(s_init_seq, (uint8_t)sizeof(s_init_seq));
    if (res != SH1106_OK)
    {
        return res;
    }

    /* Datasheet power-on flow: clear the RAM, then display ON, then wait 100 ms. */
    res = SH1106_UpdateAll();
    if (res != SH1106_OK)
    {
        return res;
    }

    res = SH1106_SetDisplayOn(true);
    SH1106_DELAY_MS(100);
    return res;
}

/* ------------------------------------------------------------------------- */
/*  Framebuffer -> display                                                    */
/* ------------------------------------------------------------------------- */

/* One I2C transaction per page: set page, set column, then the pixel data.
 * Frame:  80 B0|page  80 lo  80 hi  40 <WIDTH data bytes>
 * (Co=1 control bytes before each command, final Co=0 / D/C=1 control byte
 * switches to RAM data - datasheet Fig. 7.) */
static SH1106_Result update_page(uint8_t page)
{
    const uint8_t col = (uint8_t)SH1106_COLUMN_OFFSET;

    s_tx[0] = CTRL_CMD_SINGLE;
    s_tx[1] = (uint8_t)(SH1106_CMD_PAGE_ADDR | page);
    s_tx[2] = CTRL_CMD_SINGLE;
    s_tx[3] = (uint8_t)(SH1106_CMD_COLUMN_LOW  | (col & 0x0Fu));
    s_tx[4] = CTRL_CMD_SINGLE;
    s_tx[5] = (uint8_t)(SH1106_CMD_COLUMN_HIGH | (col >> 4));
    s_tx[6] = CTRL_DATA_STREAM;
    memcpy(&s_tx[PAGE_HEADER_BYTES], &s_fb[(uint16_t)page * SH1106_WIDTH], SH1106_WIDTH);

    return i2c_transfer((uint8_t)TX_SIZE);
}

SH1106_Result SH1106_Update(void)
{
    uint8_t page;
    SH1106_Result res;

    for (page = 0u; page < PAGES; page++)
    {
        if ((s_dirty & (uint8_t)(1u << page)) != 0u)
        {
            res = update_page(page);
            if (res != SH1106_OK)
            {
                return res;             /* page stays dirty, a later call retries it */
            }
            s_dirty &= (uint8_t)~(1u << page);
        }
    }
    return SH1106_OK;
}

SH1106_Result SH1106_UpdateAll(void)
{
    s_dirty = ALL_PAGES_MASK;
    return SH1106_Update();
}

uint8_t *SH1106_GetBuffer(void)
{
    return s_fb;
}

/* ------------------------------------------------------------------------- */
/*  Drawing                                                                   */
/* ------------------------------------------------------------------------- */

static int16_t iabs16(int16_t v)
{
    return (v < 0) ? (int16_t)-v : v;
}

static void apply_mask(uint16_t index, uint8_t mask, SH1106_Color color)
{
    switch (color)
    {
        case SH1106_WHITE:  s_fb[index] |= mask;            break;
        case SH1106_BLACK:  s_fb[index] &= (uint8_t)~mask;  break;
        default:            s_fb[index] ^= mask;            break;
    }
}

void SH1106_Fill(SH1106_Color color)
{
    uint16_t i;

    for (i = 0u; i < (uint16_t)sizeof(s_fb); i++)
    {
        apply_mask(i, 0xFFu, color);
    }
    s_dirty = ALL_PAGES_MASK;
}

void SH1106_Clear(void)
{
    SH1106_Fill(SH1106_BLACK);
}

void SH1106_DrawPixel(int16_t x, int16_t y, SH1106_Color color)
{
    uint8_t page;

    if ((x < 0) || (y < 0) || (x >= SH1106_WIDTH) || (y >= SH1106_HEIGHT))
    {
        return;
    }
    page = (uint8_t)(y >> 3);
    apply_mask((uint16_t)((uint16_t)page * SH1106_WIDTH + (uint16_t)x),
               (uint8_t)(1u << (y & 7)), color);
    s_dirty |= (uint8_t)(1u << page);
}

bool SH1106_GetPixel(int16_t x, int16_t y)
{
    if ((x < 0) || (y < 0) || (x >= SH1106_WIDTH) || (y >= SH1106_HEIGHT))
    {
        return false;
    }
    return (s_fb[(uint16_t)(y >> 3) * SH1106_WIDTH + (uint16_t)x] & (1u << (y & 7))) != 0u;
}

/* Fill the inclusive rectangle x0..x1, y0..y1 (clipped). Works a whole
 * 8-pixel column slice at a time, and touches each pixel exactly once, so
 * SH1106_INVERT behaves correctly. */
static void fill_region(int16_t x0, int16_t y0, int16_t x1, int16_t y1, SH1106_Color color)
{
    uint8_t page, page_first, page_last, top, bottom, mask;
    uint16_t base;
    int16_t x;

    if ((x0 > x1) || (y0 > y1))
    {
        return;
    }
    if ((x1 < 0) || (y1 < 0) || (x0 >= SH1106_WIDTH) || (y0 >= SH1106_HEIGHT))
    {
        return;
    }
    if (x0 < 0)                     { x0 = 0; }
    if (y0 < 0)                     { y0 = 0; }
    if (x1 >= SH1106_WIDTH)         { x1 = SH1106_WIDTH - 1; }
    if (y1 >= SH1106_HEIGHT)        { y1 = SH1106_HEIGHT - 1; }

    page_first = (uint8_t)(y0 >> 3);
    page_last  = (uint8_t)(y1 >> 3);

    for (page = page_first; page <= page_last; page++)
    {
        top    = (page == page_first) ? (uint8_t)(y0 & 7) : 0u;
        bottom = (page == page_last)  ? (uint8_t)(y1 & 7) : 7u;
        mask   = (uint8_t)((0xFFu << top) & (0xFFu >> (7u - bottom)));
        base   = (uint16_t)page * SH1106_WIDTH;

        for (x = x0; x <= x1; x++)
        {
            apply_mask(base + (uint16_t)x, mask, color);
        }
        s_dirty |= (uint8_t)(1u << page);
    }
}

void SH1106_DrawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, SH1106_Color color)
{
    int16_t dx, dy, sx, sy, err, e2;

    if (y0 == y1)                                   /* horizontal: fast path */
    {
        fill_region((x0 < x1) ? x0 : x1, y0, (x0 < x1) ? x1 : x0, y0, color);
        return;
    }
    if (x0 == x1)                                   /* vertical: fast path */
    {
        fill_region(x0, (y0 < y1) ? y0 : y1, x0, (y0 < y1) ? y1 : y0, color);
        return;
    }

    /* Bresenham */
    dx =  iabs16((int16_t)(x1 - x0));
    dy = (int16_t)-iabs16((int16_t)(y1 - y0));
    sx = (x0 < x1) ? 1 : -1;
    sy = (y0 < y1) ? 1 : -1;
    err = (int16_t)(dx + dy);

    for (;;)
    {
        SH1106_DrawPixel(x0, y0, color);
        if ((x0 == x1) && (y0 == y1))
        {
            break;
        }
        e2 = (int16_t)(2 * err);
        if (e2 >= dy)
        {
            err = (int16_t)(err + dy);
            x0  = (int16_t)(x0 + sx);
        }
        if (e2 <= dx)
        {
            err = (int16_t)(err + dx);
            y0  = (int16_t)(y0 + sy);
        }
    }
}

void SH1106_FillRect(int16_t x, int16_t y, int16_t w, int16_t h, SH1106_Color color)
{
    if ((w <= 0) || (h <= 0))
    {
        return;
    }
    fill_region(x, y, (int16_t)(x + w - 1), (int16_t)(y + h - 1), color);
}

void SH1106_DrawRect(int16_t x, int16_t y, int16_t w, int16_t h, SH1106_Color color)
{
    int16_t x1, y1;

    if ((w <= 0) || (h <= 0))
    {
        return;
    }
    x1 = (int16_t)(x + w - 1);
    y1 = (int16_t)(y + h - 1);

    fill_region(x, y,  x1, y,  color);                          /* top    */
    if (h > 1)
    {
        fill_region(x, y1, x1, y1, color);                      /* bottom */
    }
    if (h > 2)
    {
        fill_region(x, (int16_t)(y + 1), x, (int16_t)(y1 - 1), color);       /* left  */
        if (w > 1)
        {
            fill_region(x1, (int16_t)(y + 1), x1, (int16_t)(y1 - 1), color); /* right */
        }
    }
}

/* Plot the (up to) 8 symmetric points of a circle octant step exactly once. */
static void circle_points(int16_t cx, int16_t cy, int16_t x, int16_t y, SH1106_Color color)
{
    SH1106_DrawPixel((int16_t)(cx + x), (int16_t)(cy + y), color);
    if (x != 0)
    {
        SH1106_DrawPixel((int16_t)(cx - x), (int16_t)(cy + y), color);
    }
    if (y != 0)
    {
        SH1106_DrawPixel((int16_t)(cx + x), (int16_t)(cy - y), color);
    }
    if ((x != 0) && (y != 0))
    {
        SH1106_DrawPixel((int16_t)(cx - x), (int16_t)(cy - y), color);
    }
    if (x != y)
    {
        SH1106_DrawPixel((int16_t)(cx + y), (int16_t)(cy + x), color);
        if (y != 0)
        {
            SH1106_DrawPixel((int16_t)(cx - y), (int16_t)(cy + x), color);
        }
        if (x != 0)
        {
            SH1106_DrawPixel((int16_t)(cx + y), (int16_t)(cy - x), color);
        }
        if ((x != 0) && (y != 0))
        {
            SH1106_DrawPixel((int16_t)(cx - y), (int16_t)(cy - x), color);
        }
    }
}

void SH1106_DrawCircle(int16_t cx, int16_t cy, int16_t r, SH1106_Color color)
{
    int16_t x = 0;
    int16_t y = r;
    int16_t d = (int16_t)(1 - r);

    if (r < 0)
    {
        return;
    }
    while (x <= y)                                  /* midpoint circle algorithm */
    {
        circle_points(cx, cy, x, y, color);
        if (d < 0)
        {
            d = (int16_t)(d + 2 * x + 3);
        }
        else
        {
            d = (int16_t)(d + 2 * (x - y) + 5);
            y--;
        }
        x++;
    }
}

void SH1106_FillCircle(int16_t cx, int16_t cy, int16_t r, SH1106_Color color)
{
    int16_t dy, dx;
    int32_t limit;

    if (r < 0)
    {
        return;
    }

    /* One horizontal span per row, each pixel written once (INVERT safe). */
    limit = ((int32_t)r * r) + r;
    dx = r;
    for (dy = 0; dy <= r; dy++)
    {
        while (((int32_t)dx * dx + (int32_t)dy * dy) > limit)
        {
            dx--;
        }
        fill_region((int16_t)(cx - dx), (int16_t)(cy + dy), (int16_t)(cx + dx), (int16_t)(cy + dy), color);
        if (dy != 0)
        {
            fill_region((int16_t)(cx - dx), (int16_t)(cy - dy), (int16_t)(cx + dx), (int16_t)(cy - dy), color);
        }
    }
}

void SH1106_DrawBitmap(int16_t x, int16_t y, const uint8_t *bitmap,
                       int16_t w, int16_t h, SH1106_Color color)
{
    int16_t i, j;
    uint16_t row_bytes;

    if ((bitmap == NULL) || (w <= 0) || (h <= 0))
    {
        return;
    }
    row_bytes = (uint16_t)((w + 7) >> 3);

    for (j = 0; j < h; j++)
    {
        for (i = 0; i < w; i++)
        {
            if ((bitmap[(uint16_t)j * row_bytes + (uint16_t)(i >> 3)] & (uint8_t)(0x80u >> (i & 7))) != 0u)
            {
                SH1106_DrawPixel((int16_t)(x + i), (int16_t)(y + j), color);
            }
        }
    }
}

/* ------------------------------------------------------------------------- */
/*  Text                                                                      */
/* ------------------------------------------------------------------------- */

#define GLYPH_W     5
#define GLYPH_H     7
#define CELL_W      6       /* glyph + 1 px spacing */
#define CELL_H      8       /* glyph + 1 px spacing */

void SH1106_DrawChar(int16_t x, int16_t y, char c, SH1106_Color color, uint8_t scale)
{
    uint8_t col, row, bits;
    const uint8_t *glyph;
    int16_t px, py;
    uint8_t code = (uint8_t)c;

    if (scale == 0u)
    {
        scale = 1u;
    }
    if ((code < SH1106_FONT_FIRST) || (code > SH1106_FONT_LAST))
    {
        code = '?';
    }

    /* cheap reject when the whole cell is off-screen */
    if ((x >= SH1106_WIDTH) || (y >= SH1106_HEIGHT) ||
        ((int16_t)(x + CELL_W * scale) <= 0) || ((int16_t)(y + CELL_H * scale) <= 0))
    {
        return;
    }

    glyph = sh1106_font5x7[code - SH1106_FONT_FIRST];

    for (col = 0u; col < GLYPH_W; col++)
    {
        bits = glyph[col];
        px = (int16_t)(x + (int16_t)col * scale);
        for (row = 0u; row < GLYPH_H; row++)
        {
            if ((bits & (uint8_t)(1u << row)) != 0u)
            {
                py = (int16_t)(y + (int16_t)row * scale);
                fill_region(px, py, (int16_t)(px + scale - 1), (int16_t)(py + scale - 1), color);
            }
        }
    }
}

int16_t SH1106_DrawString(int16_t x, int16_t y, const char *str, SH1106_Color color, uint8_t scale)
{
    int16_t cx = x;

    if (str == NULL)
    {
        return x;
    }
    if (scale == 0u)
    {
        scale = 1u;
    }

    while (*str != '\0')
    {
        if (*str == '\n')
        {
            cx = x;
            y  = (int16_t)(y + CELL_H * scale);
        }
        else
        {
            SH1106_DrawChar(cx, y, *str, color, scale);
            cx = (int16_t)(cx + CELL_W * scale);
        }
        str++;
    }
    return cx;
}

uint16_t SH1106_TextWidth(const char *str, uint8_t scale)
{
    uint16_t line = 0u, widest = 0u;

    if (str == NULL)
    {
        return 0u;
    }
    if (scale == 0u)
    {
        scale = 1u;
    }

    for (; *str != '\0'; str++)
    {
        if (*str == '\n')
        {
            line = 0u;
        }
        else
        {
            line++;
            if (line > widest)
            {
                widest = line;
            }
        }
    }
    /* n characters occupy n cells minus the trailing 1 px gap */
    return (widest == 0u) ? 0u : (uint16_t)(widest * CELL_W * scale - scale);
}
