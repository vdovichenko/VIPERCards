//
//  PlaceSearchViewController.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchViewController.h"

#import "PlaceSearchViewOutput.h"

@implementation PlaceSearchViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.output didTriggerViewReadyEvent];
}

#pragma mark -

- (void)setupInitialState {
}

@end
