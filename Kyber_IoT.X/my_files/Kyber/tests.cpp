#include "tests.h"
#include "byte_operations.h"

int conversion_test(void){
	static ByteOperations<256> converter;
	uint8_t ByteArray[256];
	
	for(uint16_t i = 0; i < 256; i++)
		ByteArray[i] = i;
	
	converter.SetBytes(ByteArray);
	converter.B2b();
	converter.b2B();
	
	for(uint16_t i = 0; i < 256; i++)
		if(converter.InOutBytes[i] != ByteArray[i]) return 1;
	
	return 0;
}
