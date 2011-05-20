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
    
    [mainScrollView setDocumentView:hotColdVC.view];
    
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

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    return 5;
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    
    NSString *cellString = @"";
    
    switch (rowIndex) {
        case 0:
            cellString = @"Heating & Cooling";
            break;
        case 1:
            cellString = @"Kitchen";
            break;
        case 2:
            cellString = @"Electronics";
            break;
        case 3:
            cellString = @"Lighting";
            break;
        case 4:
            cellString = @"Transit";
            break;
        default:
            break;
    }
    
    return cellString;
}

- (void)tableView:(NSTableView *)aTableView willDisplayCell:(id)aCell forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    
    NSView *newView = hotColdVC.view;
    
    switch (rowIndex) {
        case 0:
            newView = hotColdVC.view;    
            break;
        case 1:
            newView = kitchenVC.view;
            break;
        case 2:
            newView = electronicsVC.view;
            break;
        case 3:
            newView = lightingVC.view;
            break;
        case 4:
            newView = transitVC.view;
            break;
        default:
            break;
    }
    
    [mainScrollView setDocumentView: newView];
}

@end
