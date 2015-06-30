//
//  TournamentViewController.m
//  ChallongeMobileiOS
//
//  Created by Brandon R on 6/29/15.
//  Copyright © 2015 Brandon R. All rights reserved.
//

#import "TournamentViewController.h"

@interface TournamentViewController ()

@end

@implementation TournamentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url;
    if([_organization isEqualToString:@""])
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://challonge.com/%@/module", _tag]];
    else
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@.challonge.com/%@/module", _organization, _tag]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
