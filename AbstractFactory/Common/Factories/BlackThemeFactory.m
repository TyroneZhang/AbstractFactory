//
//  BlackThemeFactory.m
//  抽象工厂
//
//  Created by Demon_Yao on 7/26/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "BlackThemeFactory.h"
#import "BlackThemeView.h"
#import "BlackThemeToolbar.h"

@implementation BlackThemeFactory

- (UIView *)themeView
{
    return [[BlackThemeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (UIToolbar *)themeToolBar
{
    return [[BlackThemeToolbar alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

@end
