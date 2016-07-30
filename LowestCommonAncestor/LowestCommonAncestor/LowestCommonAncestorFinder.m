//
//  LowestCommonAncestorFinder.m
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 31/03/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LowestCommonAncestorFinder.h"
#import "Node.h"

@implementation LowestCommonAncestorFinder : NSObject

- (NSInteger) findLowestCommonAncestor:(Node*)node withNumberOne:(NSInteger)numberOne withNumberTwo:(NSInteger)numberTwo
{
    NSInteger lca = node.nodeValue;
    
    Node* nextLeft = [self getNode:node withNumber:numberOne];
    Node* nextRight = [self getNode:node withNumber:numberTwo];
    
    if(nextLeft.nodeValue == nextRight.nodeValue){
        lca = [self findLowestCommonAncestor:nextLeft withNumberOne:numberOne withNumberTwo:numberTwo];
    }
    
    return lca;
}

- (Node*) getNode:(Node*)node withNumber:(NSInteger)number
{
    return (number < node.nodeValue) ? node.left :  node.right;
}

@end