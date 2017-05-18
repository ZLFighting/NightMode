//
//  UITabBar+ThemeChange.m
//  NightMode
//
//  Created by ZL on 2017/4/24.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "UITabBar+ThemeChange.h"
#import "ThemeManage.h"
#import "UIView+ThemeChange.h"


@implementation UITabBar (ThemeChange)

- (void)changeColor {
    [super changeColor];
    
    [self setBarTintColor:[ThemeManage shareThemeManage].bgColor];
    [self setTintColor:[ThemeManage shareThemeManage].navBarColor];
}

@end
