//
//  Appliance.m
//  Appliances
//
//  Created by Bas Broek on 16-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize voltage;

- (void)setVoltage:(int)x
{
	NSLog(@"setting voltage to %d", x);
	voltage = x;
}

- (id)init
{
	return [self initWithProductName:@"Unknown"];
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

- (id)initWithProductName:(NSString *)pn
{
	// Call the NSObject's init method
	self = [super init];
	
	// Did it return something non-nil?
	if(self)
	{
		// Set the product name
		productName = [pn copy];
		
		// Give voltage a starting value
		[self setVoltage:120];
	}
	return self;
}

@end
