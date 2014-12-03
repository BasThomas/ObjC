//
//  Asset.h
//  BMITime
//
//  Created by Bas Broek on 01-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
	NSString *label;
	__weak Employee *holder;
	unsigned int resaleValue;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end
