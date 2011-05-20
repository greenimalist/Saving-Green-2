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
    
    double powerRating; // in Watts
    int numberOfAppliances; // Default is 1
    double hoursPerDay;
    double monthsPerYear;
    
    // Other ways of calculations
    
    double minutesPerDay;
    double minutesPerEvent; // per load, etc.
    double eventsPerWeek;
    double efficiency; // Default is 1.00
    
    double perGallon;
    double perKWH;
    double perTherm;

@private
    
}

@property (retain) NSString *name;
@property double powerRating;
@property int numberOfAppliances;
@property double minutesPerDay;
@property double hoursPerDay;
@property double monthsPerYear;
@property double minutesPerEvent;
@property double eventsPerWeek;
@property double efficiency;

//@property (readonly) double perGallon;
//@property (readonly) double perKWH;
//@property (readonly) double perTherm;


//- (double)monthlyCost:(double)electricRate; // Cost per month given price of electricity per kiloWatt*hour in dollars
//- (double)annualCost:(double)electricRate
//         givenMonths:(double)months; // Cost per year given price of electricity per kiloWatt*hour in dollars

@property (readonly) double monthlyCost;
@property (readonly) double annualCost;

@end
