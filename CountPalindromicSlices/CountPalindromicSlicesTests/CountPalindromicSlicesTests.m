//
//  CountPalindromicSlicesTests.m
//  CountPalindromicSlicesTests
//
//  Created by Ashley Barrett on 28/06/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//
//  My attempt to solve this problem: https://codility.com/programmers/task/count_palindromic_slices/

#import <XCTest/XCTest.h>
#import "PalindromicSlices.h"

@interface CountPalindromicSlicesTests : XCTestCase

@end

@implementation CountPalindromicSlicesTests

- (void)test_nilStringReturnsZero {
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:nil];
    XCTAssertEqual(result, 0);
}

- (void)test_EmptyStringReturnsZero {
    NSString *str = @"";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 0);
}

- (void)test_SingleCharReturnsZero {
    NSString *str = @"a";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 0);
}

- (void)test_aza_ReturnsOne {
    NSString *str = @"aza";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 1);
}

- (void)test_abba_ReturnsTwo {
    NSString *str = @"abba";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 2);
}

- (void)test_zaza_ReturnsZero {
    NSString *str = @"zaza";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 2);
}

- (void)test_abcd_ReturnsZero {
    NSString *str = @"abcd";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 0);
}

- (void)test_abacaba_ReturnsFour {
    NSString *str = @"abacaba";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 5);
}

- (void)test_abbacada_ReturnsFour {
    NSString *str = @"abbacada";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 4);
}

- (void)test_abcd_bb_ReturnsOne {
    NSString *str = @"bb";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 1);
}

- (void)test_sd_ReturnsZero {
    NSString *str = @"sd";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 0);
}

- (void)test_sd_ReturnsSix {
    NSString *str = @"baababa";
    PalindromicSlices *sut = [PalindromicSlices new];
    NSInteger result = [sut getPalindromicSlices:str];
    XCTAssertEqual(result, 6);
}

@end
