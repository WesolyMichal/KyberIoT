#ifndef SHA_3
#define SHA_3

#include <stdint.h>

typedef union {
           //A[y][x]]
    uint64_t A[5][5];
    uint8_t bajt[200];
} Keccak_State;

#endif