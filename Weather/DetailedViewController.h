//
//  DetailedViewController.h
//  Weather
//
//  Created by Mark Meritt on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "CityViewController.h"

@interface DetailedViewController : UIViewController


@property (nonatomic, assign) float currentWeather;
@property (nonatomic, strong) NSArray* weatherStrings;

-(instancetype)initWithWeather: (float)Weather;

@end
