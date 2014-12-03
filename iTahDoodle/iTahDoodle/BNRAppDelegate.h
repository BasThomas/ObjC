//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Bas Broek on 03-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that we will use to get a path
// to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
	UITableView *taskTable;
	UITextField *taskField;
	UIButton *insertButton;
	
	NSMutableArray *tasks;
}

- (void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
