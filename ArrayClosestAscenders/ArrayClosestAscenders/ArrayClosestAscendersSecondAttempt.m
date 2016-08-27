//
//  ArrayClosestAscenders.m
//  ArrayClosestAscenders
//
//  Created by Ashley Barrett on 27/08/2016.
//
//  My attempt to solve this problem: https://codility.com/programmers/task/array_closest_ascenders/

#import "ArrayClosestAscendersSecondAttempt.h"

@implementation ArrayClosestAscendersSecondAttempt : NSObject

//NSMutableArray * solution(NSMutableArray *A)
-(NSMutableArray *) solution:(NSMutableArray *)A {
    
    NSMutableArray *result = [NSMutableArray new];
    
    if (A != nil && A.count > 0) {
        
        for (int i = 0; i < A.count; i++) {
            
            bool matched = false;
            int min = (int)A.count;
            int num = [[A objectAtIndex:i] intValue];
            
            for (int j = 0; j < A.count; j++) {
            
                if (j != i) {
                    
                    int compareNum = [[A objectAtIndex:j] intValue];
                    int diff = abs(i - j);
                    if (compareNum > num && diff < min) {
                        matched = true;
                        min = diff;
                    }
                }
            }
            
            [result insertObject:@(matched ? min : 0) atIndex:i];
        }
    }
    
    return result;
}

@end
