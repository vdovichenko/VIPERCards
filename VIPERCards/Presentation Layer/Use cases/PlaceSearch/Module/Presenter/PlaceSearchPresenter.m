//
//  PlaceSearchPresenter.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchPresenter.h"

#import "PlaceSearchViewInput.h"
#import "PlaceSearchInteractorInput.h"
#import "PlaceSearchRouterInput.h"

@implementation PlaceSearchPresenter

#pragma mark - Методы PlaceSearchModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы PlaceSearchViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы PlaceSearchInteractorOutput

@end
