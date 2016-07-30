//
//  LowestCommonAncestorTests.m
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 05/04/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BinarySearchTreeBuilder.h"
#import "LowestCommonAncestorFinder.h"

@interface LowestCommonAncestorTests : XCTestCase

@property (nonatomic, strong) BinarySearchTreeBuilder* builder;
@property (nonatomic, strong) LowestCommonAncestorFinder* lcaFinder;

@end

@implementation LowestCommonAncestorTests

- (void)setUp
{
    [super setUp];
    self.builder = [BinarySearchTreeBuilder new];

    [self.builder addNumberToBinarySearchTree:20];
    [self.builder addNumberToBinarySearchTree:10];
    [self.builder addNumberToBinarySearchTree:30];
    [self.builder addNumberToBinarySearchTree:5];
    [self.builder addNumberToBinarySearchTree:15];
    [self.builder addNumberToBinarySearchTree:25];
    [self.builder addNumberToBinarySearchTree:35];
    
    self.lcaFinder = [LowestCommonAncestorFinder new];
}

- (void)tearDown
{
    [super tearDown];
    self.builder = nil;
    self.lcaFinder =  nil;
}

- (void) test_When_The_Numbers_Are_5_And_15_The_LCA_Must_Be_10{
    Node* tree = [self.builder getBuiltBinarySearchTree];
    NSInteger lca = [self.lcaFinder findLowestCommonAncestor:tree withNumberOne:5 withNumberTwo:15];
    XCTAssertEqual(10, lca);
}

- (void) test_When_The_Numbers_Are_20_And_10_The_LCA_Must_Be_20{
    Node* tree = [self.builder getBuiltBinarySearchTree];
    NSInteger lca = [self.lcaFinder findLowestCommonAncestor:tree withNumberOne:20 withNumberTwo:10];
    XCTAssertEqual(20, lca);
}

- (void) test_When_The_Numbers_Are_25_And_35_The_LCA_Must_Be_30{
    Node* tree = [self.builder getBuiltBinarySearchTree];
    NSInteger lca = [self.lcaFinder findLowestCommonAncestor:tree withNumberOne:25 withNumberTwo:35];
    XCTAssertEqual(30, lca);
}

- (void) test_When_The_Numbers_Are_10_And_30_The_LCA_Must_Be_20{
    Node* tree = [self.builder getBuiltBinarySearchTree];
    NSInteger lca = [self.lcaFinder findLowestCommonAncestor:tree withNumberOne:10 withNumberTwo:30];
    XCTAssertEqual(20, lca);
}

- (void) test_When_The_Numbers_Are_5_And_30_The_LCA_Must_Be_20{
    Node* tree = [self.builder getBuiltBinarySearchTree];
    NSInteger lca = [self.lcaFinder findLowestCommonAncestor:tree withNumberOne:5 withNumberTwo:30];
    XCTAssertEqual(20, lca);
}

- (void) test_When_The_Numbers_Are_5_And_1000_The_LCA_Must_Be_20{
    Node* tree = [self.builder getBuiltBinarySearchTree];
    NSInteger lca = [self.lcaFinder findLowestCommonAncestor:tree withNumberOne:5 withNumberTwo:1000];
    XCTAssertEqual(20, lca);
}

@end
