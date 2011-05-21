//
//  CategoryVC.m
//  SavingGreen
//
//  Created by Aaron Lin on 5/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CategoryVC.h"


@implementation CategoryVC
@synthesize appliances;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [appliances release];
    [super dealloc];
}

@end
