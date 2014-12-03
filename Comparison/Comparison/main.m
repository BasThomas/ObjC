//
//  main.m
//  Comparison
//
//  Created by Bas Broek on 31-07-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for(NSString *n in names)
        {
            // ... while comparing it with words
            for(NSString *w in words)
            {
                // Was it found?
				
				///////////////////////////////////////////////////
				// Uppercase comparisons should be left out here //
				///////////////////////////////////////////////////
				
				if([n caseInsensitiveCompare:w] == NSOrderedSame)
				{
					NSLog(@"%@ and %@", n, w);
				}
            }
        }
        
    }
    return 0;
}

