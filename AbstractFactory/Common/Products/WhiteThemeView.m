//
//  WhiteThemeView.m
//  AbstractFactory
//
//  Created by Demon_Yao on 7/26/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "WhiteThemeView.h"

const CGFloat kThemeViewLeftOrigin = 5.f;
const CGFloat kThemeViewTopOrigin = 20.f;
const CGFloat kThemeViewBackgroundValue = 0.95f;
const CGFloat kThemeCornerRasiusValue = 10.f;
const CGFloat kThemeTitleRotateValue = 60.0 * M_PI / 180.0;
const CGFloat kWaterMarkFontSize = 40.f;
NSString *const kWhiteThemeTitle = @"WHITE THEME";


@implementation WhiteThemeView


- (void)drawRect:(CGRect)rect {
    
    CGRect newRect = CGRectMake(kThemeViewLeftOrigin, kThemeViewTopOrigin, CGRectGetWidth(rect) - kThemeViewLeftOrigin * 2, CGRectGetHeight(rect) - kThemeViewTopOrigin);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor colorWithWhite:kThemeViewBackgroundValue alpha:1.0].CGColor);
    CGPathRef path = CGPathCreateWithRoundedRect(newRect, kThemeCornerRasiusValue, kThemeCornerRasiusValue, NULL);
    CGContextAddPath(context, path);
    CGContextFillPath(context);
    CGPathRelease(path);
    
    // Watermark
    CGContextTranslateCTM(context, CGRectGetWidth(rect)/4.0, CGRectGetHeight(rect)/4.0);
    CGContextRotateCTM(context, kThemeTitleRotateValue);
    NSString *themeTitle = kWhiteThemeTitle;
    [themeTitle drawInRect:newRect withAttributes:@{NSFontAttributeName :[UIFont systemFontOfSize:kWaterMarkFontSize],
                                                    NSForegroundColorAttributeName :[UIColor whiteColor]}];
}

@end
