//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float) costInDollars
{
	return conversionRate * purchaseStockPrice * numberOfShares;
}

- (float) valueInDollars
{
	return conversionRate * currentSharePrice * numberOfShares;
}

@end
