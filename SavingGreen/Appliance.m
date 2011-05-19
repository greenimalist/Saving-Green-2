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
#define kElectricRate 0.15
#define kWeeksPerMonth 4.5
#define kMinutesPerHour 60.0


@implementation Appliance

@synthesize name, powerRating, numberOfAppliances, minutesPerDay, hoursPerDay, monthsPerYear,minutesPerEvent, eventsPerWeek, efficiency;

- (id)init
{
    self = [super init];
    if (self) {
        self.numberOfAppliances = 1;
        self.efficiency = 1.00;
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

//- (double)monthlyCost:(double)electricRate {
//    
//    if (minutesPerDay != 0.0)
//        hoursPerDay = minutesPerDay / 60.0;
//    
//    return powerRating / kWattsPerKiloWatt * hoursPerDay * kDaysPerMonth * electricRate;
//}
//- (double)annualCost:(double)electricRate 
//         givenMonths:(double)months {
//    
//    if (months == 0)
//        months = kMonthsPerYear;
//    
//    return [self monthlyCost:electricRate] * months;
//}

- (double)monthlyCost {
    
    double result = 0.0;
    
    if (eventsPerWeek != 0.0) {
        result = powerRating / kWattsPerKiloWatt * minutesPerEvent / kMinutesPerHour * eventsPerWeek * kWeeksPerMonth *kElectricRate * numberOfAppliances;
    }
    else if (minutesPerDay != 0.0)
    {
        hoursPerDay = minutesPerDay / 60.0;
        result = powerRating / kWattsPerKiloWatt * hoursPerDay * kDaysPerMonth * kElectricRate * numberOfAppliances;
    }
    else
        result = powerRating / kWattsPerKiloWatt * hoursPerDay * kDaysPerMonth * kElectricRate * numberOfAppliances;

    return result;
}

- (double)annualCost {
    return [self monthlyCost] * monthsPerYear;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    [self willChangeValueForKey:@"monthlyCost"];
    [self willChangeValueForKey:@"annualCost"];

    [super setValue:value forKey:key];

    [self didChangeValueForKey:@"monthlyCost"];
    [self didChangeValueForKey:@"annualCost"];
}

@end
