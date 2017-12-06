//
//  NetworkClient.h
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ServiceResponse;

typedef void(^NetworkClientCompletionBlock)(ServiceResponse *response, NSError *error);

@protocol NetworkClient <NSObject>
- (void)sendRequest:(NSURLRequest *)request
         completion:(NetworkClientCompletionBlock)completion;
@end
