//
//  LargestSquareFinder.m
//  LargestSquareOf1s
//
//  Created by Ashley Barrett on 06/04/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import "LargestSquareFinder.h"

@implementation LargestSquareFinder

- (NSInteger) findLargestSquare:(NSArray*)matrix
{
    NSInteger largestSquare = 0;
    
    if(matrix != nil && matrix.count > 0)
    {
        NSInteger size = matrix.count;
        
        for (NSInteger rowNumber = 0; rowNumber < size; rowNumber++)
        {
            NSArray *row = matrix[rowNumber];
            
            for (NSInteger itemNumber = 0; itemNumber < size; itemNumber++)
            {
                NSInteger run = 0;

                for (NSInteger i = itemNumber; i < size; i++)
                {
                    if([row[i] intValue] ==  1)
                    {
                        run++;

                        if(largestSquare == 0)
                        {
                            largestSquare = 1;
                        }
                    }
                    else
                    {
                        break;
                    }
                }
                
                if(run > 0)
                {
                    NSInteger nextRowNumber = rowNumber;
                    bool nextRowMatch = true;
                    NSInteger numberOfRowsMatched = 1;
                    
                    while(nextRowMatch)
                    {
                        nextRowNumber++;
                        
                        if(nextRowNumber < size)
                        {
                            NSArray *nextRow = matrix[nextRowNumber];
                            NSArray *trimmedNextRow = [self trimRow:nextRow start:itemNumber width:run];
                            nextRowMatch = [self isNextRowMatch:trimmedNextRow];
                            
                            if(nextRowMatch)
                            {
                                numberOfRowsMatched++;
                            }
                            
                            if(numberOfRowsMatched > run)
                            {
                                nextRowMatch = false;
                            }
                            else if((numberOfRowsMatched == run) && run > largestSquare)
                            {
                                largestSquare = run;
                            }
                        }
                        else
                        {
                            nextRowMatch = false;
                        }
                    }
                }
            }
        }
    }
    
    return largestSquare;
}

- (NSArray*) trimRow:(NSArray*)row start:(NSInteger)start width:(NSInteger)width
{
    return [row subarrayWithRange:NSMakeRange(start, width)];
}

- (bool) isNextRowMatch:(NSArray*)row
{
    for (NSNumber *item in row) {
        if([item intValue] == 0)
        {
            return false;
        }
    }
    
    return true;
}

@end
