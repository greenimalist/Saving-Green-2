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
    
    int powerRating; // in Watts
    int numberOfAppliances;
    int minutesPerDay;
    int hoursPerDay;
    int monthsPerYear;
@private
    
}

@property (retain) NSString *name;
@property powerRating;
@property numberOfAppliances;
@property minutesPerDay;
@property hoursPerDay;
@property monthsPerYear;

@property (readonly) double monthlyCost;
@property (readonly) double annualCost;

@end
