//
//  ArrayClosestAscendersTests.m
//  ArrayClosestAscendersTests
//
//  Created by Ashley Barrett on 27/08/2016.
//
//  My attempt to solve this problem: https://codility.com/programmers/task/array_closest_ascenders/

#import <XCTest/XCTest.h>
#import "ArrayClosestAscendersFirstAttempt.h"
#import "ArrayClosestAscendersProtocol.h"

@interface ArrayClosestAscendersTests : XCTestCase

@property (nonatomic, strong) id<ArrayClosestAscendersProtocol> sut;

@end

@implementation ArrayClosestAscendersTests

-(void)setUp {
    [super setUp];
    self.sut = [ArrayClosestAscendersFirstAttempt new];
}

-(void)test_EmptyArrayReturnsEmptyArray {
    NSMutableArray *result = [self.sut solution: [NSMutableArray new]];
    XCTAssertEqual(0, result.count);
}

-(void)test_NilArrayReturnsEmptyArray {
    NSMutableArray *result = [self.sut solution: nil];
    XCTAssertEqual(0, result.count);
}

-(void)test_OneElmentReturnsZero {
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@1, nil];
    NSMutableArray *result = [self.sut solution: array];
    XCTAssertEqual(1, result.count);
    XCTAssertEqual(0, [[result objectAtIndex:0] intValue]);
}

-(void)test_SenarioOne {
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@4, @3, @1, @4, @(-1), @2, @1, @5, @7, nil];
    NSMutableArray *result = [self.sut solution: array];
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
