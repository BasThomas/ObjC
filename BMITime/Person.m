//
//  Person.m
//  BMITime
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
	float h = [self heightInMeters];
	return [self weightInKilos] / (h * h);
}

@end
