//
//  LowestCommonAncestorFinder.h
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 29/03/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

@class Node;

@interface LowestCommonAncestorFinder : NSObject

- (NSInteger) findLowestCommonAncestor:(Node*)node withNumberOne:(NSInteger)numberOne withNumberTwo:(NSInteger)numberTwo;

@end
