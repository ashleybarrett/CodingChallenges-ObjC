//
//  Disk.h
//  NumberOfDiscIntersections
//
//  Created by Ashley Barrett on 25/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Disk : NSObject

@property (nonatomic) NSInteger center;
@property (nonatomic) NSInteger size;
@property (nonatomic) NSInteger leftPoint;
@property (nonatomic) NSInteger rightPoint;

- (nonnull instancetype)initWithCenter:(NSInteger)center size:(NSInteger)size;
- (BOOL)isIntersection: (nonnull Disk *)disk;

@end
