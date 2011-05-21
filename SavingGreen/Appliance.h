//
//  Appliance.h
//  SavingGreen
//
//  Created by Aaron Lin on 5/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Appliance : NSObject {
    
    NSString *name;
    
    double powerRating; // in Watts, default is 0
    int numberOfAppliances; // Default is 1
    double minutesPerHour; // Default is 60
    double hoursPerDay; // Default is 24
    double daysPerWeek; // Default is 7
    double weeksPerMonth; // Default is 4.345
    double monthsPerYear; // Default is 12
    double efficiency; // Default is 1.00
    double averageMonthlyCost; // Default is 0
    
//    double perGallon;
//    double perKWH;
//    double perTherm;

@private
    
}

@property (retain) NSString *name;
@property double powerRating;
@property int numberOfAppliances;
@property double minutesPerHour;
@property double hoursPerDay;
@property double daysPerWeek;
@property double weeksPerMonth;
@property double monthsPerYear;
@property double efficiency;
@property double averageMonthlyCost;

//@property (readonly) double perGallon;
//@property (readonly) double perKWH;
//@property (readonly) double perTherm;


//- (double)monthlyCost:(double)electricRate; // Cost per month given price of electricity per kiloWatt*hour in dollars
//- (double)annualCost:(double)electricRate
//         givenMonths:(double)months; // Cost per year given price of electricity per kiloWatt*hour in dollars

@property (readonly) double monthlyCost;
@property (readonly) double annualCost;
@property (readonly) int level; // Green-ness on a scale from 1-5

@end
