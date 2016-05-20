//
//  WZYStack.m
//  WZYStack
//
//  Created by Zeyu Wei on 5/20/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

#import "WZYStack.h"

@interface WZYStack ()

@property (nonatomic, strong) NSMutableArray *numbers;

@end

@implementation WZYStack
- (instancetype)init {
    self = [super init];
    if (self) {
        self.numbers = [NSMutableArray new];
    }
    
    return self;
}

- (void)push:(double)number {
    [self.numbers addObject:@(number)];
}

- (double)top {
    return [[self.numbers lastObject] doubleValue];
}

@end
