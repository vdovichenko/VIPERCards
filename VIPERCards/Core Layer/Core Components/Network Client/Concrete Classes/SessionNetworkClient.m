//
//  SessionNetworkClient.m
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "SessionNetworkClient.h"
#import "ServiceResponse.h"

@interface SessionNetworkClient()
@property (nonatomic, strong) NSURLSession *session;
@end

@implementation SessionNetworkClient

- (instancetype)initWithUrlSession:(NSURLSession *)session {
    self = [super init];
    if (self) {
        _session = session;
    }
    return self;
}

- (void)sendRequest:(NSURLRequest *)request completion:(NetworkClientCompletionBlock)completion {
    NSURLSessionDataTask *task = [self.session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (!completion) {
            return;
        }
        
        NSHTTPURLResponse *httpResponse = nil;
        if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
            httpResponse = (NSHTTPURLResponse *)response;
        }
        
        ServiceResponse *serviceResponse = [[ServiceResponse alloc] initWithResponse:httpResponse data:data];
        completion(serviceResponse, error);
    }];
    [task resume];
}

@end
