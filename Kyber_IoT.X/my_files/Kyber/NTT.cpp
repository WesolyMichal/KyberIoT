#include "NTT.h"

void NTT_TRA(PolyBlock& InputPoly, PolyBlock& OutputPoly){
	OutputPoly = InputPoly;
	int32_t t;
	uint16_t i = 1;
	int32_t zeta;
	
	for(uint16_t len = 128; len >= 2; len /= 2){
		for(uint16_t start = 0; start < 256; start = start + 2*len){
			zeta = ZETA_BREV[i];
			i++;
			for(uint16_t j = start; j < start + len; j++){
				t = modQ(static_cast<int64_t>(zeta) * OutputPoly.coeffs[j + len]);
				OutputPoly.coeffs[j + len] = modQ(OutputPoly.coeffs[j] - t);
				OutputPoly.coeffs[j] = modQ(OutputPoly.coeffs[j] + t);
			}
		}
	}
}

void NTT_INV(PolyBlock& InputPoly, PolyBlock& OutputPoly){
	OutputPoly = InputPoly;
	int32_t t;
	uint16_t i = 127;
	int32_t zeta;
	
	for(uint16_t len = 2; len <= 128; len *= 2){
		for(uint16_t start = 0; start < 256; start += 2*len){
			zeta = ZETA_BREV[i];
			i--;
			for(uint16_t j = start; j < start + len; j++){
				t = OutputPoly.coeffs[j];
				OutputPoly.coeffs[j] = modQ( t + OutputPoly.coeffs[j+len] );
				OutputPoly.coeffs[j + len] = modQ( static_cast<int64_t>(zeta) * (OutputPoly.coeffs[j + len] - t) );
			}
		}
	}
	
	for(uint16_t coeff = 0; coeff < 256; coeff++){
		OutputPoly.coeffs[coeff] = modQ(static_cast<int64_t>(OutputPoly.coeffs[coeff]) * 3303);
	}
}

void BaseCaseMultiply(int32_t InA0, 
											int32_t InA1, 
											int32_t InB0, 
											int32_t InB1, 
											int32_t InZeta, 
											int32_t& OutY0, 
											int32_t& OutY1
){
	OutY0 = modQ(static_cast<int64_t>(InA0) * InB0 + static_cast<int64_t>(InA1) * InB1 * InZeta);
	OutY1 = modQ(static_cast<int64_t>(InA0) * InB1 + static_cast<int64_t>(InA1) * InB0);
};

void MultiplyNTT(PolyBlock& NTT_In1, PolyBlock& NTT_In2, PolyBlock& NTT_Out){
	for(uint8_t i = 0; i < 128; i++){
		BaseCaseMultiply(NTT_In1.coeffs[2*i], 
										 NTT_In1.coeffs[2*i + 1], 
										 NTT_In2.coeffs[2*i], 
										 NTT_In2.coeffs[2*i + 1], 
										 ZETA_2BREVP1[i], 
										 NTT_Out.coeffs[2*i], 
										 NTT_Out.coeffs[2*i + 1]);
	}
};
