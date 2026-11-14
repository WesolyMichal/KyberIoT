#ifndef SHA_3
#define SHA_3

#include <stdint.h>

typedef struct {
    uint64_t A[5][5];
} Keccak_State;

#endif