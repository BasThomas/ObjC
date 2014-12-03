//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Bas Broek on 04-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
	NSMutableArray *todoItems;
	IBOutlet NSTableView *itemTableView;
}
- (IBAction)createNewItem:(id)sender;

@end
