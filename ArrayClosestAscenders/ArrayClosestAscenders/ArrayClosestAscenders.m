//
//  ArrayClosestAscenders.m
//  ArrayClosestAscenders
//
//  Created by Ashley Barrett on 27/08/2016.
//
//

#import "ArrayClosestAscenders.h"

@implementation ArrayClosestAscenders

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
            result[i] = @(matched ? min : 0);
        }
    }
    
    return result;
}

@end
