//
//  CityViewController.h
//  Weather
//
//  Created by Mark Meritt on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic, strong) City* city;
@property (nonatomic, strong) NSDictionary* weatherImages;
@property (nonatomic, strong) NSArray* forecastBtns;
@property (nonatomic, strong) NSArray* keys;
@property (nonatomic, strong) NSArray* weeklyForecast;

-(instancetype)initWithCity: (City*)city;

-(void)showWeatherDetails;
-(UIImage*)randomizeImage;
-(NSString*)randomizeForeCast;

@end
