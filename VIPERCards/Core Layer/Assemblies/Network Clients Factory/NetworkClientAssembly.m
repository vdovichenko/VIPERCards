//
//  NetworkClientAssembly.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "NetworkClientAssembly.h"
#import "SessionNetworkClient.h"

@implementation NetworkClientAssembly

- (id<NetworkClient>)networkClient {
    return [TyphoonDefinition withClass:[SessionNetworkClient class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithUrlSession:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[NSURLSession sharedSession]];
        }];
    }];
}

@end
