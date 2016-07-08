//
//  City.h
//  Weather
//
//  Created by Mark Meritt on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString* cityName;
@property (nonatomic, strong) NSString* cityImageName;
@property (nonatomic, assign) int degrees;
@property (nonatomic, strong) UIImage* image;

-(instancetype)initWithNameandDegrees: (NSString*)name Degrees:(int)deg;

@end
