//
//  WhiteThemeToolbar.m
//  AbstractFactory
//
//  Created by Demon_Yao on 7/28/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "WhiteThemeToolbar.h"

const CGFloat kToolbarHeight = 48.f;
const CGFloat kToolbarCornerRadius = 20.f;
const CGFloat kToolbarLeftOrigin = 5.f;

@implementation WhiteThemeToolbar


- (void)drawRect:(CGRect)rect {
    
    CGRect newRect = CGRectMake(kToolbarLeftOrigin, CGRectGetHeight(rect) - kToolbarHeight, CGRectGetWidth(rect) - kToolbarLeftOrigin * 2, kToolbarHeight);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:newRect byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(kToolbarCornerRadius, kToolbarCornerRadius)];
    CGContextAddPath(context, [bezierPath CGPath]);
    [bezierPath fill];

}

@end
