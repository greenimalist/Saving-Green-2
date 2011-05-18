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
    calcChartTabVC = [[CalcChartTabVC alloc] initWithNibName:@"CalcChartTabVC" bundle:nil];
    [[[tabView tabViewItemAtIndex:0] view] addSubview:calcChartTabVC.view];
    [[[tabView tabViewItemAtIndex:1] view] addSubview:calcChartTabVC.view];
    [[[tabView tabViewItemAtIndex:2] view] addSubview:calcChartTabVC.view];
    [[[tabView tabViewItemAtIndex:3] view] addSubview:calcChartTabVC.view];
    [[[tabView tabViewItemAtIndex:4] view] addSubview:calcChartTabVC.view];
    
    hotColdVC = [[HotColdVC alloc] initWithNibName:@"HotColdVC" bundle:nil];
    kitchenVC = [[KitchenVC alloc] initWithNibName:@"KitchenVC" bundle:nil];
    electronicsVC = [[ElectronicsVC alloc] initWithNibName:@"ElectronicsVC" bundle:nil];
    lightingVC = [[LightingVC alloc] initWithNibName:@"LightingVC" bundle:nil];
    transitVC = [[TransitVC alloc] initWithNibName:@"TransitVC" bundle:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {

}

- (void)tabView:(NSTabView *)tabView willSelectTabViewItem:(NSTabViewItem *)tabViewItem {
    //    NSLog(@"Will select Tab#%d", [tabView indexOfTabViewItem:tabViewItem]);
}

- (void)tabView:(NSTabView *)tabView didSelectTabViewItem:(NSTabViewItem *)tabViewItem {
    //    NSLog(@"Did select Tab#%d", [tabView indexOfTabViewItem:tabViewItem]);
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
