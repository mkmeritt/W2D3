//
//  City.m
//  Weather
//
//  Created by Mark Meritt on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithNameandDegrees:(NSString *)name Degrees:(int)deg{
    
    if(self = [super init]) {
    _cityName = name;
    _degrees = deg;
        
    _cityImageName = [NSString stringWithFormat:@"%@.jpg", _cityName];
        
        _image = [UIImage imageNamed:_cityImageName];
    }
    return self;
}


@end
