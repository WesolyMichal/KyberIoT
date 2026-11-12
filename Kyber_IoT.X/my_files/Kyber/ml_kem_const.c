#include "ml_kem_const.h"

inline int32_t modQ(int32_t a){
//    int32_t amodq = a % KyberQ;
//    amodq += (a < 0) ? KyberQ : 0;
//    return amodq;
    const int32_t v = 20159;
    
    int32_t t = ((int64_t)v * a + (1 << 25) ) >> 26;
    
    t *= KyberQ;
    return a-t;
};
