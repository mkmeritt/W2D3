//
//  CityViewController.m
//  Weather
//
//  Created by Mark Meritt on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

-(instancetype)initWithCity:(City *)city{
    if(self = [super init]){
        
        _city = city;
        self.title = _city.cityName;
        _keys = @[@"ClearDay", @"ClearNight",@"Cloudy",@"Default",@"Fog",@"Partly-Cloudy",@"Rain",@"Sleet",@"Snow",@"Sunny", @"Wind"];
        _weatherImages = [[NSDictionary alloc] initWithObjects:@[@"clear-day.png", @"clear-night.png",@"cloudy.png",@"default.png",@"fog.png"
                        ,@"partly-cloudy.png", @"rain.png",@"sleet.png",@"snow.png",@"Sunny.png",@"wind.png"]
                                                       forKeys:_keys];
        
    }
    
     return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    UIImageView *cityPic = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2)];
    [cityPic setImage:_city.image];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 350, self.view.frame.size.width/5, self.view.frame.size.height / 3)];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(btn1.frame.origin.x + btn1.frame.size.width, 350, self.view.frame.size.width/5, self.view.frame.size.height / 3)];
    
    UIButton *btn3 = [[UIButton alloc] initWithFrame:CGRectMake(btn2.frame.origin.x + btn2.frame.size.width, 350, self.view.frame.size.width/5, self.view.frame.size.height / 3)];
    
    UIButton *btn4 = [[UIButton alloc] initWithFrame:CGRectMake(btn3.frame.origin.x + btn3.frame.size.width, 350, self.view.frame.size.width/5, self.view.frame.size.height / 3)];
    
    UIButton *btn5 = [[UIButton alloc] initWithFrame:CGRectMake(btn4.frame.origin.x + btn4.frame.size.width, 350, self.view.frame.size.width/5, self.view.frame.size.height / 3)];
    
    _forecastBtns = [[NSArray alloc] initWithObjects:btn1, btn2, btn3, btn4, btn5, nil];
    
    UILabel* titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 345, cityPic.frame.size.width, cityPic.frame.size.height / 6)];
    [titleLabel setText:[NSString stringWithFormat:@"Weekly Forecast for %@", _city.cityName.uppercaseString]];
    [titleLabel setFont:[UIFont fontWithName:@"Verdana" size:20]];
    [titleLabel setTextColor:[UIColor whiteColor]];
    [titleLabel setShadowOffset:CGSizeMake(50.0, 30.0)];
    
    [titleLabel setTextAlignment:NSTextAlignmentLeft];
    [self.view addSubview:cityPic];
    
    _weeklyForecast = @[@"M", @"T", @"W", @"T", @"F"];
   
    
    for(UIButton* btn in _forecastBtns){
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        
         [btn setTitle:[self randomizeForeCast] forState:UIControlStateNormal];
            [btn setImage:[self randomizeImage] forState:UIControlStateNormal];
        [self.view addSubview:btn];
        
        
        
    }
    
  
    
    UILabel* monday = [[UILabel alloc] initWithFrame:CGRectMake(btn1.frame.origin.x + 15, btn1.frame.origin.y - 40, btn1.frame.size.width, btn1.frame.size.height)];
    
    [monday setText:_weeklyForecast[0]];
    [monday setTextColor:[UIColor blueColor]];
    
    
    UILabel* tuesday = [[UILabel alloc] initWithFrame:CGRectMake(btn2.frame.origin.x + 15, btn2.frame.origin.y - 40, btn2.frame.size.width, btn2.frame.size.height)];
    
    [tuesday setText:_weeklyForecast[1]];
    [tuesday setTextColor:[UIColor blueColor]];
    
    UILabel* wednesday = [[UILabel alloc] initWithFrame:CGRectMake(btn3.frame.origin.x + 15, btn3.frame.origin.y - 40, btn3.frame.size.width, btn3.frame.size.height)];
    
    [wednesday setText:_weeklyForecast[2]];
    [wednesday setTextColor:[UIColor blueColor]];
    
    UILabel* thursday = [[UILabel alloc] initWithFrame:CGRectMake(btn4.frame.origin.x + 15, btn4.frame.origin.y - 40, btn4.frame.size.width, btn4.frame.size.height)];
    
    [thursday setText:_weeklyForecast[3]];
    [thursday setTextColor:[UIColor blueColor]];
    
    UILabel* friday = [[UILabel alloc] initWithFrame:CGRectMake(btn5.frame.origin.x + 15, btn5.frame.origin.y - 40, btn5.frame.size.width, btn5.frame.size.height)];
    
    [friday setText:_weeklyForecast[4]];
    [friday setTextColor:[UIColor blueColor]];
    
     [self.view addSubview:monday];
    [self.view addSubview:tuesday];
     [self.view addSubview:wednesday];
     [self.view addSubview:thursday];
    [self.view addSubview:friday];
    
     [self.view addSubview:titleLabel];
   

    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeLeft
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    //pin image
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityPic
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityPic
                                                         attribute:NSLayoutAttributeLeft
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeLeft
                                                        multiplier:1.0
                                                          constant:20.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityPic
                                                         attribute:NSLayoutAttributeRight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeRight
                                                        multiplier:1.0
                                                          constant:-20.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityPic
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1.0
                                                          constant:60.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityPic
                                                         attribute:NSLayoutAttributeHeight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1.0
                                                          constant:60.0]];
   
}

-(NSString*)randomizeForeCast{
    int low = _city.degrees - 5;
    int high = _city.degrees + 5;
    
    int val1 = arc4random() % high + low;
    
    NSString* degree = [NSString stringWithFormat:@"%d", val1];
    
    return degree;
}

-(UIImage*)randomizeImage{
    NSString* randomKey = [self.keys objectAtIndex:arc4random()% [self.keys count]];
    
    UIImage* random = [UIImage imageNamed:self.weatherImages[randomKey]];

    return random;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showWeatherDetails{
    DetailedViewController* detailedView = [[DetailedViewController alloc] initWithWeather:_city.degrees];
    [self.navigationController addChildViewController:detailedView];
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
