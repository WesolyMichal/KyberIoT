#include "byte_operations.h"
#include "ml_kem_const.h"

//static const uint32_t BitCount = ByteCount * 8;
//static const uint32_t WordCount = (BitCount + 31) / 32;
//
//uint32_t InOutBitsWords[WordCount];
//uint8_t InOutBytes[ByteCount];

void SetBit(uint32_t *InOutBitsWords, uint32_t BitCount, uint32_t index, uint8_t value) {
    if (index >= BitCount) return;
    uint32_t wordIdx = index / 32;
    uint32_t bitIdx = index % 32;
    if (value) {
        InOutBitsWords[wordIdx] |= (1UL << bitIdx);
    } else {
        InOutBitsWords[wordIdx] &= ~(1UL << bitIdx);
    }
}

uint8_t GetBit(uint32_t *InOutBitsWords, uint32_t BitCount, uint32_t index){
    if (index >= BitCount) return 0;
    uint32_t wordIdx = index / 32;
    uint32_t bitIdx = index % 32;
    return (InOutBitsWords[wordIdx] & (1UL << bitIdx)) != 0;
}

void ResetBits(uint32_t *InOutBitsWords, uint32_t BitCount) {
    uint32_t WordCount = (BitCount + 31) / 32;
    
    for (uint32_t i = 0; i < WordCount; i++) {
        InOutBitsWords[i] = 0;
    }
}

void SetBytes(uint8_t *InOutBytes, uint32_t ByteCount, const uint8_t* source) {
    for (uint32_t i = 0; i < ByteCount; i++) {
        InOutBytes[i] = source[i];
    }
}

void GetBytes(uint8_t *InOutBytes, uint32_t ByteCount, uint8_t* destination){
    for (uint32_t i = 0; i < ByteCount; i++){
        destination[i] = InOutBytes[i];
    }
}

void B2b(uint32_t *OutputBitsWords, uint32_t BitCount, uint8_t *InputBytes, uint32_t ByteCount) {
    ResetBits(OutputBitsWords, BitCount);
    for(uint32_t i = 0; i < ByteCount; i++){
        uint8_t workingByte = InputBytes[i];
        for(uint8_t j = 0; j < 8; j++){
            SetBit(OutputBitsWords, BitCount, (i * 8 + j), (workingByte & 1));
            workingByte >>= 1;
        }
    }
}

void b2B(uint32_t *InputBitsWords, uint32_t BitCount, uint8_t *OutputBytes, uint32_t ByteCount) {
    for(uint32_t i = 0; i < ByteCount; i++){
        uint8_t workingByte = 0;
        for(uint8_t j = 0; j < 8; j++){
            if (GetBit(InputBitsWords, BitCount, (i * 8 + j))) {
                workingByte |= (1 << j);
            }
        }
        OutputBytes[i] = workingByte;
    }
}

uint8_t ByteEncode(PolyBlock *InputPoly, uint8_t *OutputBytes, uint32_t ByteCount, uint32_t dBits){
    
    uint8_t fError;
    uint32_t BitCount = ByteCount * 8;
    uint32_t WordCount = (BitCount + 31) / 32;
    
    uint32_t WorkingBitsWords[WordCount];
    ResetBits(WorkingBitsWords, BitCount);

    if((dBits <= 12) && (ByteCount * 8 == dBits * 256)){
        for(uint16_t i = 0; i < 256; i++){
            int32_t WorkingCoeff = InputPoly->coeffs[i];
            for(uint32_t j = 0; j < dBits; j++){
                SetBit(WorkingBitsWords, BitCount, (i * dBits + j) , WorkingCoeff % 2);
                WorkingCoeff = (WorkingCoeff - (GetBit(WorkingBitsWords, BitCount, (i * dBits + j)) ? 1 : 0) ) / 2;
            }   
        }
        fError = 0;
    } else {
        fError = 1;
    }
    b2B(WorkingBitsWords, BitCount, OutputBytes, ByteCount); 
    return fError;
}

uint8_t ByteDecode(PolyBlock *OutputPoly, uint8_t *InputBytes, uint32_t ByteCount, uint32_t dBits){
    
    uint8_t fError;
    int32_t modulo;
    
    uint32_t BitCount = ByteCount * 8;
    uint32_t WordCount = (BitCount + 31) / 32;
    
    uint32_t WorkingBitsWords[WordCount];
    
    B2b(WorkingBitsWords, BitCount, InputBytes, ByteCount); 

    if((dBits <= 12) && (ByteCount * 8 == dBits * 256)){
        modulo = (dBits == 12) ? 3329 : (1 << dBits);
        for(uint16_t i = 0; i < 256; i++){
            int64_t WorkingCoeff = 0; 
            for(uint32_t j = 0; j < dBits; j++){
                WorkingCoeff += (GetBit(WorkingBitsWords, BitCount, (i * dBits + j)) ? 1 : 0) * (int64_t)(1 << j);
            }
            OutputPoly->coeffs[i] = WorkingCoeff % modulo;
        }
        fError = 0;
    } else {
        fError = 1;
    }
    return fError;
}

uint8_t SamplePolyCBD(PolyBlock *OutputPoly, uint8_t *InputBytes, uint32_t ByteCount, uint32_t InputEta){
    uint8_t fError;
    
    uint32_t BitCount = ByteCount * 8;
    uint32_t WordCount = (BitCount + 31) / 32;
    
    uint32_t WorkingBitsWords[WordCount];
    
    int32_t x, y;
    if(ByteCount == 64 * InputEta){
        B2b(WorkingBitsWords, BitCount, InputBytes, ByteCount);
        for(uint16_t i = 0; i < 256; i++){
            for(uint16_t j = 0; j < 256; j++){
                x += GetBit(WorkingBitsWords, BitCount, (2*i*InputEta + j));
                y += GetBit(WorkingBitsWords, BitCount, (2*i*InputEta + InputEta + j));
            }
            OutputPoly->coeffs[i] = modQ(x-y);
        }
        fError = 0;
    } else {
        fError = 1;
    }
    return fError;
}

