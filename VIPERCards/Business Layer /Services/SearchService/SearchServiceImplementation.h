//
//  SearchServiceImplementation.h
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "NetworkClient.h"
#import "RequestBuilder.h"
#import "SearchService.h"

typedef NS_ENUM(NSUInteger, SearchServiceError) {
    SearchServiceErrorUnknown = 0,
    SearchServiceErrorNoResults
};

@interface SearchServiceImplementation : NSObject <SearchService>
- (instancetype)initWithNetworkClient:(id<NetworkClient>)networkClient
                       requestBuilder:(id<RequestBuilder>)requestBuilder;
@end
