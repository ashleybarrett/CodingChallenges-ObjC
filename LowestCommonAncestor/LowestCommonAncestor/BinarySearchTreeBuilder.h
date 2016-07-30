//
//  BinarySearchTreeBuilder.h
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 29/03/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

@class Node;

@interface BinarySearchTreeBuilder : NSObject

-(void)addNumberToBinarySearchTree:(NSInteger)withInt;
-(Node*)getBuiltBinarySearchTree;

@end