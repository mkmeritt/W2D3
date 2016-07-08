//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    //CREATE CITY OBJECTS
    City *vancouver = [[City alloc] initWithNameandDegrees:@"vancouver" Degrees:30];
    City *toronto = [[City alloc] initWithNameandDegrees:@"toronto" Degrees:30];
    City *newYork = [[City alloc] initWithNameandDegrees:@"newyork" Degrees:25];
    City *boston = [[City alloc] initWithNameandDegrees:@"boston" Degrees:35];
    City *chicago = [[City alloc] initWithNameandDegrees:@"chicago" Degrees:20];
    
    
    //MAIN PAGE
    UITabBarController *mainPage = [[UITabBarController alloc] init];
    
    [self.window setRootViewController:mainPage];
    
    
    //CITY CONTROLLERS FOR EACH TAB
    CityViewController *vancouverCtrl = [[CityViewController alloc] initWithCity:vancouver];
    UINavigationController *vancouverCtrlNav = [[UINavigationController alloc]initWithRootViewController:vancouverCtrl];

    
    CityViewController *torontoCtrl = [[CityViewController alloc] initWithCity:toronto];
    UINavigationController *torontoCtrlNav = [[UINavigationController alloc]initWithRootViewController:torontoCtrl];
    
    
    CityViewController *newYorkCtrl = [[CityViewController alloc] initWithCity:newYork];
    UINavigationController *newYorkCtrlNav = [[UINavigationController alloc]initWithRootViewController:newYorkCtrl];
    
    
    CityViewController *bostonCtrl = [[CityViewController alloc] initWithCity:boston];
    UINavigationController *bostonCtrlNav = [[UINavigationController alloc]initWithRootViewController:bostonCtrl];
    
    
    CityViewController *chicagoCtrl = [[CityViewController alloc] initWithCity:chicago];
    UINavigationController *chicagoCtrlNav = [[UINavigationController alloc]initWithRootViewController:chicagoCtrl];
    
    NSArray *tabs = [NSArray arrayWithObjects:vancouverCtrlNav, torontoCtrlNav, newYorkCtrlNav, bostonCtrlNav, chicagoCtrlNav, nil];
    
  
    [mainPage setViewControllers:tabs animated:NO];
    
    UIImage* image = [UIImage imageNamed:@"degree.png"];
    
    for(UINavigationController *item in tabs){
        [item.tabBarItem setImage:image];
    }
    
    [self.window addSubview:mainPage.view];
    
    [self.window makeKeyAndVisible];

    
    
    
    return YES;
}

@end
