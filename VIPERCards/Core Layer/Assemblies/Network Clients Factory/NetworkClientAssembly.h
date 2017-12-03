//
//  NetworkClientAssembly.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "NetworkClientsFactory.h"

@interface NetworkClientAssembly : TyphoonAssembly <NetworkClientsFactory>
@end
