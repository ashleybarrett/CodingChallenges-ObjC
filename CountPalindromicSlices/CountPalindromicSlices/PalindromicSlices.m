//
//  PalindromicSlices.m
//  CountPalindromicSlices
//
//  Created by Ashley Barrett on 28/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PalindromicSlices.h"

@implementation PalindromicSlices

//int solution(NSString *S) {
-(NSInteger) getPalindromicSlices:(NSString *)S {
    NSInteger result = 0;
    
    if (S != nil && S.length > 1) {
        NSMutableArray *strAsArray = [NSMutableArray new];

        for (NSInteger i = 0; i < S.length; i++) {
            NSString *ch = [S substringWithRange:NSMakeRange(i, 1)];
            [strAsArray addObject:ch];
        }
        
        NSInteger count = strAsArray.count - 1;
        
        for (NSInteger i = 0; i <= count; i++) {
            for (NSInteger j = count; j >= 0; j--) {
                NSInteger leftCounter = i;
                NSInteger rightCounter = j;
                BOOL match = NO;
                
                while (leftCounter < rightCounter) {
                    if (strAsArray[leftCounter] == strAsArray[rightCounter]) {
                        match = YES;
                    }
                    else{
                        match = NO;
                        break;
                    }
                    
                    leftCounter++;
                    rightCounter--;
                }
                
                if(match == YES){
                    result++;
                }
            }
        }
        
        if (result >= 100000000) {
            result = -1;
        }
    }
    
    return result;
}

@end