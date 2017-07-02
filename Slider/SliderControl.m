//
//  SliderControl.m
//  Slider
//
//  Created by Marcelo on 6/30/17.
//  Copyright © 2017 MAS. All rights reserved.
//

#import "SliderControl.h"

@interface SliderControl()
@property (strong, nonatomic) IBOutlet SliderControl *view;
@property (weak, nonatomic) IBOutlet UISlider *horizontalSlider;

@end

@implementation SliderControl

@synthesize delegate;

#pragma mark - Initialize
-(id)initWithCoder:(NSCoder *)aDecoder{

    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customInit];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self customInit];
    }
    return self;
}


-(void)customInit{
    
    [[NSBundle mainBundle] loadNibNamed:@"SliderControl" owner:self options:nil];
    
    [self addSubview:self.view];
    self.view.frame = self.bounds;
    
}



#pragma mark - UI Actions
- (IBAction)sliderChangedValue:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    
//    NSLog(@"🌴 value: %f",slider.value);
    
    
    [self.delegate valueChanged:slider.value];
}



@end
