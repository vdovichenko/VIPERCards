//
//  CommonRequestBuilder.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "RequestBuilder.h"
#import "RequestSignersFactory.h"

@interface CommonRequestBuilder : NSObject <RequestBuilder>
- (instancetype)initWithRequestSignersFactory:(id<RequestSignersFactory>)requestSignersFactory;
@end
