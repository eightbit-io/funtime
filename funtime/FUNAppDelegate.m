//
//  FUNAppDelegate.m
//  funtime
//
//  Created by mg on 30/04/2014.
//  Copyright (c) 2014 bitcraft. All rights reserved.
//

#import "FUNAppDelegate.h"
#import "FUNViewController.h"

@implementation FUNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Set up window
    
    UIScreen *screen = [UIScreen mainScreen];
    CGRect frame = [screen bounds];
    self.window = [[UIWindow alloc] initWithFrame:frame];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *viewController = [[FUNViewController alloc] init];
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
