//
//  SavingGreenAppDelegate.h
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HotColdVC.h"
#import "KitchenVC.h"
#import "ElectronicsVC.h"
#import "LightingVC.h"
#import "TransitVC.h"

@interface SavingGreenAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate> {
    
    HotColdVC *hotColdVC;
    KitchenVC *kitchenVC;
    ElectronicsVC *electronicsVC;
    LightingVC *lightingVC;
    TransitVC *transitVC;
    
    NSArray *arrayOfVCs;
    IBOutlet NSScrollView *mainScrollView;
    
    int perGallonInCents;
    int perKWHInCents;
    int perThermInCents;
    
    double perGallon;
    double perKWH;
    double perTherm;
    
    NSMutableArray *iconAttachments;
    
@private
    NSWindow *window;
    IBOutlet NSTableView *sidebar;
}

@property (assign) IBOutlet NSWindow *window;
@property (retain) NSArray *arrayOfVCs;

@property int perGallonInCents;
@property int perKWHInCents;
@property int perThermInCents;
@property double perGallon;
@property double perKWH;
@property double perTherm;

- (void)generateIconAttachments;

@end
