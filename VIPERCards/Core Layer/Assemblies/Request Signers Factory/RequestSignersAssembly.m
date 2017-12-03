//
//  RequestSignersAssembly.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "RequestSignersAssembly.h"
#import "RequestSigningType.h"
#import "GoogleRequestSigner.h"

static NSString * const kGoogleApiKey   = @"APIKey";
static NSString * const kConfigFileName = @"Places.Google.plist";

@implementation RequestSignersAssembly

- (id<RequestSigner>)requestSignerWithType:(NSNumber *)type {
    return [TyphoonDefinition withOption:type matcher:^(TyphoonOptionMatcher *matcher) {
        [matcher caseEqual:@(RequestSigningTypeGoogleAPI) use:[self googleRequestSigner]];
    }];
}

- (id<RequestSigner>)googleRequestSigner {
    return [TyphoonDefinition withClass:[GoogleRequestSigner class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithAPIKey:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:TyphoonConfig(kGoogleApiKey)];
        }];
    }];
}

- (id)configurer {
    return [TyphoonDefinition withConfigName:kConfigFileName];
}

@end
