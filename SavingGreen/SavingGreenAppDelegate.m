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
    [[[tabView tabViewItemAtIndex:0] view] addSubview:hotColdVC.view];
    kitchenVC = [[KitchenVC alloc] initWithNibName:@"KitchenVC" bundle:nil];
    [[[tabView tabViewItemAtIndex:1] view] addSubview:kitchenVC.view];
    electronicsVC = [[ElectronicsVC alloc] initWithNibName:@"ElectronicsVC" bundle:nil];
    [[[tabView tabViewItemAtIndex:2] view] addSubview:electronicsVC.view];
    lightingVC = [[LightingVC alloc] initWithNibName:@"LightingVC" bundle:nil];
    [[[tabView tabViewItemAtIndex:3] view] addSubview:lightingVC.view];
    transitVC = [[TransitVC alloc] initWithNibName:@"TransitVC" bundle:nil];
    [[[tabView tabViewItemAtIndex:4] view] addSubview:transitVC.view];
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
