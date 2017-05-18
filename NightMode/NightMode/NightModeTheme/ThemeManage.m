//
//  ThemeManage.m
//  NightMode
//
//  Created by ZL on 2017/4/21.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "ThemeManage.h"

static ThemeManage *themeManage; // 单例


@implementation ThemeManage

#pragma mark - 单例的初始化

+ (ThemeManage *)shareThemeManage {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        themeManage = [[ThemeManage alloc] init];
    });
    return themeManage;
}

#pragma mark 重写isNight的set方法

- (void)setIsNight:(BOOL)isNight {
    
    _isNight = isNight;
    
    if (self.isNight) { // 夜间模式改变相关颜色
        
        self.bgColor = [UIColor colorWithRed:0.06 green:0.08 blue:0.1 alpha:1];
        self.textColor = [UIColor whiteColor];
        self.color1 = [UIColor colorWithRed:0.08 green:0.11 blue:0.13 alpha:1];
        self.navBarColor = [UIColor whiteColor];
        self.color2 = [UIColor colorWithRed:0.2 green:0.31 blue:0.43 alpha:1];
        self.textColorGray = [UIColor whiteColor];
    } else{
        
        self.bgColor = [UIColor whiteColor];
        self.textColor = [UIColor blackColor];
        self.color1 = [UIColor colorWithRed:0.06 green:0.25 blue:0.48 alpha:1];
        self.navBarColor = [UIColor colorWithRed:0.31 green:0.73 blue:0.58 alpha:1];
        self.color2 = [UIColor colorWithRed:0.57 green:0.66 blue:0.77 alpha:1];
        self.textColorGray = [UIColor grayColor];
    }
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        self.colorClear = [UIColor clearColor];
    });
}


@end
