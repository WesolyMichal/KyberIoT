#ifndef BYTE_OPERATIONS
#define BYTE_OPERATIONS

#include "ml_kem_const.h"

uint8_t ByteEncode(PolyBlock *InputPoly, uint8_t *OutputBytes, uint32_t ByteCount, uint32_t dBits);
uint8_t ByteDecode(PolyBlock *OutputPoly, uint8_t *InputBytes, uint32_t ByteCount, uint32_t dBits);
uint8_t SamplePolyCBD(PolyBlock *OutputPoly, uint8_t *InputBytes, uint32_t ByteCount, uint32_t InputEta);

#endif
