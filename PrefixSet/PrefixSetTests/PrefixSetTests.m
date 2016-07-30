//
//  PrefixSetTests.m
//  PrefixSetTests
//
//  Created by Ashley Barrett on 22/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PrefixSet.h"

@interface PrefixSetTests : XCTestCase

@end

@implementation PrefixSetTests

- (void)test_NilArrayReturnsMinusOne{
    PrefixSet *sut = [PrefixSet new];
    NSInteger result = [sut getPrefixSet:nil];
    XCTAssertEqual(result, -1);
}

- (void)test_EmptyArrayReturnsMinusOne{
    PrefixSet *sut = [PrefixSet new];
    NSInteger result = [sut getPrefixSet:nil];
    XCTAssertEqual(result, -1);
}

- (void)test_Returns_Three {
    NSArray *array = @[@2, @2, @1, @0, @1];
    PrefixSet *set = [PrefixSet new];
    NSInteger result = [set getPrefixSet:array];
    XCTAssertEqual(result, 3);
}

- (void)test_OneElementArrayReturnsZero{
    NSArray *array = @[@10];
    PrefixSet *set = [PrefixSet new];
    NSInteger result = [set getPrefixSet:array];
    XCTAssertEqual(result, 0);
}

- (void)test_NoneDistinctItemsReturnsLastIndex {
    NSArray *array = @[@10, @1, @2, @5, @64];
    PrefixSet *set = [PrefixSet new];
    NSInteger result = [set getPrefixSet:array];
    XCTAssertEqual(result, 4);
}

- (void)test_DistinctItemsReturnsFirstIndex {
    NSArray *array = @[@10, @10, @10, @10, @10];
    PrefixSet *set = [PrefixSet new];
    NSInteger result = [set getPrefixSet:array];
    XCTAssertEqual(result, 0);
}

- (void)test_ReturnsFour {
    NSArray *array = @[@1, @5, @4, @2, @10, @4];
    PrefixSet *set = [PrefixSet new];
    NSInteger result = [set getPrefixSet:array];
    XCTAssertEqual(result, 4);
}

- (void)test_ReturnsOne {
    NSArray *array = @[@10, @20, @10, @10, @10];
    PrefixSet *set = [PrefixSet new];
    NSInteger result = [set getPrefixSet:array];
    XCTAssertEqual(result, 1);
}


@end
