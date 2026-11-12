#include "tests.h"
#include "byte_operations.h"
#include "NTT.h"

uint8_t Test_ByteEncDec(void){
    PolyBlock InOutPoly;
    uint32_t ByteCount = 384;
    uint8_t InOutBytes[ByteCount];
    
    for(uint16_t i = 0; i < 256; i++)
        InOutPoly.coeffs[i] = i;
    
    ByteEncode(&InOutPoly, InOutBytes, ByteCount, 12);
    ByteDecode(&InOutPoly, InOutBytes, ByteCount, 12);
    
    for(uint16_t i = 0; i < 256; i++)
        if(InOutPoly.coeffs[i] != i)
            return 1;
    return 0;
}

uint8_t Test_PolyInv(void){
    PolyBlock InOutPoly;
    
    for(uint16_t i = 0; i < 256; i++)
        InOutPoly.coeffs[i] = i;
    
    NTT_TRA(&InOutPoly);
    NTT_INV(&InOutPoly);
    
    for(uint16_t i = 0; i < 256; i++)
        if(InOutPoly.coeffs[i] != i)
            return 1;
    return 0;
}
