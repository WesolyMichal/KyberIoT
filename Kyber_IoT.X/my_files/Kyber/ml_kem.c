#include "ml_kem.h"

#include "NTT.h"
#include "SHA3.h"
#include "byte_operations.h"

void SampleNTT(SpongeState* ctx, PolyBlock* OutputPoly, uint8_t* input_bytes/*[32]*/){
   SHAKE128_Init(ctx, 168, 0x1F);
   SHAKE128_Absorb(ctx, input_bytes, 34);
   uint16_t j = 0;
   uint16_t d1, d2;
   uint8_t C[3];
   while(j<256){
       SHAKE128_Squeeze(ctx, C, 3);
       d1 = C[0] + 256*(C[1] & (16-1));
       d2 = (C[1]>>4) + 16*C[2];
       if(d1<KyberQ){
           OutputPoly->coeffs[j] = d1;
           j++;
       }
       if((d2<KyberQ) && (j<256)){
           OutputPoly->coeffs[j] = d2;
           j++;
       }
   }
}

void KPKE_KeyGen(SpongeState* ctx, 
                 uint8_t* WorkingBytes /*[64*3] - KyberEta1*/, 
                 PolyBlock* Polynomials, 
                 uint8_t* randomness, 
                 uint8_t* enc_key_out/*[384*2+32]*/, 
                 uint8_t* dec_key_out/*[384*2]*/
                ){
    uint8_t rho_ij[34];
    uint8_t sigma[32];
    
    uint8_t k = KyberK;
    uint8_t eta = KyberEta1
    uint8_t N = 0;
    
    PolyBlock* WorkingPoly1 = &Polynomials[0];
    PolyBlock* WorkingPoly2 = &Polynomials[1]; 
    PolyBlock* s = &Polynomials[2];
    PolyBlock* e_t = &Polynomials[k+2];
    
    //Hashowanie G
    SHAKE128_Init(ctx, 72, 0x06);
    SHAKE128_Absorb(ctx, randomness, 32);
    SHAKE128_Absorb(ctx, &k, 1);
    SHAKE128_PadAbsorb(ctx);
    SHAKE128_Squeeze(ctx, rho_ij, 32);
    SHAKE128_Squeeze(ctx, sigma, 32);
    
    for(uint8_t i = 0; i<k; i++){
        PRF_ETA(ctx, WorkingBytes, eta, sigma, N);
        SamplePolyCBD(&s[i], WorkingBytes, 64*3, eta);
        
        N++;
    }
    
    for(uint8_t i = 0; i<k; i++){
        PRF_ETA(ctx, WorkingBytes, eta, sigma, N);
        SamplePolyCBD(&e_t[i], WorkingBytes, 64*3, eta);
        NTT_TRA(&e_t[i]);
        N++;
    }
    
    for(uint8_t i = 0; i<k; i++){
        for(uint8_t j = 0; j<k; j++){
            rho_ij[32] = i;
            rho_ij[33] = j;
            SampleNTT(ctx, WorkingPoly1, rho_ij);
            //Only for k = 2
            MultiplyNTT(WorkingPoly1, &s[i], WorkingPoly2);
            AddNTT(&e_t[j], WorkingPoly2, &e_t[j]);
        }
    }
    
    for(uint8_t i = 0; i<k; i++){
        ByteEncode(&e_t[i], &enc_key_out[384*i], 384, 12);
        ByteEncode(&s[i], &dec_key_out[384*i], 384, 12);
    }
    
    for(uint8_t i = 0; i<32; i++){
        enc_key_out[384*k+i] = rho_ij[i];
    }
}


