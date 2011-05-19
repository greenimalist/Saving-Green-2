//
//  HotColdVC.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HotColdVC.h"


@implementation HotColdVC
@synthesize heater, cooler;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        heater = [[Appliance alloc] init];
        heater.numberOfAppliances = 1;
        heater.hoursPerDay = 12;
        heater.monthsPerYear = 6;
        
        cooler = [[Appliance alloc] init];
        cooler.numberOfAppliances = 1;
        cooler.hoursPerDay = 12;
        cooler.monthsPerYear = 6;
    }
    
    return self;
}

- (void)dealloc
{
    [heater release];
    [cooler release];
    [super dealloc];
}

@end
