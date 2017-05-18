//
//  UIButton+ThemeChange.m
//  NightMode
//
//  Created by ZL on 2017/4/24.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "UIButton+ThemeChange.h"
#import "ThemeManage.h"
#import "UIView+ThemeChange.h"

@implementation UIButton (ThemeChange)

- (void)changeColor {
    [super changeColor];
    
    self.titleLabel.textColor = [ThemeManage shareThemeManage].textColor;
}

@end
