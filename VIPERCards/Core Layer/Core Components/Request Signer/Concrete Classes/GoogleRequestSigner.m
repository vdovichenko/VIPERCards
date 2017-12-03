//
//  GoogleRequestSigner.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "GoogleRequestSigner.h"

static NSString * const kGoogleApiQueryKeyParameter = @"key";

@interface GoogleRequestSigner()
@property (nonatomic, strong) NSString *apiKey;
@end

@implementation GoogleRequestSigner

- (instancetype)initWithAPIKey:(NSString *)apiKey {
    
    self = [super init];
    if (self) {
        _apiKey = apiKey;
    }
    return self;
}

- (NSURLRequest *)signRequest:(NSURLRequest *)request {

    if ([self findQueryItemWithName:kGoogleApiQueryKeyParameter reqest:request]) {
        return request;
    }
    
    NSURLComponents *components = [self componentsForRequest:request];
    NSMutableArray *queryItems = [components.queryItems mutableCopy];
    
    NSURLQueryItem *keyItem = [NSURLQueryItem queryItemWithName:kGoogleApiQueryKeyParameter value:self.apiKey];
    [queryItems addObject:keyItem];
    [components setQueryItems:queryItems];
    
    NSMutableURLRequest *result = [request mutableCopy];
    result.URL = [components URL];
    
    return [result copy];
}

- (NSURLQueryItem *)findQueryItemWithName:(NSString *)name
                                   reqest:(NSURLRequest *)request {
    
    NSURLComponents *components = [self componentsForRequest:request];
    for (NSURLQueryItem *item in components.queryItems) {
        if ([item.name isEqualToString:kGoogleApiQueryKeyParameter]) {
            return item;
        }
    }
    return nil;
}

- (NSURLComponents *)componentsForRequest:(NSURLRequest *)request {
    
    NSURLComponents *components = [NSURLComponents componentsWithURL:request.URL
                                             resolvingAgainstBaseURL:NO];
    return components;
}

@end
