//
//  StockHolding.h
//  Stocks
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
	float purchaseStockPrice;
	float currentSharePrice;
	int numberOfShares;
}

@property float purchaseStockPrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares


@end
