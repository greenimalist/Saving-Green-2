//
//  HotColdVC.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HotColdVC.h"


@implementation HotColdVC
@synthesize heater, cooler, hairDrier, clothesDrier;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        heater = [[Appliance alloc] init];
        heater.powerRating = 7941;
        heater.numberOfAppliances = 1;
        heater.hoursPerDay = 12;
        heater.monthsPerYear = 6;
        
        cooler = [[Appliance alloc] init];
        cooler.powerRating = 3500;
        cooler.numberOfAppliances = 1;
        cooler.hoursPerDay = 12;
        cooler.monthsPerYear = 6;
        
        hairDrier = [[Appliance alloc] init];
        hairDrier.powerRating = 800;
        hairDrier.numberOfAppliances = 1;
        hairDrier.minutesPerDay = 40;
        hairDrier.monthsPerYear = 12;
        
        clothesDrier = [[Appliance alloc] init];
        clothesDrier.powerRating = 1000;
        clothesDrier.numberOfAppliances = 1;
        clothesDrier.minutesPerEvent = 40;
        clothesDrier.eventsPerWeek = 7.5;
    }
    
    return self;
}

- (void)dealloc
{
    [heater release];
    [cooler release];
    [hairDrier release];
    [clothesDrier release];
    [super dealloc];
}

- (IBAction)removeLint:(NSButton *)sender {
    if ([sender state] == NSOnState)
        clothesDrier.efficiency = 1;
    else
        clothesDrier.efficiency = 0.85;
}


@end
