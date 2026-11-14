#include "tests.h"
#include "byte_operations.h"
#include "NTT.h"
#include <string.h>

uint8_t Test_ByteEncDec(char* result){
    PolyBlock InOutPoly;
    uint32_t ByteCount = 384;
    uint8_t InOutBytes[ByteCount];
    
    for(uint16_t i = 0; i < 256; i++)
        InOutPoly.coeffs[i] = i;
    
    ByteEncode(&InOutPoly, InOutBytes, ByteCount, 12);
    ByteDecode(&InOutPoly, InOutBytes, ByteCount, 12);
    
    for(uint16_t i = 0; i < 256; i++){
        if(InOutPoly.coeffs[i] != i){
            strcpy(result, "ByteEncDec Failed");
            return 1;
        }
    }
    
    strcpy(result, "ByteEncDec Succeeded");
    return 0;
}

uint8_t Test_PolyInv(char* result){
    PolyBlock InOutPoly;
    
    for(uint16_t i = 0; i < 256; i++)
        InOutPoly.coeffs[i] = i;
    
    NTT_TRA(&InOutPoly);
    NTT_INV(&InOutPoly);
    
    for(uint16_t i = 0; i < 256; i++){
        if(InOutPoly.coeffs[i] != i){
            return 1;
            strcpy(result, "PolyInv Failed");
        }
    }
    
    strcpy(result, "PolyInv Succeeded");
    return 0;
}

uint8_t Test_SimplePolyMul(uint8_t power, char* result){
    PolyBlock InOutPoly_1;
    PolyBlock InOutPoly_2;
    PolyBlock InOutPoly_3;
    
    for(uint16_t i = 0; i < 256; i++){
        InOutPoly_1.coeffs[i] = 0;
        InOutPoly_2.coeffs[i] = 0;
        InOutPoly_3.coeffs[i] = 0;
    }
    
    InOutPoly_1.coeffs[0] = 1;
    InOutPoly_1.coeffs[1] = 1;
    InOutPoly_2.coeffs[0] = 1;
    InOutPoly_2.coeffs[1] = 1;
    
    NTT_TRA(&InOutPoly_1);
    NTT_TRA(&InOutPoly_2);
    
    for(uint16_t cur_pow = 0; cur_pow < power - 1; cur_pow++){
        MultiplyNTT(&InOutPoly_1, &InOutPoly_2, &InOutPoly_3);
        InOutPoly_2 = InOutPoly_3;
    }
    
    NTT_INV(&InOutPoly_3);
    
    if ((InOutPoly_3.coeffs[1] == power) 
      &&(InOutPoly_3.coeffs[power-1] == power)
       ){
        strcpy(result, "PolyMul Succeeded");
        return 0;
    } else {
        strcpy(result, "PolyMul Failed");
        return 1;
    }
}
