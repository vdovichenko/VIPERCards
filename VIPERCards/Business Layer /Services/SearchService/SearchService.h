//
//  SearchService.h
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "SearchService.h"
@class Place;

typedef void (^PlacesCompletionBlock)(NSArray<Place *> *places, NSError *error);

@protocol SearchService <NSObject>
- (void)getPlacesWithName:(NSString *)name
               completion:(PlacesCompletionBlock)completion;
@end
