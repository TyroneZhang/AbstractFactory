//
//  BlackThemeToolbar.m
//  AbstractFactory
//
//  Created by Demon_Yao on 7/28/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "BlackThemeToolbar.h"

extern const CGFloat kToolbarHeight;
extern const CGFloat kToolbarCornerRadius;
extern const CGFloat kToolbarLeftOrigin;

@implementation BlackThemeToolbar

- (void)drawRect:(CGRect)rect {
    
    CGRect newRect = CGRectMake(kToolbarLeftOrigin, CGRectGetHeight(rect) - kToolbarHeight, CGRectGetWidth(rect) - kToolbarLeftOrigin * 2, kToolbarHeight);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:0.5 green:0.1 blue:0.1 alpha:1.0].CGColor);
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:newRect byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(kToolbarCornerRadius, kToolbarCornerRadius)];
    CGContextAddPath(context, [bezierPath CGPath]);
    [bezierPath fill];
}


@end
