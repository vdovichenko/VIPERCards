//
//  SessionNetworkClient.h
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "NetworkClient.h"

@interface SessionNetworkClient : NSObject <NetworkClient>
- (instancetype)initWithUrlSession:(NSURLSession *)session;
@end
