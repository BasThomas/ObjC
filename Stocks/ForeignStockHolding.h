//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
	float conversionRate;
}
@property float conversionRate;

@end
