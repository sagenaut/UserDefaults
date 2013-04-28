//
//  ViewController.m
//  UserDefaults
//
//  Created by Linda Cao on 4/28/13.
//  Copyright (c) 2013 David Du. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary  *appfValues = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"", @"name_preference",
                                [NSNumber numberWithBool:YES], @"enabled_preference",
                                [NSNumber numberWithInteger:1], @"slider_preference",
                                [NSNumber numberWithInteger:1], @"level_preference",
                                nil];
	
    NSString *aName = [defaults objectForKey:@"name_preference"];
    NSNumber *enable = [defaults objectForKey:@"enabled_preference"];
    NSNumber *slider = [defaults objectForKey:@"slider_preference"];
    NSNumber *level = [defaults objectForKey:@"level_preference"];
    
    NSLog(@"Before user defaults register\nName %@\nEnable %@\nSlide %@\nLevel %@", aName, enable, slider, level);
    
    [defaults registerDefaults:appfValues];
    [defaults synchronize];
    
    aName = [defaults objectForKey:@"name_preference"];
    enable = [defaults objectForKey:@"enabled_preference"];
    slider = [defaults objectForKey:@"slider_preference"];
    level = [defaults objectForKey:@"level_preference"];

    NSLog(@"Before user defaults register\nName %@\nEnable %@\nSlide %@\nLevel %@", aName, enable, slider, level);

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
