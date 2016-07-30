//
//  PrefixSet.m
//  PrefixSet
//
//  Created by Ashley Barrett on 22/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PrefixSet.h"

@implementation PrefixSet

- (NSInteger) getPrefixSet:(NSArray *)array{
    NSInteger prefixSet = -1;
    NSMutableArray *distinct = [NSMutableArray new];
    
    if(array != nil && array.count > 0){
        prefixSet = 0;
        
        for (int i = 0; i < array.count; i++) {
            id current = array[i];
            if(![distinct containsObject:current]){
                [distinct addObject:current];
                prefixSet = i;
            }
        }
    }
    
    return prefixSet;
}

@end