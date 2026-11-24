#include "ml_kem.h"

#include "NTT.h"
#include "SHA3.h"

void KPKE_KeyGen(SpongeState* ctx, PolyBlock* Polynomials, uint8_t* randomness, uint8_t* enc_key_out, uint8_t* dec_key_out){
    uint8_t seed[32];
    uint8_t sigma;
    
    
}
