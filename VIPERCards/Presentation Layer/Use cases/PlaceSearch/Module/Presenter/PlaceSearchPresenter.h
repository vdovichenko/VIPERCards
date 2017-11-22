//
//  PlaceSearchPresenter.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchViewOutput.h"
#import "PlaceSearchInteractorOutput.h"
#import "PlaceSearchModuleInput.h"

@protocol PlaceSearchViewInput;
@protocol PlaceSearchInteractorInput;
@protocol PlaceSearchRouterInput;

@interface PlaceSearchPresenter : NSObject <PlaceSearchModuleInput, PlaceSearchViewOutput, PlaceSearchInteractorOutput>

@property (nonatomic, weak) id<PlaceSearchViewInput> view;
@property (nonatomic, strong) id<PlaceSearchInteractorInput> interactor;
@property (nonatomic, strong) id<PlaceSearchRouterInput> router;

@end
