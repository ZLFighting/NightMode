//
//  HomeViewController.m
//  NightMode
//
//  Created by ZL on 2017/4/21.
//  Copyright © 2017年 ZL. All rights reserved.
//

#import "HomeViewController.h"
#import "ThemeManage.h"
#import "UIView+ThemeChange.h"
#import "UILabel+ThemeChange.h"
#import "NextCollectionViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    [self.view NightWithType:UIViewColorTypeNormal];
    
    UIImage *barButtonImage = [ThemeManage shareThemeManage].isNight ? [UIImage imageNamed:@"night"] : [UIImage imageNamed:@"day"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:barButtonImage style:UIBarButtonItemStylePlain target:self action:@selector(rightBarBtnAction:)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"present" style:UIBarButtonItemStylePlain target:self action:@selector(presentClick)];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
    label.text = @"测试看看字色及背景色";
    [label NightWithType:UIViewColorTypeNormal];
    [label NightTextType:LabelColorGray];
    [self.view addSubview:label];
    
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    pushBtn.frame = CGRectMake(100, 200, 100, 40);
    self.view.center = pushBtn.center;
    pushBtn.backgroundColor = [UIColor orangeColor];
    pushBtn.layer.cornerRadius = 10;
    [pushBtn addTarget:self action:@selector(pushBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [pushBtn setTitle:@"push详情" forState:UIControlStateNormal];
    [self.view addSubview:pushBtn];
}

#pragma mark  - Action点击动作事件

// 切换夜间模式
- (void)rightBarBtnAction:(UIBarButtonItem *)barButton {
    
    [ThemeManage shareThemeManage].isNight = ![ThemeManage shareThemeManage].isNight;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeColor" object:nil];
    [[NSUserDefaults standardUserDefaults] setBool:[ThemeManage shareThemeManage].isNight forKey:@"night"];
    UIImage *barBtnImage = [ThemeManage shareThemeManage].isNight ? [UIImage imageNamed:@"night"] : [UIImage imageNamed:@"day"];
    [barButton setImage:barBtnImage];
}

- (void)pushBtnClick {
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    flow.itemSize = CGSizeMake(100, 100);
    
    NextCollectionViewController *vc = [[NextCollectionViewController alloc] initWithCollectionViewLayout:flow];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)presentClick {
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    flow.itemSize = CGSizeMake(100, 100);
    
    NextCollectionViewController *vc = [[NextCollectionViewController alloc] initWithCollectionViewLayout:flow];
    [self presentViewController:vc animated:YES completion:nil];
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
