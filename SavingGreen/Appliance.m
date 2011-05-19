//
//  Appliance.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Appliance.h"


@implementation Appliance

@synthesize name, powerRating, numberOfAppliances, minutesPerDay, hoursPerDay, monthsPerYear;

@property (readonly) double monthlyCost;
@property (readonly) double annualCost;


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

@end
