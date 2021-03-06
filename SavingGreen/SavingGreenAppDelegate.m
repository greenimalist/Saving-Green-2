//
//  SavingGreenAppDelegate.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SavingGreenAppDelegate.h"
#import "CategoryVC.h"
#import "TutorialVC.h"
#import "HotColdVC.h"
#import "KitchenVC.h"
#import "ElectronicsVC.h"
#import "LightingVC.h"
#import "TransitVC.h"

@implementation SavingGreenAppDelegate

@synthesize perGallonInCents;
@synthesize perKWHInCents;
@synthesize perThermInCents;
@synthesize perGallon;
@synthesize perKWH;
@synthesize perTherm;

@synthesize categoryVCs;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.perGallonInCents = 425;
    self.perKWHInCents = 15;
    self.perThermInCents = 130;
    self.perGallon = 4.25;
    self.perKWH = 0.15;
    self.perTherm = 1.30;
    
    CategoryVC *tutorialVC = [[TutorialVC alloc] initWithNibName:@"TutorialVC" bundle:nil];
    tutorialVC.title = @"Tutorial";
    CategoryVC *hotColdVC = [[HotColdVC alloc] initWithNibName:@"HotColdVC" bundle:nil]; 
    hotColdVC.title = @"Heating & Cooling";
    CategoryVC *kitchenVC = [[KitchenVC alloc] initWithNibName:@"KitchenVC" bundle:nil];
    kitchenVC.title = @"Kitchen";
    CategoryVC *electronicsVC = [[ElectronicsVC alloc] initWithNibName:@"ElectronicsVC" bundle:nil];
    electronicsVC.title = @"Electronics";
    CategoryVC *lightingVC = [[LightingVC alloc] initWithNibName:@"LightingVC" bundle:nil];
    lightingVC.title = @"Lighting";
    CategoryVC *transitVC = [[TransitVC alloc] initWithNibName:@"TransitVC" bundle:nil];
    transitVC.title = @"Transit";
    
    categoryVCs = [[NSArray alloc] initWithObjects:hotColdVC, kitchenVC, electronicsVC, lightingVC, transitVC, nil];
    [hotColdVC release];
    [kitchenVC release];
    [electronicsVC release];
    [lightingVC release];
    [transitVC release];
    
    [mainScrollView setDocumentView:tutorialVC.view];
    [sidebar reloadData];
}

- (void)generateIconAttachments {

    if (iconAttachments != nil)
        return;
    
    iconAttachments = [[NSMutableArray alloc] init];
    
    NSImage *hotColdImage = [NSImage imageNamed:@"hotColdIcon.png"];
    NSImage *kitchenImage = [NSImage imageNamed:@"kitchenIcon.png"];
    NSImage *electronicsImage = [NSImage imageNamed:@"electronicsIcon.png"];
    NSImage *lightingImage = [NSImage imageNamed:@"lightingIcon.png"];
    NSImage *transitImage = [NSImage imageNamed:@"transitIcon.png"];
    NSImage *totalImage = [NSImage imageNamed:@"totalIcon.png"];
    
    

    NSArray *imagesArray = [NSArray arrayWithObjects:hotColdImage, kitchenImage, electronicsImage, lightingImage, transitImage, totalImage, nil];
        
    for (NSImage *image in imagesArray)
    {
        NSFileWrapper *fwrap = [[[NSFileWrapper alloc] initRegularFileWithContents:[image TIFFRepresentation]] autorelease];
        NSString *imageName = [image name];        
        imageName = [imageName stringByAppendingPathExtension: @".tiff"];
        [fwrap setFilename: imageName];
        [fwrap setPreferredFilename: imageName];
        NSTextAttachment *imageAttachment = [[[NSTextAttachment alloc] initWithFileWrapper:fwrap] autorelease];
        [iconAttachments addObject:imageAttachment];
        NSLog(@"PNG: %@", image);
        NSLog(@"TIFF: %@", [image TIFFRepresentation]);
    }
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
}


- (void)dealloc {
    [categoryVCs release];
    [iconAttachments release];
    [super dealloc];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    return [categoryVCs count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {

    [self generateIconAttachments];
    
    NSString *title = [(CategoryVC *)[categoryVCs objectAtIndex:rowIndex] title];
    
    NSMutableAttributedString *result = [[NSMutableAttributedString alloc] initWithString:title];

    NSTextAttachment *attachment = [iconAttachments objectAtIndex:rowIndex];
        
    [result appendAttributedString: [NSAttributedString attributedStringWithAttachment: attachment]];
    
    return result;
}

- (void)tableViewSelectionDidChange:(NSNotification *)aNotification {    
    NSInteger rowIndex = [sidebar selectedRow];
    
    NSView *newView = [[categoryVCs objectAtIndex:rowIndex] view];
    
    NSPoint topLeft = NSMakePoint(0.0,NSMaxY([[mainScrollView documentView] frame])-NSHeight([[mainScrollView contentView] bounds]));
////    
    [mainScrollView setDocumentView: newView];
    [[mainScrollView contentView] scrollPoint:topLeft];
//    [[mainScrollView contentView] scrollToPoint:NSMakePoint(0, 200.0)];

//    [[mainScrollView verticalScroller] setFloatValue:0.0];
}

- (BOOL)tableView:(NSTableView *)tableView shouldShowCellExpansionForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return NO;
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

// Split View Delegate Methods

//- (BOOL)splitView:(NSSplitView *)splitView
//shouldAdjustSizeOfSubview:(NSView *)subview {
//    return NO;
//}

@end
