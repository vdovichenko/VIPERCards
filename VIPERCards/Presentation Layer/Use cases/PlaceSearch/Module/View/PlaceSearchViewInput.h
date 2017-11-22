//
//  PlaceSearchViewInput.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlaceSearchViewInput <NSObject>

/**
 @author Vdovychenko Dmytro

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end
