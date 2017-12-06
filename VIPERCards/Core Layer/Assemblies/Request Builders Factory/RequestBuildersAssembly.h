//
//  RequestBuildersAssembly.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "RequestBuildersFactory.h"
#import "RequestSignersFactory.h"

@interface RequestBuildersAssembly : TyphoonAssembly <RequestBuildersFactory>
@property (nonatomic, strong, readonly) TyphoonAssembly <RequestSignersFactory> *requestSignersFactory;
@end
