//
//  main.c
//  bitwize
//
//  Created by Bas Broek on 18-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

	unsigned char a = 0x3c;
	unsigned char b = 0xa9;
	unsigned char c = a | b;
	
	printf("Hex: %x | %x = %x\n", a, b, c);
	printf("Decimal: %d | %d = %d\n", a, b, c);
	
	unsigned char d = a & b;
	
	printf("Hex: %x & %x = %x\n", a, b, d);
	printf("Decimal: %d & %d = %d\n", a, b, d);
	
	unsigned char e = a ^ b;
	
	printf("Hex: %x ^ %x = %x\n", a, b, e);
	printf("Decimal: %d ^ %d = %d\n", a, b, e);
	
	unsigned char f = ~b;
	
	printf("Hex: The complement of %x = %x\n", b, f);
	printf("Decimal: The complement of %d = %d\n", b, f);
	
	unsigned char g = a << 2;
	
	printf("Hex: %x shifted left two places is %x\n", a, g);
	printf("Decimal: %d shifted left two places is %d\n", a, g);
	
    return 0;
}

