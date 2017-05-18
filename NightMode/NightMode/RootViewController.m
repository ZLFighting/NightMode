//
//  RootViewController.m
//  NightMode
//
//  Created by ZL on 2017/4/21.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "RootViewController.h"
#import "ThemeManage.h"
#import "UIView+ThemeChange.h"
#import "HomeViewController.h"
#import "SchemaViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view NightWithType:UIViewColorTypeNormal];
    
    HomeViewController *vc = [[HomeViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    // 设置navigationBar的夜间模式状态
    [nav.navigationBar NightWithType:UIViewColorTypeNormal];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"home"] tag:10];
    
    SchemaViewController *secondVC = [[SchemaViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:secondVC];
    // 设置navigationBar的夜间模式状态
    [nav1.navigationBar NightWithType:UIViewColorTypeNormal];
    secondVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"菜单" image:[UIImage imageNamed:@"schema"] tag:11];
    
    [self.tabBar NightWithType:UIViewColorTypeNormal];
    self.viewControllers = @[nav, nav1];
    self.tabBar.translucent = NO;
    [[UINavigationBar appearance] setTranslucent:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
