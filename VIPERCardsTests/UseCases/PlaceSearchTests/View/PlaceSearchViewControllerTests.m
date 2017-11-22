//
//  PlaceSearchViewControllerTests.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "PlaceSearchViewController.h"

#import "PlaceSearchViewOutput.h"

@interface PlaceSearchViewControllerTests : XCTestCase

@property (nonatomic, strong) PlaceSearchViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation PlaceSearchViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[PlaceSearchViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(PlaceSearchViewOutput));

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}

#pragma mark - Тестирование методов интерфейса

#pragma mark - Тестирование методов PlaceSearchViewInput

@end
