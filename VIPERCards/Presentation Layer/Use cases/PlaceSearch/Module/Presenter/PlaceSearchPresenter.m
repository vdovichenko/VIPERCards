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

#pragma mark - PlaceSearchModuleInput

- (void)configureModule {
}

#pragma mark - PlaceSearchViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (void)searchFieldTextDidChange:(NSString *)text {
    if (text.length) {
        [self.view showSpinner];
        [self.interactor searchPlacesWithName:text];
    } else {
        [self.view hideSpinner];
        [self.interactor cancelSearch];
    }
}

#pragma mark - PlaceSearchInteractorOutput

@end
