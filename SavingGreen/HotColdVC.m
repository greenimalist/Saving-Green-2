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
        heater.hoursPerDay = 12;
        heater.monthsPerYear = 6;
        
        cooler = [[Appliance alloc] init];
        cooler.powerRating = 3500;
        cooler.hoursPerDay = 12;
        cooler.monthsPerYear = 6;
        
        hairDrier = [[Appliance alloc] init];
        hairDrier.powerRating = 800;
        hairDrier.minutesPerHour = 40;
        hairDrier.hoursPerDay = 1;
        hairDrier.monthsPerYear = 12;
        
        clothesDrier = [[Appliance alloc] init];
        clothesDrier.powerRating = 1000;
        clothesDrier.minutesPerHour = 40;
        clothesDrier.hoursPerDay = 1;
        clothesDrier.daysPerWeek = 7.5;
        
        NSLog(@"Heater monthly cost: %f", heater.monthlyCost);
        NSLog(@"Cooler monthly cost: %f", cooler.monthlyCost);
        NSLog(@"Hair Drier monthly cost: %f", hairDrier.monthlyCost);
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
