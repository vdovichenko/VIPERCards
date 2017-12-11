//
//  PlaceSearchViewInput.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Place;

@protocol PlaceSearchViewInput <NSObject>
- (void)setupInitialState;
- (void)showSpinner;
- (void)hideSpinner;
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message;
- (void)configureWithPlaces:(NSArray<Place *> *)places;
@end
