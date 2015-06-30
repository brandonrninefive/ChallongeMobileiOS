//
//  TournamentSearchViewController.m
//  ChallongeMobileiOS
//
//  Created by Brandon R on 6/29/15.
//  Copyright © 2015 Brandon R. All rights reserved.
//

#import "TournamentSearchViewController.h"
#import "TournamentViewController.h"

@interface TournamentSearchViewController ()
{
    
    __weak IBOutlet UITextField *tagField;
    
    __weak IBOutlet UITextField *organizationField;
}

@end

@implementation TournamentSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tagField.delegate = self;
    organizationField.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(nonnull NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(BOOL)textFieldShouldReturn:(nonnull UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)searchForTournament:(UIButton *)sender {
    NSString *tag = tagField.text;
    NSString *organization = organizationField.text;
    
    TournamentViewController *tournamentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TournamentViewController"];
    
    tournamentViewController.tag = tag;
    tournamentViewController.organization = organization;
    
    [self.navigationController pushViewController:tournamentViewController animated:YES];
}

@end
