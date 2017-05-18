//
//  SchemaViewController.m
//  NightMode
//
//  Created by ZL on 2017/4/21.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "SchemaViewController.h"
#import "UIView+ThemeChange.h"
#import "UILabel+ThemeChange.h"

@interface SchemaViewController ()

@end

@implementation SchemaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主题";
    [self.view NightWithType:UIViewColorType1];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(125, 125, 125, 40)];
    [label NightTextType:LabelColorGray];
    [label NightWithType:UIViewColorTypeClear];
    label.text = @"第二个tabBar";
    [self.view addSubview:label];

}

- (void)dealloc {
    // 移除监听
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
