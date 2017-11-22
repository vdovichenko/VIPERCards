//
//  PlaceSearchModuleInput.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol PlaceSearchModuleInput <RamblerViperModuleInput>

/**
 @author Vdovychenko Dmytro

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
