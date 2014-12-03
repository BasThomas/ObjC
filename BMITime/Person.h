//
//  Person.h
//  BMITime
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class Person inherits all the instance variables
// and methods defined by the class NSObject
@interface Person : NSObject
{
	// It has two instance variables
	float heightInMeters;
	int weightInKilos;
}

// You will be able to set those instance veriables using these methods
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;

@end
