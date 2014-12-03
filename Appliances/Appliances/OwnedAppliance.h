//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Bas Broek on 16-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
	NSMutableSet *ownerNames;
}
// The designated initializer
- (id)initWithProductName:(NSString *)pn
		   firstOwnerName:(NSString *)n;
- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesObject:(NSString *)n;

@end
