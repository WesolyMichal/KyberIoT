#include "ml_kem_const.h"
	
int32_t ml_kem_const::modQ(int64_t InputCoeff){
	int64_t CoeffMods = InputCoeff % KyberQ;
	
	if(CoeffMods < 0)
		return CoeffMods + KyberQ;
	else
		return CoeffMods;
}
