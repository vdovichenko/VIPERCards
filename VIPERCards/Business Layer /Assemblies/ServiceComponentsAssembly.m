//
//  ServiceComponentsAssembly.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "ServiceComponentsAssembly.h"
#import "SearchServiceImplementation.h"
#import "NetworkClientAssembly.h"
#import "RequestBuildersAssembly.h"

@implementation ServiceComponentsAssembly

- (id<SearchService>)searchService {
    return [TyphoonDefinition withClass:[SearchServiceImplementation class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNetworkClient:requestBuilder:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self.networkClientAssembly networkClient]];
            [initializer injectParameterWith:[self.requestBuilderAssembly requestBuilder]];
        }];
    }];
}

@end
