//
//  main.m
//  VowelCounter
//
//  Created by Bas Broek on 18-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VowelCounting.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		NSString *string = @"Hello, World!";
	    NSLog(@"%@ has %d vowels", string, [string vowelCount]);
	    
	}
    return 0;
}

