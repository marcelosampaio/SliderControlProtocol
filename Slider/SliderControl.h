//
//  SliderControl.h
//  Slider
//
//  Created by Marcelo on 6/30/17.
//  Copyright © 2017 MAS. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SliderControlDelegate

@required

-(void)valueChanged:(float)value;

@end

@interface SliderControl : UIView

@property (nonatomic, assign) NSObject<SliderControlDelegate> *delegate;

@end
