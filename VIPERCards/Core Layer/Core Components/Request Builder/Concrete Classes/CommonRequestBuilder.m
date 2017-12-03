//
//  CommonRequestBuilder.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "CommonRequestBuilder.h"
#import "RequestConfiguration.h"

@interface CommonRequestBuilder()
@property (nonatomic, strong) id<RequestSignersFactory> requestSignersFactory;
@end

@implementation CommonRequestBuilder

- (instancetype)initWithRequestSignersFactory:(id<RequestSignersFactory>)requestSignersFactory {
    self = [super init];
    if (self) {
        _requestSignersFactory = requestSignersFactory;
    }
    return self;
}

- (NSURLRequest *)buildWithConfiguration:(RequestConfiguration *)configuration {
    
    NSMutableArray *queryItems = [[NSMutableArray alloc] init];
    [configuration.queryParameters enumerateKeysAndObjectsUsingBlock:^(NSString *key, NSString *obj, BOOL *stop) {
        NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:key value:obj];
        [queryItems addObject:item];
    }];
    
    NSURLComponents *components = [NSURLComponents componentsWithURL:configuration.URL resolvingAgainstBaseURL:NO];
    components.queryItems = [queryItems copy];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:components.URL];
    
    request.HTTPMethod = configuration.httpMethod;
    request.HTTPBody = configuration.body;
    request.allHTTPHeaderFields = configuration.httpHeaderFields;
    
    id<RequestSigner> requestSigner = [self.requestSignersFactory requestSignerWithType:@(configuration.signingType)];
    if (requestSigner) {
        return [requestSigner signRequest:request];
    }

    return [request copy];
}

@end
