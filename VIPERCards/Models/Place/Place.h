//
//  Place.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 05.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject

@property (strong, nonatomic, readonly) NSString *id;
@property (strong, nonatomic, readonly) NSString *name;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
