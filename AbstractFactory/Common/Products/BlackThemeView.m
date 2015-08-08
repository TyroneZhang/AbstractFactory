//
//  BlackThemeView.m
//  AbstractFactory
//
//  Created by Demon_Yao on 7/26/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "BlackThemeView.h"

extern const CGFloat kThemeViewLeftOrigin;
extern const CGFloat kThemeViewTopOrigin;
extern const CGFloat kThemeCornerRasiusValue;
extern const CGFloat kThemeTitleRotateValue;
extern const CGFloat kWaterMarkFontSize;
NSString *const kBlackThemeTitle = @"BLACK THEME";

@implementation BlackThemeView

- (void)drawRect:(CGRect)rect {
    
    CGRect newRect = CGRectMake(kThemeViewLeftOrigin, kThemeViewTopOrigin, CGRectGetWidth(rect) - kThemeViewLeftOrigin * 2, CGRectGetHeight(rect) - kThemeViewTopOrigin);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGPathRef path = CGPathCreateWithRoundedRect(newRect, kThemeCornerRasiusValue, kThemeCornerRasiusValue, NULL);
    CGContextAddPath(context, path);
    CGContextFillPath(context);
    CGPathRelease(path);
    
    // Watermark
    CGContextTranslateCTM(context, CGRectGetWidth(rect)/4.0, CGRectGetHeight(rect)/4.0);
    CGContextRotateCTM(context, kThemeTitleRotateValue);
    NSString *themeTitle = kBlackThemeTitle;
    [themeTitle drawInRect:newRect withAttributes:@{NSFontAttributeName :[UIFont systemFontOfSize:kWaterMarkFontSize],
                                                    NSForegroundColorAttributeName :[UIColor colorWithWhite:0.2 alpha:0.7]}];
}


@end
