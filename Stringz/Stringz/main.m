//
//  main.m
//  Stringz
//
//  Created by Bas Broek on 01-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    NSMutableString *str = [[NSMutableString alloc]init];
		for(int i = 0; i < 10; i++)
		{
			[str appendString:@"Aaron is cool!\n"];
		}
		[str writeToFile:@"/tmp/cool.txt"
			  atomically:YES
				encoding:NSUTF8StringEncoding
				   error:NULL];
		
		// Decalre a apointer to an NSError object, but don't instantiate it.
		// The NSError instance will only be created if there is, in fact, an error.
		NSError *error = nil;
		
		// Pass the NSError pointer by reference to the NSString method
		BOOL success = [str writeToFile:@"/too/darned/bad.txt"
							 atomically:YES
							   encoding:NSUTF8StringEncoding
								  error:&error];
		
		// Test the returned BOOL, and query the NSError if the write failed
		if(success)
		{
			NSLog(@"done writing /tmp/cool.txt");
		}
		else
		{
			NSLog(@"writing /tmp/cool.tt failed: %@", [error localizedDescription]);
		}
	   
	}
    return 0;
}

