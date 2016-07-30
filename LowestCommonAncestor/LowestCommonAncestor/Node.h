//
//  Node.h
//  LowestCommonAncestor
//
//  Created by Ashley Barrett on 29/03/2016.
//  Copyright © 2016 Ashley Barrett. All rights reserved.
//

@interface Node : NSObject

@property (nonatomic, strong) Node* left;
@property (nonatomic, strong) Node* right;
@property (nonatomic, assign) NSInteger nodeValue;

- (NSString*)nodeValueAsString;

@end