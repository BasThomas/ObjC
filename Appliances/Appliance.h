//
//  Appliance.h
//  Appliances
//
//  Created by Bas Broek on 16-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
	NSString *productName;
	int voltage;
}

// @property (copy, nonatomic) NSString *productName;
@property (nonatomic) int voltage;

// The designated initializer
- (id)initWithProductName:(NSString *)pn;

@end
