//
//  ThemeFactory.m
//  抽象工厂
//
//  Created by Demon_Yao on 7/26/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "ThemeFactory.h"
#import "WhiteThemeFactory.h"
#import "BlackThemeFactory.h"

@implementation ThemeFactory

+ (ThemeFactory *)factory
{
#if USE_WHITE_THEME
    return [[WhiteThemeFactory alloc] init];
    
#elif USE_BLACK_THEME
    return [[BlackThemeFactory alloc] init];
    
#endif
    return nil;
}

- (UIView *)themeView
{
    return nil;
}

- (UIToolbar *)themeToolBar
{
    return nil;
}


@end
