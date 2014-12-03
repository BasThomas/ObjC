//
//  StockHolding.m
//  Stocks
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseStockPrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
	return purchaseStockPrice * numberOfShares;
}

- (float)valueInDollars
{
	return currentSharePrice * numberOfShares;
}

@end
