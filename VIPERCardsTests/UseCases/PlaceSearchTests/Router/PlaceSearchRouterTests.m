//
//  PlaceSearchRouterTests.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "PlaceSearchRouter.h"

@interface PlaceSearchRouterTests : XCTestCase

@property (nonatomic, strong) PlaceSearchRouter *router;

@end

@implementation PlaceSearchRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[PlaceSearchRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
