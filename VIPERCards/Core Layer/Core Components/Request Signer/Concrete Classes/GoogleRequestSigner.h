//
//  GoogleRequestSigner.h
//  VIPERCards
//
//  Created by Dmitry Vdovichenko on 03.12.2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "RequestSigner.h"

@interface GoogleRequestSigner : NSObject <RequestSigner>
- (instancetype)initWithAPIKey:(NSString *)apiKey;
@end
