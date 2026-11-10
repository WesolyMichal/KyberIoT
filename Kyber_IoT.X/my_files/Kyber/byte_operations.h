#ifndef BYTE_OPERATIONS
#define BYTE_OPERATIONS

#include "ml_kem_const.h"
#include <cstdint>

using namespace ml_kem_const;

template <uint32_t ByteCount>
class ByteOperations {
public:
    static const uint32_t BitCount = ByteCount * 8;
    static const uint32_t WordCount = (BitCount + 31) / 32;

    uint32_t InOutBitsWords[WordCount];
    uint8_t InOutBytes[ByteCount];

    void SetBit(uint32_t index, bool value) {
        if (index >= BitCount) return;
        uint32_t wordIdx = index / 32;
        uint32_t bitIdx = index % 32;
        if (value) {
            InOutBitsWords[wordIdx] |= (1UL << bitIdx);
        } else {
            InOutBitsWords[wordIdx] &= ~(1UL << bitIdx);
        }
    }

    bool GetBit(uint32_t index){
        if (index >= BitCount) return false;
        uint32_t wordIdx = index / 32;
        uint32_t bitIdx = index % 32;
        return (InOutBitsWords[wordIdx] & (1UL << bitIdx)) != 0;
    }

    void ResetBits() {
        for (uint32_t i = 0; i < WordCount; i++) {
            InOutBitsWords[i] = 0;
        }
    }

    void SetBytes(const uint8_t* source) {
        for (uint32_t i = 0; i < ByteCount; i++) {
            InOutBytes[i] = source[i];
        }
    }

    void GetBytes(uint8_t* destination){
        for (uint32_t i = 0; i < ByteCount; i++){
            destination[i] = InOutBytes[i];
        }
    }

    void B2b(void) {
        ResetBits();
        for(uint32_t i = 0; i < ByteCount; i++){
            uint8_t workingByte = InOutBytes[i];
            for(uint8_t j = 0; j < 8; j++){
                SetBit(i * 8 + j, (workingByte & 1));
                workingByte >>= 1;
            }
        }
    }

    void b2B(void) {
        for(uint32_t i = 0; i < ByteCount; i++){
            uint8_t workingByte = 0;
            for(uint8_t j = 0; j < 8; j++){
                if (GetBit(i * 8 + j)) {
                    workingByte |= (1 << j);
                }
            }
            InOutBytes[i] = workingByte;
        }
    }
    
    uint8_t ByteEncode(PolyBlock& InputPoly, uint32_t dBits){
        uint8_t fError;
        ResetBits();
        
        if((dBits <= 12) && (ByteCount * 8 == dBits * 256)){
            for(uint16_t i = 0; i < 256; i++){
                int32_t WorkingCoeff = InputPoly.coeffs[i];
                for(uint32_t j = 0; j < dBits; j++){
                    SetBit(i * dBits + j, WorkingCoeff % 2);
                    WorkingCoeff = (WorkingCoeff - (GetBit(i * dBits + j) ? 1 : 0)) / 2;
                }   
            }
            fError = 0;
        } else {
            fError = 1;
        }
        b2B(); 
        return fError;
    }
    
    uint8_t ByteDecode(PolyBlock& OutputPoly, uint32_t dBits){
        uint8_t fError;
        int32_t modulo;
        B2b(); 
        
        if((dBits <= 12) && (ByteCount * 8 == dBits * 256)){
            modulo = (dBits == 12) ? 3329 : (1 << dBits);
            for(uint16_t i = 0; i < 256; i++){
                int64_t WorkingCoeff = 0; 
                for(uint32_t j = 0; j < dBits; j++){
                    WorkingCoeff += (GetBit(i * dBits + j) ? 1 : 0) * static_cast<int64_t>(1 << j);
                }
                OutputPoly.coeffs[i] = WorkingCoeff % modulo;
            }
            fError = 0;
        } else {
            fError = 1;
        }
        return fError;
    }
		
		uint8_t SamplePolyCBD(PolyBlock& OutputPoly, uint32_t InputEta){
			uint8_t fError;
			int32_t x, y;
			if(ByteCount == 64 * InputEta){
				B2b();
				for(uint16_t i = 0; i < 256; i++){
					for(uint16_t j = 0; j < 256; j++){
						x += GetBit(2*i*InputEta + j);
						y += GetBit(2*i*InputEta + InputEta + j);
					}
					OutputPoly.coeffs[i] = modQ(x-y);
				}
				fError = 0;
			} else {
				fError = 1;
			}
			return fError;
		}
};

#endif
