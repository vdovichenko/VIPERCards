//
//  RequestBuildersFactory.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestBuilder.h"

@protocol RequestBuildersFactory <NSObject>
- (id<RequestBuilder>)requestBuilder;
@end
