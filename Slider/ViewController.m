//
//  ViewController.m
//  Slider
//
//  Created by Marcelo on 6/30/17.
//  Copyright © 2017 MAS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.sliderControl.delegate = self;
    NSLog(@"🤙");
    
}

#pragma mark - SliderControl Delegate
-(void)valueChanged:(float)value{
    NSLog(@"💥 value changed: %f",value);
}

@end
