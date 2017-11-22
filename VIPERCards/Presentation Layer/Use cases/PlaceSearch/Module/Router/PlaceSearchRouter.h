//
//  PlaceSearchRouter.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface PlaceSearchRouter : NSObject <PlaceSearchRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
