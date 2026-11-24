#ifndef SHA_3
#define SHA_3

#include <stdint.h>

typedef union {
           //A[y][x]]
    uint64_t A[5][5];
    uint8_t bajt[200];
} Keccak_State;


typedef struct{
    Keccak_State State;
    uint8_t rate;
    uint8_t offset;
    uint8_t domain_sep;
} SpongeState;

void SHAKE128_Init(SpongeState* ctx, uint8_t rate, uint8_t domain_sep);
void SHAKE128_Absorb(SpongeState* ctx, const uint8_t* input_data, uint16_t len);
void SHAKE128_PadAbsorb(SpongeState* ctx);
void SHAKE128_Squeeze(SpongeState* ctx, uint8_t* output_bytes, uint16_t output_len);

void Kyber_H(SpongeState* ctx, uint8_t output_bytes[32], uint8_t* input_bytes, uint16_t input_len);
void Kyber_G(SpongeState* ctx, uint8_t output_bytes[64], uint8_t* input_bytes, uint16_t input_len);
void Kyber_J(SpongeState* ctx, uint8_t output_bytes[64], uint8_t* input_bytes, uint16_t input_len);

void Kyber_PRF(SpongeState* ctx, uint8_t* output_bytes, uint8_t output_len, const uint8_t s[32], uint8_t b);
void PRF_ETA(SpongeState* ctx, uint8_t* output_bytes, uint8_t eta, const uint8_t s[32], uint8_t b);

#endif