//
//  HotColdVC.h
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Appliance.h"

@interface HotColdVC : NSViewController {
    
    Appliance *heater;
    Appliance *cooler;
@private
    
}

@property (readonly) Appliance *heater;
@property (readonly) Appliance *cooler;

@end
