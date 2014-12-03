//
//  VowelCounting.m
//  VowelCounter
//
//  Created by Bas Broek on 18-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "VowelCounting.h"

@implementation NSString (VowelCounting)

- (int)vowelCount
{
	NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
	
	NSUInteger count = [self length];
	int sum = 0;
	for (int i = 0; i < count; i++)
	{
		unichar c = [self characterAtIndex:i];
		if ([charSet characterIsMember:c])
		{
			sum++;
		}
	}
	return sum;
}

@end
