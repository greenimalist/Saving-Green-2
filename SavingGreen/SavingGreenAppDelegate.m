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
    
//    Appliance *app = [[Appliance alloc] init];
//    app.powerRating = 500.0;
//    app.numberOfAppliances = 2;
//    app.minutesPerDay = 40;
//    app.monthsPerYear = 6;
//    
//    NSLog(@"Monthly Cost:%f, Annual Cost:%f", [app monthlyCost:0.15], [app annualCost:0.15 givenMonths:4]);
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
