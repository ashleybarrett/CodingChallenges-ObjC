//
//  LargestSquareOf1sTests.m
//  LargestSquareOf1sTests
//
//  Created by Ashley Barrett on 09/04/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//
//  My attempt to solve this problem: http://www.blackrabbitcoder.net/archive/2015/04/20/little-puzzlersndashlargest-square-of-lsquo1rsquos-in-a-matrix.aspx

#import <XCTest/XCTest.h>
#import "LargestSquareFinder.h"

@interface LargestSquareOf1sTests : XCTestCase

@property (nonatomic, strong) LargestSquareFinder *finder;

@end

@implementation LargestSquareOf1sTests

- (void)setUp {
    [super setUp];
    self.finder = [LargestSquareFinder new];
}

- (void)tearDown {
    self.finder = nil;
    [super tearDown];
}

- (void)test_When_Nil_Matrix_Largest_Square_Number_Must_Be_Zero {
    NSInteger largestSquare = [self.finder findLargestSquare: nil];
    XCTAssertEqual(largestSquare, 0);
}


- (void)test_When_Empty_Matrix_Largest_Square_Number_Must_Be_Zero {
    NSArray *matrix = [NSArray new];
    NSInteger largestSquare = [self.finder findLargestSquare: matrix];
    XCTAssertEqual(largestSquare, 0);
}

- (void)test_When_Matrix_Expected_Size_Is_One_Largest_Square_Number_Must_Be_One {
    NSArray *rowOne =   @[@0,@0,@1,@1,@0,@1,@0,@1,@1,@1];
    NSArray *rowTwo =   @[@0,@1,@1,@0,@0,@1,@1,@0,@0,@0];
    NSArray *rowThree = @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@0];
    NSArray *rowFour =  @[@0,@0,@1,@0,@0,@1,@1,@0,@0,@0];
    NSArray *rowFive =  @[@0,@1,@1,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowSix =   @[@0,@0,@0,@0,@1,@0,@1,@0,@1,@0];
    NSArray *rowSeven = @[@0,@0,@0,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowEight = @[@1,@0,@0,@1,@0,@0,@0,@0,@0,@0];
    NSArray *rowNine =  @[@1,@0,@1,@0,@0,@0,@1,@0,@1,@0];
    NSArray *rowTen =   @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@1];
    
    NSArray *matrix = [[NSArray alloc] initWithObjects:rowOne, rowTwo, rowThree, rowFour, rowFive, rowSix, rowSeven, rowEight, rowNine, rowTen, nil];
    
    NSInteger largestSquare = [self.finder findLargestSquare: matrix];

    XCTAssertEqual(largestSquare, 1);
}

- (void)test_When_Matrix_Expected_Size_Is_Two_Largest_Square_Number_Must_Be_Two {
    NSArray *rowOne =   @[@1,@1,@0,@1,@0,@1,@0,@1,@1,@1];
    NSArray *rowTwo =   @[@1,@1,@0,@0,@0,@1,@1,@0,@0,@0];
    NSArray *rowThree = @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@0];
    NSArray *rowFour =  @[@0,@0,@1,@0,@0,@1,@1,@0,@0,@0];
    NSArray *rowFive =  @[@0,@1,@1,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowSix =   @[@0,@0,@0,@0,@1,@0,@1,@0,@1,@0];
    NSArray *rowSeven = @[@1,@0,@0,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowEight = @[@1,@1,@0,@1,@0,@0,@0,@0,@0,@0];
    NSArray *rowNine =  @[@1,@0,@1,@0,@0,@0,@1,@0,@1,@0];
    NSArray *rowTen =   @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@1];
    
    NSArray *matrix = [[NSArray alloc] initWithObjects:rowOne, rowTwo, rowThree, rowFour, rowFive, rowSix, rowSeven, rowEight, rowNine, rowTen, nil];

    NSInteger largestSquare = [self.finder findLargestSquare: matrix];
    
    XCTAssertEqual(largestSquare, 2);
}

