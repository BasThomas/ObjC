//
//  Employee.h
//  BMITime
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
	int employeeID;
	NSMutableSet *assets;
}
@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
