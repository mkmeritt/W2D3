//
//  DetailedViewController.m
//  Weather
//
//  Created by Mark Meritt on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

-(instancetype)initWithWeather:(float)Weather{
    
    if(self = [super init]) {
    _currentWeather = Weather;
     
        _weatherStrings = @[@"Very cloudy, light chance of rain.", @"Rainy all day, no chance of sun.", @"Clear skies all day and night.", @"Foggy day today. Be careful while driving.", @"Sunny day! Skies are beautiful.", @"Lots of wind. Be prepared.", @"High chance of snow."];
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *desc = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width / 2, self.view.frame.size.height /2)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
