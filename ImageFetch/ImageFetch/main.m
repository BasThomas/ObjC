//
//  main.m
//  ImageFetch
//
//  Created by Bas Broek on 01-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
		NSURLRequest *request = [NSURLRequest requestWithURL:url];
		NSError *error = nil;
		NSData *data = [NSURLConnection sendSynchronousRequest:request
											 returningResponse:NULL
														 error:&error];
		if(!data)
		{
			NSLog(@"fetch failed: %@", [error localizedDescription]);
			return 1;
		}
		
		NSLog(@"The file is %lu bytes", [data length]);
		
		BOOL written = [data writeToFile:@"/tmp/google.png"
								 options:NSDataWritingAtomic
								   error:&error];
		if(!written)
		{
			NSLog(@"write failed: %@", [error localizedDescription]);
		}
		
		NSLog(@"Sucess!");
		
		NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
		NSLog(@"The file read from the disk has %lu bytes", [readData length]);
	    
	}
    return 0;
}

