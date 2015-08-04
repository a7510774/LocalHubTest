//
//  UIView+Util.m
//  JMWeeklyReport
//
//  Created by chengw on 15/6/11.
//  Copyright (c) 2015年 JM. All rights reserved.
//

#import "UIView+Util.h"

@implementation UIView (Util)

#pragma mark - log
- (void)logFrame
{
    NSLog(@"frame:\n x:%f\n y:%f\n width:%f\n height:%f\n",self.frame.origin.x,self.frame.origin.y,self.frame.size.width,self.frame.size.height);
}

- (void)logPoint
{
    NSLog(@"point:\n x:%f\n y:%f\n",self.center.x,self.center.y);
}

#pragma mark - shadow
- (void)showShadow
{
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 10.0;
}

#pragma mark - mask
- (void)maskWithImageName:(NSString *)name
{
    CALayer *mask_test = [[CALayer alloc]init];
    UIImage *image = [UIImage imageNamed:name];
    CGRect imageF = CGRectMake(0, 0, image.size.width, image.size.height);
    mask_test.contents = (__bridge id)(image.CGImage);
    mask_test.frame = imageF;
    
    self.layer.mask = mask_test;
}

@end
