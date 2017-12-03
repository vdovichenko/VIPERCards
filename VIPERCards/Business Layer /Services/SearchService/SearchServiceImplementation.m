//
//  SearchServiceImplementation.m
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "SearchServiceImplementation.h"

@interface SearchServiceImplementation()
@property (nonatomic, strong) id<NetworkClient>networkClient;
@property (nonatomic, strong) id<RequestBuilder>requestBuilder;
@end

@implementation SearchServiceImplementation

- (instancetype)initWithNetworkClient:(id<NetworkClient>)networkClient
                       requestBuilder:(id<RequestBuilder>)requestBuilder {
    self = [super init];
    if (self) {
        _networkClient = networkClient;
        _requestBuilder = requestBuilder;
    }
    return self;
}

@end
