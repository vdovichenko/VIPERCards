//
//  PlaceSearchInteractorOutput.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Place;

@protocol PlaceSearchInteractorOutput <NSObject>
- (void)didReceivePlaces:(NSArray<Place *> *)places;
- (void)failedToGetPlacesWithError:(NSError *)error;
@end
