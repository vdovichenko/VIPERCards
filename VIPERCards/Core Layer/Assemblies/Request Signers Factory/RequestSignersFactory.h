//
//  RequestSignersFactory.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestSigningType.h"
#import "RequestSigner.h"

@protocol RequestSignersFactory <NSObject>
- (id<RequestSigner>)requestSignerWithType:(NSNumber *)type;
@end
