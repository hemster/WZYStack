//
//  WZYStackTests.m
//  WZYStackTests
//
//  Created by Zeyu Wei on 5/20/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WZYStack.h"

@interface WZYStackTests : XCTestCase

@property (nonatomic, strong) WZYStack *stack;

@end

@implementation WZYStackTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.stack = [WZYStack new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testStackExist {
    XCTAssertNotNil([WZYStack class], @"WZYStack class should exist.");
}

- (void)testStackObjectCanBeCreated {
//    WZYStack *stack = [WZYStack new];
    XCTAssertNotNil(self.stack, @"WZYStack object can be created.");
}


- (void)testPushANumberAndGetIt {
//    WZYStack *stack = [WZYStack new];
    [self.stack push:2.3];
    double topNumber = [self.stack top];
    XCTAssertEqual(topNumber, 2.3, @"WZYStack should can be pushed and has that top value.");
    
    [self.stack push:4.6];
    topNumber = [self.stack top];
    XCTAssertEqual(topNumber, 4.6, @"WZYStack should can be pushed and has that top value.");
}

@end
