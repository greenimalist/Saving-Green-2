//
//  HotColdVC.h
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Appliance.h"
#import "CategoryVC.h"

@interface HotColdVC : CategoryVC {
    
    Appliance *heater;
    Appliance *cooler;
    Appliance *hairDrier;
    Appliance *clothesDrier;
@private
    
}

@property (readonly) Appliance *heater;
@property (readonly) Appliance *cooler;
@property (readonly) Appliance *hairDrier;
@property (readonly) Appliance *clothesDrier;

- (IBAction)removeLint:(NSButton *)sender;

@end
