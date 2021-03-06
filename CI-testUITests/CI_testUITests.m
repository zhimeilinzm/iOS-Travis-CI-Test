//
//  CI_testUITests.m
//  CI-testUITests
//
//  Created by 林智敏 on 16/3/9.
//  Copyright © 2016年 林智敏. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface CI_testUITests : XCTestCase

@end

@implementation CI_testUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    
  
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    XCUIElement *element = [[[[[[XCUIApplication alloc] init].otherElements containingType:XCUIElementTypeNavigationBar identifier:@"View"] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element;
    [[[[element childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Button"] elementBoundByIndex:1] tap];
    [[[[element childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Button"] elementBoundByIndex:0] tap];
    [[[[element childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Button"] elementBoundByIndex:2] tap];
    
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
