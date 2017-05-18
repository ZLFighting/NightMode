//
//  UINavigationBar+ThemeChange.m
//  NightMode
//
//  Created by ZL on 2017/4/24.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "UINavigationBar+ThemeChange.h"
#import "ThemeManage.h"
#import "UIView+ThemeChange.h"

@implementation UINavigationBar (ThemeChange)


- (void)changeColor {
    
    [super changeColor];
    
    [self setBarTintColor:[ThemeManage shareThemeManage].bgColor];
    [self setBackgroundColor:[UIColor clearColor]];
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName: [ThemeManage shareThemeManage].navBarColor}];
    
    // 改变电池栏Style
    if ([ThemeManage shareThemeManage].isNight) {
        [self setBarStyle:UIBarStyleBlackTranslucent];
    } else{
        [self setBarStyle:UIBarStyleDefault];
    }
}

@end
