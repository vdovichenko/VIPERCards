//
//  PlaceSearchInteractorTests.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "PlaceSearchInteractor.h"

#import "PlaceSearchInteractorOutput.h"

@interface PlaceSearchInteractorTests : XCTestCase

@property (nonatomic, strong) PlaceSearchInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation PlaceSearchInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[PlaceSearchInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(PlaceSearchInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов PlaceSearchInteractorInput

@end
