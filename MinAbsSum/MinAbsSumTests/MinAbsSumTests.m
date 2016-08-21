//
//  MinAbsSumTests.m
//  MinAbsSumTests
//
//  Created by Ashley Barrett on 09/07/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//
//  My attempt to solve this problem: https://codility.com/programmers/task/min_abs_sum/

#import <XCTest/XCTest.h>

#import "MinAbsSum.h"

@interface MinAbsSumTests : XCTestCase

@end

@implementation MinAbsSumTests

-(void) test_NilArrayReturnsZero{
    NSMutableArray *array = nil;
    MinAbsSum *sut = [MinAbsSum new];
    NSInteger result = [sut solution:array];
    XCTAssertEqual(0, result);
}

-(void) test_EmptyArrayReturnsZero{
    NSMutableArray *array = [NSMutableArray new];
    MinAbsSum *sut = [MinAbsSum new];
    NSInteger result = [sut solution:array];
    XCTAssertEqual(0, result);
}

-(void) test_ReturnsZero{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@1, @5, @2, [self minusNumber:-2], nil];
    MinAbsSum *sut = [MinAbsSum new];
    NSInteger result = [sut solution:array];
    XCTAssertEqual(0, result);
}
/*
-(void) test_ReturnsOne{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@2, [self minusNumber:-4], @6, [self minusNumber:-3], @9, nil];
    MinAbsSum *sut = [MinAbsSum new];
    NSInteger result = [sut solution:array];
    XCTAssertEqual(1, result);
}

-(void) test_ReturnsFive{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@3, @2, @6, @4, @0, nil];
    MinAbsSum *sut = [MinAbsSum new];
    NSInteger result = [sut solution:array];
    XCTAssertEqual(1, result);
}

-(void) test_ReturnsSix{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:[self minusNumber:-4], [self minusNumber:-8], [self minusNumber:-3], [self minusNumber:-2], [self minusNumber:-4], [self minusNumber:-10], nil];
    MinAbsSum *sut = [MinAbsSum new];
    NSInteger result = [sut solution:array];
    XCTAssertEqual(1, result);
}
*/
-(NSNumber *)minusNumber:(NSInteger)intNumber{
    return [NSNumber numberWithInteger:intNumber];
}

@end
