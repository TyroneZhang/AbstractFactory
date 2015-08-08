//
//  WhiteThemeFactory.h
//  抽象工厂
//
//  Created by Demon_Yao on 7/26/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "ThemeFactory.h"

@interface WhiteThemeFactory : ThemeFactory

- (UIView *)themeView;
- (UIToolbar *)themeToolBar;

@end
