//
//  WZYStack.h
//  WZYStack
//
//  Created by Zeyu Wei on 5/20/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WZYStack : NSObject
//@property (nonatomic, strong, nullable) NSMutableArray *numbers;

- (double)top;
- (NSUInteger)count;
- (void)push:(double)number;


@end
