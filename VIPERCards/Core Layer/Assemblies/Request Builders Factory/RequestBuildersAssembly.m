//
//  RequestBuildersAssembly.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "RequestBuildersAssembly.h"
#import "CommonRequestBuilder.h"
#import "RequestSignersAssembly.h"

@implementation RequestBuildersAssembly

- (id<RequestBuilder>)requestBuilder {
    return [TyphoonDefinition withClass:[CommonRequestBuilder class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithRequestSignersFactory:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self requestSignersFactory]];
        }];
    }];
}

- (id<RequestSignersFactory>)requestSignersFactory {
    return [TyphoonDefinition withClass:[RequestSignersAssembly class]];
}

@end
