//
//  MinAbsSum.m
//  MinAbsSum
//
//  Created by Ashley Barrett on 09/07/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import "MinAbsSum.h"

@implementation MinAbsSum

//int solution(NSMutableArray *A)
-(int) solution:(NSMutableArray *)A{
    int result = 0;
    int sum = 0;
    
    if (A != nil && A.count > 0) {
        for (int i = 0; i < A.count; i++) {
            int num = [((NSNumber*)[A objectAtIndex:i]) intValue];
            int absNum = abs(num);
            sum+= absNum;
            A[i] = @(absNum);
        }
    }
    
    result = sum;
    
    NSArray *sorted = [A sortedArrayUsingSelector: @selector(compare:)];

    for (int i = 1; i < sorted.count; i++) {
        int num = [((NSNumber*)[sorted objectAtIndex:i]) intValue];
        int prevNum = [((NSNumber*)[sorted objectAtIndex:i - 1]) intValue];
        
        int diff = num - prevNum;
        
        if (i == 1 || diff < result) {
            result = diff;
        }
    }
    
    return result;
}

@end
