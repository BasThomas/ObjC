//
//  main.c
//  yostring
//
//  Created by Bas Broek on 18-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#include <stdio.h> // For printf
#include <stdlib.h> // For malloc/free
#include <string.h> // For strlen

int main(int argc, const char * argv[])
{

	char x = '!'; // The character '!'
	
	while (x < '~') // The character '~'
	{
		printf("%x is %c\n", x, x);
		x++;
	}
	
	// Get a pointer to 5 bytes of memory on the heap
	const char *start = "A backslash after two newlines and a tab:\n\n\t\\";
	
	// Print out the string and its length
	printf("%s has %zu characters\n", start, strlen(start));
	
	// Print out the third letter
	printf("The third letter is %c\n", start[2]);
	
    return 0;
}

