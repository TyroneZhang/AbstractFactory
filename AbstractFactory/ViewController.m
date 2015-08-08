//
//  ViewController.m
//  AbstractFactory
//
//  Created by Demon_Yao on 7/28/15.
//  Copyright (c) 2015 WorfMan. All rights reserved.
//

#import "ViewController.h"
#import "ThemeFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Theme view
    ThemeFactory *factory = [ThemeFactory factory];
    UIView *view = [factory themeView];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    // Theme toolbar
    UIToolbar *toolbar = [factory themeToolBar];
    [toolbar setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:toolbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
