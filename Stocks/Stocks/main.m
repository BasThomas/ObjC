//
//  main.m
//  Stocks
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		
		StockHolding *stockHoldingOne = [[StockHolding alloc]init];
		StockHolding *stockHoldingTwo = [[StockHolding alloc]init];
		StockHolding *stockHoldingThree = [[StockHolding alloc]init];
		
		ForeignStockHolding *foreignStockHoldingOne = [[ForeignStockHolding alloc]init];
	    
	    [stockHoldingOne setPurchaseStockPrice:2.30];
		[stockHoldingOne setCurrentSharePrice:4.50];
		[stockHoldingOne setNumberOfShares:40];
		
		[stockHoldingTwo setPurchaseStockPrice:12.19];
		[stockHoldingTwo setCurrentSharePrice:10.56];
		[stockHoldingTwo setNumberOfShares:90];
		
		[stockHoldingThree setPurchaseStockPrice:45.10];
		[stockHoldingThree setCurrentSharePrice:49.51];
		[stockHoldingThree setNumberOfShares:210];
		
		[foreignStockHoldingOne setPurchaseStockPrice:2.30];
		[foreignStockHoldingOne setCurrentSharePrice:4.50];
		[foreignStockHoldingOne setNumberOfShares:40];
		[foreignStockHoldingOne setConversionRate:0.94];
		
		NSMutableArray *array = [NSMutableArray array];
		
		[array addObject:stockHoldingOne];
		[array addObject:stockHoldingTwo];
		[array addObject:stockHoldingThree];
		
		[array addObject:foreignStockHoldingOne];
		
		for(StockHolding *d in array)
		{
			NSLog(@"The stock cost $%.2f when bought and is now worth $%.2f", [d costInDollars], [d valueInDollars]);
		}
	    
	}
    return 0;
}

