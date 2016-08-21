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
    int result = [sut solution:array];
    XCTAssertEqual(0, result);
}

-(void) test_EmptyArrayReturnsZero{
    NSMutableArray *array = [NSMutableArray new];
    MinAbsSum *sut = [MinAbsSum new];
    int result = [sut solution:array];
    XCTAssertEqual(0, result);
}

-(void) test_ReturnsZero{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@1, @5, @2, [self minusNumber:-2], nil];
    MinAbsSum *sut = [MinAbsSum new];
    int result = [sut solution:array];
    XCTAssertEqual(0, result);
}

-(void) test_ReturnsTwo{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@3, @1, nil];
    MinAbsSum *sut = [MinAbsSum new];
    int result = [sut solution:array];
    XCTAssertEqual(2, result);
}

-(void) test_SingleNumberReturnsThat{
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@7, nil];
    MinAbsSum *sut = [MinAbsSum new];
    int result = [sut solution:array];
    XCTAssertEqual(7, result);
}

-(NSNumber *)minusNumber:(NSInteger)intNumber{
    return [NSNumber numberWithInteger:intNumber];
}

@end
