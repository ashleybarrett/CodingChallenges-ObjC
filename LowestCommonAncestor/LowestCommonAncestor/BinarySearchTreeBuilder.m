//
//  BinarySearchTreeBuilder.m
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 29/03/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTreeBuilder.h"
#import "Node.h"

@interface BinarySearchTreeBuilder ()

@property (nonatomic, strong) Node* binarySearchTree;

@end

@implementation BinarySearchTreeBuilder

- (void)addNumberToBinarySearchTree:(NSInteger)withInt
{
    
    if(self.binarySearchTree == nil){
        self.binarySearchTree = [self createNode:withInt];
    }
    else{
        [self add:withInt node:self.binarySearchTree];
    }
}

- (Node*)createNode:(NSInteger)number
{
    Node* node = [Node new];
    node.nodeValue = number;
    return node;
}

- (void)add:(NSInteger)number node:(Node*)nodeMember
{
    Node* node = [nodeMember left];
    bool isLeft = YES;
    
    if(number >= nodeMember.nodeValue){
        node = [nodeMember right];
        isLeft = NO;
    }
    
    if(node == nil){
        Node* createdNode = [self createNode:number];
        
        if(isLeft){
            nodeMember.left = createdNode;
        }else{
            nodeMember.right = createdNode;
        }
    }
    else{
        [self add:number node:node];
    }
}

- (Node*)getBuiltBinarySearchTree
{
    return self.binarySearchTree;
}

@end