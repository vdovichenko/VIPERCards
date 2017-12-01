//
//  ServiceResponse.h
//  VIPERCards
//
//  Created by Dmytro Vdovychenko on 11/30/17.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceResponse : NSObject

- (instancetype)initWithResponse:(NSHTTPURLResponse *)response
                            data:(NSData *)data;

@property (nonatomic, strong, readonly) NSHTTPURLResponse *response;
@property (nonatomic, strong, readonly) NSData *data;

@end
