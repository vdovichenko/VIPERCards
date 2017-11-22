//
//  PlaceSearchAssembly.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchAssembly.h"

#import "PlaceSearchViewController.h"
#import "PlaceSearchInteractor.h"
#import "PlaceSearchPresenter.h"
#import "PlaceSearchRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation PlaceSearchAssembly

- (PlaceSearchViewController *)viewPlaceSearch {
    return [TyphoonDefinition withClass:[PlaceSearchViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterPlaceSearch]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterPlaceSearch]];
                          }];
}

- (PlaceSearchInteractor *)interactorPlaceSearch {
    return [TyphoonDefinition withClass:[PlaceSearchInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterPlaceSearch]];
                          }];
}

- (PlaceSearchPresenter *)presenterPlaceSearch{
    return [TyphoonDefinition withClass:[PlaceSearchPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewPlaceSearch]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorPlaceSearch]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerPlaceSearch]];
                          }];
}

- (PlaceSearchRouter *)routerPlaceSearch{
    return [TyphoonDefinition withClass:[PlaceSearchRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewPlaceSearch]];
                          }];
}

@end
