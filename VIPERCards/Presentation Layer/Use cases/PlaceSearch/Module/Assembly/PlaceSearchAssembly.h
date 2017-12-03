//
//  PlaceSearchAssembly.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Typhoon/Typhoon.h>
@class ServiceComponentsAssembly;

@interface PlaceSearchAssembly : TyphoonAssembly
@property (strong, nonatomic) ServiceComponentsAssembly *serviceComponentsAssembly;
@end
