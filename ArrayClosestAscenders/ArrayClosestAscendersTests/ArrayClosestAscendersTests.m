//
//  ArrayClosestAscendersTests.m
//  ArrayClosestAscendersTests
//
//  Created by Ashley Barrett on 27/08/2016.
//
//

#import <XCTest/XCTest.h>
#import "ArrayClosestAscenders.h"

@interface ArrayClosestAscendersTests : XCTestCase

@end

@implementation ArrayClosestAscendersTests

-(void)test_EmptyArrayReturnsEmptyArray {
    ArrayClosestAscenders *sut = [ArrayClosestAscenders new];
    NSMutableArray *result = [sut solution: [NSMutableArray new]];
    XCTAssertEqual(0, result.count);
}

-(void)test_NilArrayReturnsEmptyArray {
    ArrayClosestAscenders *sut = [ArrayClosestAscenders new];
    NSMutableArray *result = [sut solution: nil];
    XCTAssertEqual(0, result.count);
}

-(void)test_OneElmentReturnsZero {
    ArrayClosestAscenders *sut = [ArrayClosestAscenders new];
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@1, nil];
    NSMutableArray *result = [sut solution: array];
    XCTAssertEqual(1, result.count);
    XCTAssertEqual(0, [[result objectAtIndex:0] intValue]);
}

-(void)test_SenarioOne {
    ArrayClosestAscenders *sut = [ArrayClosestAscenders new];
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@4, @3, @1, @4, @(-1), @2, @1, @5, @7, nil];
    NSMutableArray *result = [sut solution: array];
    XCTAssertEqual(9, result.count);
    XCTAssertEqual(7, [[result objectAtIndex:0] intValue]);
    XCTAssertEqual(1, [[result objectAtIndex:1] intValue]);
    XCTAssertEqual(1, [[result objectAtIndex:2] intValue]);
    XCTAssertEqual(4, [[result objectAtIndex:3] intValue]);
    XCTAssertEqual(1, [[result objectAtIndex:4] intValue]);
    XCTAssertEqual(2, [[result objectAtIndex:5] intValue]);
    XCTAssertEqual(1, [[result objectAtIndex:6] intValue]);
    XCTAssertEqual(1, [[result objectAtIndex:7] intValue]);
    XCTAssertEqual(0, [[result objectAtIndex:8] intValue]);
}

@end
