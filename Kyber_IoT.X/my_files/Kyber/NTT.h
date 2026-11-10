#ifndef NTT
#define NTT

#include "ml_kem_const.h"

using namespace ml_kem_const;

void NTT_TRA(PolyBlock& PolyIn, PolyBlock& PolyOut);
void NTT_INV(PolyBlock& PolyIn, PolyBlock& PolyOut);
void MultiplyNTT(PolyBlock& NTT_In1, PolyBlock& NTT_In2, PolyBlock& NTT_Out);

#endif

