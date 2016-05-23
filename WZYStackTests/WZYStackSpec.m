//
//  WZYStackSpec.m
//  WZYStack
//
//  Created by Zeyu Wei on 5/23/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

#import <Kiwi/Kiwi.h>

#import "WZYStack.h"


SPEC_BEGIN(WZYStackSpec)

describe(@"WZYStack", ^{
    context(@"when created", ^{
        __block WZYStack *stack = nil;
        beforeEach(^{
            stack = [WZYStack new];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"should have the class WZYStack", ^{
            [[[WZYStack class] shouldNot] beNil];
        });
        
        it(@"should exist", ^{
            [[stack shouldNot] beNil];
        });
        
        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            [[theValue([stack top]) should] equal:theValue(2.3)];
            
            [stack push:4.6];
            [[theValue([stack top]) should] equal:4.6 withDelta:0.001];
        });
        
        it(@"should equal contains 0 element", ^{
            [[theValue([stack count]) should] equal:theValue(0)];
        });
        
    });
});

SPEC_END