- (void)test_When_Matrix_Expected_Size_Is_Three_Largest_Square_Number_Must_Be_Three {
    NSArray *rowOne =   @[@1,@1,@0,@1,@0,@1,@0,@1,@1,@1];
    NSArray *rowTwo =   @[@1,@1,@0,@0,@0,@1,@1,@0,@0,@0];
    NSArray *rowThree = @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@0];
    NSArray *rowFour =  @[@0,@0,@1,@0,@0,@1,@1,@0,@0,@0];
    NSArray *rowFive =  @[@0,@1,@1,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowSix =   @[@0,@0,@0,@0,@1,@1,@1,@0,@1,@0];
    NSArray *rowSeven = @[@1,@0,@0,@0,@1,@1,@1,@1,@0,@0];
    NSArray *rowEight = @[@1,@1,@0,@1,@1,@1,@1,@0,@0,@0];
    NSArray *rowNine =  @[@1,@0,@1,@0,@1,@1,@1,@0,@1,@0];
    NSArray *rowTen =   @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@1];
    
    NSArray *matrix = [[NSArray alloc] initWithObjects:rowOne, rowTwo, rowThree, rowFour, rowFive, rowSix, rowSeven, rowEight, rowNine, rowTen, nil];
    
    NSInteger largestSquare = [self.finder findLargestSquare: matrix];
    
    XCTAssertEqual(largestSquare, 3);
}

- (void)test_When_Matrix_Expected_Size_Is_Four_Largest_Square_Number_Must_Be_Four {
    NSArray *rowOne =   @[@1,@1,@0,@1,@0,@1,@1,@1,@1,@1];
    NSArray *rowTwo =   @[@1,@1,@0,@0,@0,@0,@1,@1,@1,@1];
    NSArray *rowThree = @[@1,@0,@1,@1,@0,@1,@1,@1,@1,@1];
    NSArray *rowFour =  @[@0,@0,@1,@0,@0,@1,@1,@1,@1,@1];
    NSArray *rowFive =  @[@0,@1,@1,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowSix =   @[@0,@0,@0,@0,@1,@1,@1,@0,@1,@0];
    NSArray *rowSeven = @[@1,@0,@0,@0,@1,@1,@1,@1,@0,@0];
    NSArray *rowEight = @[@1,@1,@0,@1,@1,@1,@1,@0,@0,@0];
    NSArray *rowNine =  @[@1,@0,@1,@0,@1,@1,@1,@0,@1,@0];
    NSArray *rowTen =   @[@1,@0,@1,@1,@0,@0,@0,@1,@1,@1];
    
    NSArray *matrix = [[NSArray alloc] initWithObjects:rowOne, rowTwo, rowThree, rowFour, rowFive, rowSix, rowSeven, rowEight, rowNine, rowTen, nil];
    
    NSInteger largestSquare = [self.finder findLargestSquare: matrix];
    
    XCTAssertEqual(largestSquare, 4);
}

- (void)test_When_Matrix_Expected_Size_Is_Five_Largest_Square_Number_Must_Be_Five {
    NSArray *rowOne =   @[@1,@1,@0,@1,@0,@1,@1,@1,@1,@1];
    NSArray *rowTwo =   @[@1,@1,@0,@0,@0,@0,@1,@1,@1,@1];
    NSArray *rowThree = @[@1,@0,@1,@1,@0,@1,@1,@1,@1,@1];
    NSArray *rowFour =  @[@0,@0,@1,@0,@0,@1,@1,@1,@1,@1];
    NSArray *rowFive =  @[@0,@1,@1,@0,@0,@0,@1,@1,@0,@0];
    NSArray *rowSix =   @[@0,@0,@0,@0,@1,@1,@1,@1,@1,@0];
    NSArray *rowSeven = @[@1,@0,@0,@0,@1,@1,@1,@1,@1,@0];
    NSArray *rowEight = @[@1,@1,@0,@1,@1,@1,@1,@1,@1,@0];
    NSArray *rowNine =  @[@1,@0,@1,@0,@1,@1,@1,@1,@1,@0];
    NSArray *rowTen =   @[@1,@0,@1,@1,@1,@1,@1,@1,@1,@1];
    
    NSArray *matrix = [[NSArray alloc] initWithObjects:rowOne, rowTwo, rowThree, rowFour, rowFive, rowSix, rowSeven, rowEight, rowNine, rowTen, nil];
    
    NSInteger largestSquare = [self.finder findLargestSquare: matrix];
    
    XCTAssertEqual(largestSquare, 5);
}

- (void)test_When_Matrix_Expected_Size_Is_Zero_Largest_Square_Number_Must_Be_Zero {
    NSArray *row =   @[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0];
    
    NSArray *matrix = [[NSArray alloc] initWithObjects:row, row, row, row, row, row, row, row, row, row, nil];
    
    NSInteger largestSquare = [self.finder findLargestSquare: matrix];
    
    XCTAssertEqual(largestSquare, 0);
}

@end
