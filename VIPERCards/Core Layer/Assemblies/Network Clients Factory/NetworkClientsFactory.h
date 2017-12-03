//
//  NetworkClientsFactory.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkClient.h"

@protocol NetworkClientsFactory <NSObject>
- (id<NetworkClient>)networkClient;
@end
