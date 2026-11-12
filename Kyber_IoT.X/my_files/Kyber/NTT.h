#ifndef NTT
#define NTT

#include "ml_kem_const.h"

void NTT_TRA(PolyBlock *InOutPoly);
void NTT_INV(PolyBlock *InOutPoly);
void MultiplyNTT(PolyBlock *NTT_In1, PolyBlock *NTT_In2, PolyBlock *NTT_Out);

#endif

