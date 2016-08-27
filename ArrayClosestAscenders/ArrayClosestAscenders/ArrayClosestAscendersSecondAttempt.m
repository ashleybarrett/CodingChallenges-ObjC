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
            
            int min = (int)A.count;
            bool match = false;
            int num = [[A objectAtIndex:i] intValue];
            
            for (int j = (int)A.count - 1; j >= 0; j--) {
            
                int diff = abs(i - j);
                int compareNum = [[A objectAtIndex:j] intValue];
                
                if (diff != 0 && diff < min && compareNum > num) {
                    min = diff;
                    match = true;
                }
            }
            
            [result insertObject:@(match ? min : 0) atIndex:i];
        }
    }
    
    return result;
}

@end
