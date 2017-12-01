//
//  ServiceResponse.m
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "ServiceResponse.h"

@interface ServiceResponse()
@property (nonatomic, strong) NSHTTPURLResponse *response;
@property (nonatomic, strong) NSData *data;
@end

@implementation ServiceResponse

- (instancetype)initWithResponse:(NSHTTPURLResponse *)response data:(NSData *)data {
    self = [super init];
    if (self) {
        _response = response;
        _data = data;
    }
    return self;
}

@end
