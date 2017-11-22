//
//  PlaceSearchViewController.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PlaceSearchViewInput.h"

@protocol PlaceSearchViewOutput;

@interface PlaceSearchViewController : UIViewController <PlaceSearchViewInput>

@property (nonatomic, strong) id<PlaceSearchViewOutput> output;

@end
