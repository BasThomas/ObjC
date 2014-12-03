//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Bas Broek on 20-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount
{
	_flipCount = flipCount;
	self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
	sender.selected = !sender.isSelected;
	self.flipCount++;
}


@end
