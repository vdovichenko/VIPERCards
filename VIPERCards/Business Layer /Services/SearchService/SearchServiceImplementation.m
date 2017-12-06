//
//  SearchServiceImplementation.m
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "SearchServiceImplementation.h"
#import "RequestConfiguration.h"
#import "ServiceResponse.h"
#import "Place.h"

static NSString * const kInputKey = @"input";
static NSString * const kPredictionsKey = @"predictions";

@interface SearchServiceImplementation()
@property (nonatomic, strong) id<NetworkClient> networkClient;
@property (nonatomic, strong) id<RequestBuilder> requestBuilder;
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

#pragma mark - SearchService

- (void)getPlacesWithName:(NSString *)name completion:(PlacesCompletionBlock)completion {
    
    if (!name.length) {
        return;
    }
    
    RequestConfiguration *configuration = [[RequestConfiguration alloc] init];
    configuration.httpMethod = kHTTPMethodGET;
    configuration.URL = [NSURL URLWithString:@"https://maps.googleapis.com/maps/api/place/queryautocomplete/json"];
    configuration.queryParameters = @{kInputKey : name};
    configuration.signingType = RequestSigningTypeGoogleAPI;
    
    NSURLRequest *request = [self.requestBuilder buildWithConfiguration:configuration];
    [self.networkClient sendRequest:request completion:^(ServiceResponse *response, NSError *error) {
        
        if (error) {
            completion(nil, error);
            return;
        }
        
        // TODO, dvdov: implement response serializer
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:response.data options:NSJSONReadingAllowFragments error:nil];
        if (![json isKindOfClass:[NSDictionary class]]) {
            completion(nil, [SearchServiceImplementation errorWithCode:SearchServiceErrorNoResults]);
            return;
        }
        
        NSArray *results = json[kPredictionsKey];
        if (!results.count) {
            completion(nil, [SearchServiceImplementation errorWithCode:SearchServiceErrorNoResults]);
            return;
        }
        
        NSMutableArray *places = [NSMutableArray arrayWithCapacity:results.count];
        for (NSDictionary *placeDictionary in results) {
            Place *place = [[Place alloc] initWithDictionary:placeDictionary];
            [places addObject:place];
        }
        
        completion([places copy], nil);
    }];
}

#pragma mark - Utils

+ (NSError *)errorWithCode:(SearchServiceError)code {
    return [NSError errorWithDomain:NSStringFromClass(self) code:code userInfo:nil];
}

@end
