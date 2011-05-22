//
//  Appliance.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Appliance.h"
#define kWattsPerKiloWatt 1000.0
#define kElectricRate 0.15

@implementation Appliance

@synthesize name;
@synthesize powerRating;
@synthesize numberOfAppliances;
@synthesize minutesPerHour;
@synthesize hoursPerDay;
@synthesize daysPerWeek;
@synthesize weeksPerMonth;
@synthesize monthsPerYear;
@synthesize efficiency;
@synthesize averageMonthlyCost;
//@synthesize perGallon, perKWH, perTherm;

- (id)init
{
    self = [super init];
    if (self) {
        self.powerRating = 0;
        self.numberOfAppliances = 1;
        self.efficiency = 1.00;
        self.minutesPerHour = 60;
        self.hoursPerDay = 24;
        self.daysPerWeek = 7;
        self.weeksPerMonth = 4.345;
        self.monthsPerYear = 12;
        self.averageMonthlyCost = 0;
//        @property int perGallonInCents;
//        @property int perKWHInCents;
//        @property int perThermInCents;

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
    
    double result = powerRating / kWattsPerKiloWatt * minutesPerHour/60.0 * hoursPerDay * daysPerWeek * weeksPerMonth * kElectricRate * numberOfAppliances;

    return result;
}

- (double)annualCost {
    return [self monthlyCost] * monthsPerYear;
}

- (int)level {
    return (int)(1.0-[self monthlyCost]/averageMonthlyCost)/0.2 + 1;
}

- (void)setValue:(id)value forKey:(NSString *)key {
    [self willChangeValueForKey:@"monthlyCost"];
    [self willChangeValueForKey:@"annualCost"];

    [super setValue:value forKey:key];
    NSLog(@"Key: %@, Value: %@", key, value);

    [self didChangeValueForKey:@"monthlyCost"];
    [self didChangeValueForKey:@"annualCost"];
}

//- (double)perGallon {
//    return [[NSUserDefaults standardUserDefaults] doubleForKey:@"perGallon"];
//}
//
//- (double)perKWH {
//    return [[NSUserDefaults standardUserDefaults] doubleForKey:@"perKWH"];
//}
//
//- (double)perTherm {
//    return [[NSUserDefaults standardUserDefaults] doubleForKey:@"perTherm"];    
//}

@end
