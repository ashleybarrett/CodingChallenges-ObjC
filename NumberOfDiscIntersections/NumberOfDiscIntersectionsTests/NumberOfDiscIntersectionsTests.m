//
//  NumberOfDiscIntersectionsTests.m
//  NumberOfDiscIntersectionsTests
//
//  Created by Ashley Barrett on 23/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//
//  My attempt to solve this problem: https://codility.com/programmers/task/number_of_disc_intersections/

#import <XCTest/XCTest.h>
#import "NumberOfDiscIntersections.h"

@interface NumberOfDiscIntersectionsTests : XCTestCase

@end

@implementation NumberOfDiscIntersectionsTests

- (void)test_NilArrayReturnsZero{
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:nil];
    XCTAssertEqual(result, 0);
}

- (void)test_EmptyArrayReturnsZero{
    NSArray *array = @[];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 0);
}

- (void)test_SingleItemArrayReturnsZero{
    NSArray *array = @[@1];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 0);
}

- (void)test_ReturnsZero{
    NSArray *array = @[@0, @0];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 0);
}

- (void)test_ReturnsOne{
    NSArray *array = @[@1, @5];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 1);
}

- (void)test_ReturnsThree{
    NSArray *array = @[@1, @5, @2];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 3);
}

- (void)test_ReturnsFive{
    NSArray *array = @[@1, @5, @2, @1];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 5);
}

- (void)test_ReturnsTen{
    NSArray *array = @[@1, @5, @2, @1, @4];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 9);
}

- (void)test_ReturnsEleven{
    NSArray *array = @[@1, @5, @2, @1, @4, @0];
    NumberOfDiscIntersections *sut = [NumberOfDiscIntersections new];
    NSInteger result = [sut getNumberOfDiscIntersections:array];
    XCTAssertEqual(result, 11);
}

@end
