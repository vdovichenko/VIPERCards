//
//  PlaceSearchInteractor.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchInteractor.h"
#import "PlaceSearchInteractorOutput.h"
#import "SearchService.h"

@implementation PlaceSearchInteractor

#pragma mark - PlaceSearchInteractorInput

- (void)searchPlacesWithName:(NSString *)name {
    [NSThread cancelPreviousPerformRequestsWithTarget:self selector:@selector(searchPlacesDelayed:) object:nil];
    [self performSelector:@selector(searchPlacesDelayed:) withObject:name afterDelay:0.1];
}

#pragma mark -

- (void)searchPlacesDelayed:(NSString *)text {
    [self.searchService getPlacesWithName:text completion:^(NSArray<Place *> *places, NSError *error) {
    }];
}

- (void)cancelSearch {
}

@end
