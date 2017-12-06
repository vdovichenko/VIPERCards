//
//  Place.m
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 05.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "Place.h"

static NSString * const kIdKey = @"id";
static NSString * const kDescriptionKey = @"description";

@implementation Place

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _id = dictionary[kIdKey];
        _name = dictionary[kDescriptionKey];
    }
    return self;
}

@end
