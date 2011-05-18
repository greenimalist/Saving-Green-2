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

@interface SavingGreenAppDelegate : NSObject <NSApplicationDelegate, NSTabViewDelegate> {
    
    HotColdVC *hotColdVC;
    KitchenVC *kitchenVC;
    ElectronicsVC *electronicsVC;
    LightingVC *lightingVC;
    TransitVC *transitVC;

    IBOutlet NSTabView *tabView;
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
