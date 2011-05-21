//
//  SavingGreenAppDelegate.h
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SavingGreenAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate, NSSplitViewDelegate> {
        
    NSArray *categoryVCs;
    IBOutlet NSScrollView *mainScrollView;
    
    int perGallonInCents;
    int perKWHInCents;
    int perThermInCents;
    
    double perGallon;
    double perKWH;
    double perTherm;
    
    NSMutableArray *iconAttachments;
    
@private
    IBOutlet NSWindow *window;
    IBOutlet NSTableView *sidebar;
}

@property (retain) NSArray *categoryVCs;

@property int perGallonInCents;
@property int perKWHInCents;
@property int perThermInCents;
@property double perGallon;
@property double perKWH;
@property double perTherm;

- (void)generateIconAttachments;

@end
