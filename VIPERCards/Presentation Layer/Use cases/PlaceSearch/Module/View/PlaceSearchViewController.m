//
//  PlaceSearchViewController.m
//  GooglePlaces
//
//  Created by Vdovychenko Dmytro on 22/11/2017.
//  Copyright © 2017 Dmytro Vdovychenko. All rights reserved.
//

#import "PlaceSearchViewController.h"
#import "PlaceSearchViewOutput.h"

@interface PlaceSearchViewController() <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation PlaceSearchViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - PlaceSearchViewInput

- (void)setupInitialState {
}

- (void)showSpinner {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

- (void)hideSpinner {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

#pragma mark - UISearchBarDelegate

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    [self.output searchFieldTextDidChange:searchText];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
}

@end
