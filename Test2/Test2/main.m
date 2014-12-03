//
//  main.m
//  Test2
//
//  Created by Bas Broek on 05-09-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
		NSString *testString = @"Test";
		NSUInteger testInt = 1;
		
		NSLog(@"%@, %lu", testString, (unsigned long)testInt);
	    
	}
    return 0;
}

