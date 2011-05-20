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
    IBOutlet NSScrollView *mainScrollView;
    
    int perGallonInCents;
    int perKWHInCents;
    int perThermInCents;
    
    double perGallon;
    double perKWH;
    double perTherm;

@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@property int perGallonInCents;
@property int perKWHInCents;
@property int perThermInCents;
@property double perGallon;
@property double perKWH;
@property double perTherm;


@end
