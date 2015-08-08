//
//  WhiteThemeFactory.m
//  抽象工厂
//
//  Created by Demon_Yao on 7/26/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "WhiteThemeFactory.h"
#import "WhiteThemeView.h"
#import "WhiteThemeToolbar.h"

@implementation WhiteThemeFactory

- (UIView *)themeView
{
    return [[WhiteThemeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (UIToolbar *)themeToolBar
{
    return [[WhiteThemeToolbar alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

@end
