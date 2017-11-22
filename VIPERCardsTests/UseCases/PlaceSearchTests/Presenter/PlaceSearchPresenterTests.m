//
//  PlaceSearchPresenterTests.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "PlaceSearchPresenter.h"

#import "PlaceSearchViewInput.h"
#import "PlaceSearchInteractorInput.h"
#import "PlaceSearchRouterInput.h"

@interface PlaceSearchPresenterTests : XCTestCase

@property (nonatomic, strong) PlaceSearchPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation PlaceSearchPresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[PlaceSearchPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(PlaceSearchInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(PlaceSearchRouterInput));
    self.mockView = OCMProtocolMock(@protocol(PlaceSearchViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов PlaceSearchModuleInput

#pragma mark - Тестирование методов PlaceSearchViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов PlaceSearchInteractorOutput

@end
