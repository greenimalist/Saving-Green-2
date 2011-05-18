//
//  SavingGreenAppDelegate.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SavingGreenAppDelegate.h"

@implementation SavingGreenAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    hotColdVC = [[HotColdVC alloc] initWithNibName:@"HotColdVC" bundle:nil];    
    kitchenVC = [[KitchenVC alloc] initWithNibName:@"KitchenVC" bundle:nil];
    electronicsVC = [[ElectronicsVC alloc] initWithNibName:@"ElectronicsVC" bundle:nil];
    lightingVC = [[LightingVC alloc] initWithNibName:@"LightingVC" bundle:nil];
    transitVC = [[TransitVC alloc] initWithNibName:@"TransitVC" bundle:nil];
    
    [mainView addSubview:hotColdVC.view];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {

}


- (void)dealloc {
    [hotColdVC release];
    [kitchenVC release];
    [electronicsVC release];
    [lightingVC release];
    [transitVC release];
    [super dealloc];
}


@end
