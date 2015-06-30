//
//  TournamentViewController.h
//  ChallongeMobileiOS
//
//  Created by Brandon R on 6/29/15.
//  Copyright © 2015 Brandon R. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TournamentViewController : UIViewController<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, weak) NSString *tag;
@property (nonatomic, weak) NSString *organization;

@end
