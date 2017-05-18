//
//  UILabel+ThemeChange.m
//  NightMode
//
//  Created by ZL on 2017/4/21.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "UILabel+ThemeChange.h"
// 添加runtime头文件
#import <objc/runtime.h>
#import "ThemeManage.h"
#import "UIView+ThemeChange.h"

@implementation UILabel (ThemeChange)


#pragma mark - 添加字体颜色枚举的属性

- (void)setTextType:(id)textType {
    objc_setAssociatedObject(self, @selector(textType), textType, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)textType {
    return objc_getAssociatedObject(self, @selector(textType));
}

#pragma mark - 重写changeColor方法

- (void)changeColor {

    [super changeColor];
    
    switch ([self.textType integerValue]) {
        case LabelColorBlack:
            self.textColor = [ThemeManage shareThemeManage].textColor;
            break;
        case LabelColorGray:
            self.textColor = [ThemeManage shareThemeManage].textColorGray;
            break;
            
        default:
            break;
    }
}

- (void)NightTextType:(LabelColor)type {
    self.textType = [NSNumber numberWithInteger:type];
    [self changeColor];
}


#pragma mark - 初始化字体的颜色

- (void)initTextColor {
    switch ([self.textType integerValue]) {
        case LabelColorBlack:
            self.textColor = [ThemeManage shareThemeManage].textColor;
            break;
        case LabelColorGray:
            self.textColor = [ThemeManage shareThemeManage].textColorGray;
            break;
            
        default:
            break;
    }
}

@end
