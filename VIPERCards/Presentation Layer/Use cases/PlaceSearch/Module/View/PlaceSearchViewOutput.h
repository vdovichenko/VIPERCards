//
//  PlaceSearchViewOutput.h
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlaceSearchViewOutput <NSObject>

- (void)didTriggerViewReadyEvent;
- (void)searchFieldTextDidChange:(NSString *)text;

@end
