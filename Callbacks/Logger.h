//
//  Logger.h
//  Callbacks
//
//  Created by Bas Broek on 01-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
	NSMutableData *incomingData;
}

- (void)sayOuch:(NSTimer *)t;

@end
