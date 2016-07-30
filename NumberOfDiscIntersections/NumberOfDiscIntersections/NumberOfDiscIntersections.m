//
//  NumberOfDiscIntersections.m
//  NumberOfDiscIntersections
//
//  Created by Ashley Barrett on 23/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberOfDiscIntersections.h"
#import "Disk.h"

@implementation NumberOfDiscIntersections

- (NSInteger) getNumberOfDiscIntersections:(NSArray *)array{
    NSInteger intersections = 0;
    
    if(array != nil && array.count > 1){
        
        for (NSInteger i = 0; i < array.count; i++) {
            
            Disk *currentDisk = [self getDisk:array center:i];
            
            for (NSInteger j = i + 1; j < array.count; j++) {
                
                Disk *nextDisk = [self getDisk:array center:j];
                
                if ([currentDisk isIntersection:nextDisk] || [nextDisk isIntersection:currentDisk])
                {
                    intersections++;
                }
            }
        }
    }
    
    return intersections;
}

-(Disk *)getDisk:(NSArray *)array center:(NSInteger)center{
    NSInteger diskSize = [[array objectAtIndex:center] integerValue];
    return [[Disk alloc] initWithCenter:center size:diskSize];
}

@end