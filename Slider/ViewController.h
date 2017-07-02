//
//  ViewController.h
//  Slider
//
//  Created by Marcelo on 6/30/17.
//  Copyright © 2017 MAS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SliderControl.h"
@interface ViewController : UIViewController<SliderControlDelegate>

@property (weak, nonatomic) IBOutlet SliderControl *sliderControl;


@end

