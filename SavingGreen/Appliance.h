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
    int numberOfAppliances;
    double minutesPerDay;
    double hoursPerDay;
    double monthsPerYear;
@private
    
}

@property (retain) NSString *name;
@property double powerRating;
@property int numberOfAppliances;
@property double minutesPerDay;
@property double hoursPerDay;
@property double monthsPerYear;

- (double)monthlyCost:(double)electricRate; // Cost per month given price of electricity per kiloWatt*hour in dollars
- (double)annualCost:(double)electricRate
         givenMonths:(double)months; // Cost per year given price of electricity per kiloWatt*hour in dollars

@end
