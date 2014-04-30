//
//  FUNJailbreakDetector.m
//  funtime
//
//  Created by mg on 30/04/2014.
//  Copyright (c) 2014 bitcraft. All rights reserved.
//

#import "FUNJailbreakDetector.h"

@implementation FUNJailbreakDetector

// Got this code as a top answer off Stack Overflow so you know it's robust and unbreakable....

+ (BOOL) checkIfDeviceIsJailbroken {
    
    BOOL isJailbroken = NO;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:@"/Applications/Cydia.app"]) {
        isJailbroken = YES;
    }
    
    return isJailbroken;
}

@end
