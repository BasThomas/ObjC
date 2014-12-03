//
//  Logger.m
//  Callbacks
//
//  Created by Bas Broek on 01-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t
{
	NSLog(@"Ouch!");
}

// Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection
	didReceiveData:(NSData *)data
{
	NSLog(@"received %lu bytes", [data length]);
	
	// Create a mutable data if it doesn't already exist
	if(!incomingData)
	{
		incomingData = [[NSMutableData alloc]init];
	}
	[incomingData appendData:data];
}

// Call when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	NSLog(@"Got it all!");
	
	NSString *string = [[NSString alloc]initWithData:incomingData
											encoding:NSUTF8StringEncoding];
	incomingData = nil;
	NSLog(@"string has %lu characters", [string length]);
	
	// Uncomment the next line to see the entire fetched line
	// NSLog(@"The whole string is %@", string);
}

// Called if the fetch fails
- (void)connection:(NSURLConnection *)connection
	didFailWithError:(NSError *)error
{
	NSLog(@"connection failed: %@", [error localizedDescription]);
	incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
	NSLog(@"The system time zone has changed!");
}

@end
