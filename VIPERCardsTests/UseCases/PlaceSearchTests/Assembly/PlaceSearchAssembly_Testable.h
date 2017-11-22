//
//  PlaceSearchAssembly_Testable.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchAssembly.h"

@class PlaceSearchViewController;
@class PlaceSearchInteractor;
@class PlaceSearchPresenter;
@class PlaceSearchRouter;

/**
 @author Vdovychenko Dmytro

 Extension, который делает приватные методы фабрики открытыми для тестирования. 
 */
@interface PlaceSearchAssembly ()

- (PlaceSearchViewController *)viewPlaceSearch;
- (PlaceSearchPresenter *)presenterPlaceSearch;
- (PlaceSearchInteractor *)interactorPlaceSearch;
- (PlaceSearchRouter *)routerPlaceSearch;

@end
