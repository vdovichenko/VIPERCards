//
//  PlaceSearchInteractor.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchInteractorInput.h"

@protocol PlaceSearchInteractorOutput;
@protocol SearchService;

@interface PlaceSearchInteractor : NSObject <PlaceSearchInteractorInput>

@property (nonatomic, weak) id<PlaceSearchInteractorOutput> output;
@property (nonatomic, strong) id<SearchService> searchService;

@end
