//
//  Disk.m
//  NumberOfDiscIntersections
//
//  Created by Ashley Barrett on 25/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Disk.h"

@implementation Disk

- (nonnull instancetype)initWithCenter:(NSInteger)center size:(NSInteger)size{
    self = [super init];

    self.center = center;
    self.size = size;
    self.leftPoint = center - size;
    self.rightPoint = center + size;
    
    return self;
}

- (BOOL)isIntersection: (nonnull Disk *)disk{
    return ((self.leftPoint <= disk.leftPoint && self.rightPoint > disk.leftPoint) || (self.rightPoint <= disk.rightPoint && self.leftPoint > disk.rightPoint));
}

@end
