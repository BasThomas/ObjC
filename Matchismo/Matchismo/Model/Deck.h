//
//  Deck.h
//  Matchismo
//
//  Created by Bas Broek on 20-08-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
