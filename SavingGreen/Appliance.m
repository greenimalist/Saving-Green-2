//
//  Appliance.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Appliance.h"
#define kDaysPerMonth 30.25
#define kWattsPerKiloWatt 1000.0
#define kMonthsPerYear 12


@implementation Appliance

@synthesize name, powerRating, numberOfAppliances, minutesPerDay, hoursPerDay, monthsPerYear;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (double)monthlyCost:(double)electricRate {
    
    if (minutesPerDay != 0.0)
        hoursPerDay = minutesPerDay / 60.0;
    
    return powerRating / kWattsPerKiloWatt * hoursPerDay * kDaysPerMonth * electricRate;
}
- (double)annualCost:(double)electricRate 
         givenMonths:(double)months {
    
    if (months == 0)
        months = kMonthsPerYear;
    
    return [self monthlyCost:electricRate] * months;
}

@end
