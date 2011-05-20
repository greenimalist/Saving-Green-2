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
@synthesize perGallonInCents;
@synthesize perKWHInCents;
@synthesize perThermInCents;
@synthesize perGallon;
@synthesize perKWH;
@synthesize perTherm;

@synthesize arrayOfVCs;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.perGallonInCents = 425;
    self.perKWHInCents = 15;
    self.perThermInCents = 130;
    self.perGallon = 4.25;
    self.perKWH = 0.15;
    self.perTherm = 1.30;
    
    hotColdVC = [[HotColdVC alloc] initWithNibName:@"HotColdVC" bundle:nil]; 
    hotColdVC.title = @"Heating & Cooling";
    kitchenVC = [[KitchenVC alloc] initWithNibName:@"KitchenVC" bundle:nil];
    kitchenVC.title = @"Kitchen";
    electronicsVC = [[ElectronicsVC alloc] initWithNibName:@"ElectronicsVC" bundle:nil];
    electronicsVC.title = @"Electronics";
    lightingVC = [[LightingVC alloc] initWithNibName:@"LightingVC" bundle:nil];
    lightingVC.title = @"Lighting";
    transitVC = [[TransitVC alloc] initWithNibName:@"TransitVC" bundle:nil];
    transitVC.title = @"Transit";
    
    arrayOfVCs = [[NSArray alloc] initWithObjects:hotColdVC, kitchenVC, electronicsVC, lightingVC, transitVC, nil];
    
    [mainScrollView setDocumentView:hotColdVC.view];
    [sidebar reloadData];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
}


- (void)dealloc {
    [hotColdVC release];
    [kitchenVC release];
    [electronicsVC release];
    [lightingVC release];
    [transitVC release];
    [arrayOfVCs release];
    [super dealloc];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    return [arrayOfVCs count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {

    NSString *result = [(NSViewController *)[arrayOfVCs objectAtIndex:rowIndex] title];
    return result;
}

- (void)tableView:(NSTableView *)aTableView willDisplayCell:(id)aCell forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    
    NSView *newView = [[arrayOfVCs objectAtIndex:rowIndex] view];
    
    NSPoint topLeft = NSMakePoint(0.0,NSMaxY([[mainScrollView documentView] frame])-NSHeight([[mainScrollView contentView] bounds]));
    
    [mainScrollView setDocumentView: newView];
    [[mainScrollView contentView] scrollToPoint:topLeft];
}

- (void)setValue:(id)value forKey:(NSString *)key {
    
    [super setValue:value forKey:key];
    
    NSString *newKey = [key stringByReplacingOccurrencesOfString:@"InCents" withString:@""];
    NSNumber *newValue = [NSNumber numberWithDouble:[value intValue]/100.0];
    [super setValue:newValue forKey:newKey];
    
    NSLog(@"Key: %@, Value: %@", newKey, newValue);
    
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setDouble:[newValue doubleValue] forKey:newKey];
    
}


@end
