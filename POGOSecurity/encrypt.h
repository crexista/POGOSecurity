#ifndef encrypt
#define encrypt

#include <stdio.h>
#include <stdint.h>
#include <string.h>

extern unsigned char* encryptUnknown6(const unsigned char *input, size_t input_size, const unsigned char* iv, size_t iv_size, unsigned char* output, size_t * output_size);

#endif
