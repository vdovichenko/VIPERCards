//
//  RequestConfiguration.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTPMethodConstants.h"
#import "RequestSigningType.h"

@interface RequestConfiguration : NSObject
@property (nonatomic, strong) NSString *httpMethod;
@property (strong, nonatomic) NSURL *URL;
@property (strong, nonatomic) NSDictionary *queryParameters;
@property (strong, nonatomic) NSDictionary *httpHeaderFields;
@property (strong, nonatomic) NSData *body;
@property (nonatomic, assign) RequestSigningType signingType;
@end
