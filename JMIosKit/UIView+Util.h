//
//  UIView+Util.h
//  JMWeeklyReport
//
//  Created by chengw on 15/6/11.
//  Copyright (c) 2015年 JM. All rights reserved.
//

/*
 1、打印frame
 2、打印point
 */
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIView (Util)

//打印
- (void)logFrame;
- (void)logPoint;

//显示阴影
- (void)showShadow;

//不规则图形
- (void)maskWithImageName:(NSString *)name;

@end
