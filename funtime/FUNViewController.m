//
//  FUNViewController.m
//  funtime
//
//  Created by mg on 30/04/2014.
//  Copyright (c) 2014 bitcraft. All rights reserved.
//

#import "FUNViewController.h"
#import "FUNJailbreakDetector.h"

@implementation FUNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.titleText = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 80.0f, 280.0f, 60.0f)];
    self.titleText.text = @"WELCOME TO THE FUNTIMES";
    self.titleText.numberOfLines = 2;
    self.titleText.font = [UIFont boldSystemFontOfSize:24.0f];
    self.titleText.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.titleText];
    
    
    self.instructionText = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 180.0f, 280.0f, 60.0f)];
    self.instructionText.text = @"Tap the CHECK NOW button to see if we are Jailbroken";
    self.instructionText.numberOfLines = 2;
    self.instructionText.font = [UIFont systemFontOfSize:14.0f];
    self.instructionText.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.instructionText];
    
    self.checkButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.checkButton.frame = CGRectMake(0.0f, 0.0f, 80.0f, 40.0f);
    self.checkButton.center = self.view.center;
    
    [self.checkButton setTitle:@"Check Now" forState:UIControlStateNormal];
    
    [self.checkButton addTarget:self
                      action:@selector(showUserJailbreakStatus:)
                      forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.checkButton];
    
}

- (void) showUserJailbreakStatus:(UIButton *)paramSender {
    
    if ([FUNJailbreakDetector checkIfDeviceIsJailbroken]) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Jailbreak Status"
                              message:@"Don't you know jailbreaking is bad?"
                              delegate:nil cancelButtonTitle:@"Im Sorry"
                              otherButtonTitles:nil, nil];
        
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Jailbreak Status"
                              message:@"You win at hacking!"
                              delegate:nil cancelButtonTitle:@"Thanks"
                              otherButtonTitles:nil, nil];
        
        [alert show];
    }
    
}

@end