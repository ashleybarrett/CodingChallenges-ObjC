//
//  Node.m
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 29/03/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@implementation Node : NSObject

- (NSString*) nodeValueAsString
{
    return [NSString stringWithFormat:@"%d", self.nodeValue];
}

@end