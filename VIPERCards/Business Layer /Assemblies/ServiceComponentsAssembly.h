//
//  ServiceComponentsAssembly.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "ServiceComponents.h"
@class NetworkClientAssembly;
@class RequestBuildersAssembly;

@interface ServiceComponentsAssembly : TyphoonAssembly <ServiceComponents>
@property (strong, nonatomic) NetworkClientAssembly *networkClientAssembly;
@property (strong, nonatomic) RequestBuildersAssembly *requestBuilderAssembly;
@end
