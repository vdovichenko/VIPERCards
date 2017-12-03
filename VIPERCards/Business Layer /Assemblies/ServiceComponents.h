//
//  ServiceComponents.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchService.h"

@protocol ServiceComponents <NSObject>
- (id<SearchService>)searchService;
@end
