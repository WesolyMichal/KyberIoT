#include "NTT.h"

void NTT_TRA(PolyBlock *InOutPoly){
	int32_t t;
	uint16_t i = 1;
	int32_t zeta;
	
	for(uint16_t len = 128; len >= 2; len /= 2){
		for(uint16_t start = 0; start < 256; start = start + 2*len){
			zeta = ZETA_BREV[i];
			i++;
			for(uint16_t j = start; j < start + len; j++){
				t = modQ((int32_t)(zeta) * InOutPoly->coeffs[j + len]);
                int32_t u = InOutPoly->coeffs[j];
				InOutPoly->coeffs[j + len] = modQ(u - t + KyberQ);
				InOutPoly->coeffs[j] = modQ(u + t);
			}
		}
	}
}

void NTT_INV(PolyBlock *InOutPoly){
	int32_t t;
	uint16_t i = 127;
	int32_t zeta;
	
	for(uint16_t len = 2; len <= 128; len *= 2){
		for(uint16_t start = 0; start < 256; start += 2*len){
			zeta = ZETA_BREV[i];
			i--;
			for(uint16_t j = start; j < start + len; j++){
				t = InOutPoly->coeffs[j];
				InOutPoly->coeffs[j] = modQ( t + InOutPoly->coeffs[j+len] );
                
                int32_t diff = InOutPoly->coeffs[j + len] - t;
				InOutPoly->coeffs[j + len] = modQ((int32_t)(zeta) * diff );
			}
		}
	}
	
	for(uint16_t coeff = 0; coeff < 256; coeff++){
		InOutPoly->coeffs[coeff] = modQ((int32_t)(InOutPoly->coeffs[coeff]) * 3303);
	}
}

void BaseCaseMultiply(int32_t InA0, 
											int32_t InA1, 
											int32_t InB0, 
											int32_t InB1, 
											int32_t InZeta, 
											int16_t *OutY0, 
											int16_t *OutY1
){
    int32_t ab0 = modQ(InA0 * InB0);
    int32_t ab1 = modQ(InA1 * InB1);
    int32_t a0b1 = modQ(InA0 * InB1);
    int32_t a1b0 = modQ(InA1 * InB0);
    
    int32_t zeta_ab1 = modQ(ab1 * InZeta);
    
	*OutY0 = modQ(ab0 + zeta_ab1);
	*OutY1 = modQ(a0b1 + a1b0);
};

void MultiplyNTT(PolyBlock *NTT_In1, PolyBlock *NTT_In2, PolyBlock *NTT_Out){
	for(uint8_t i = 0; i < 128; i++){
		BaseCaseMultiply(NTT_In1->coeffs[2*i], 
										 NTT_In1->coeffs[2*i + 1], 
										 NTT_In2->coeffs[2*i], 
										 NTT_In2->coeffs[2*i + 1], 
										 ZETA_2BREVP1[i], 
										 &NTT_Out->coeffs[2*i], 
										 &NTT_Out->coeffs[2*i + 1]);
	}
};
