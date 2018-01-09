//
//  BaseViewController.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseViewController.h"
#import <LXBundleTool.h>
#import <LXUtilsDefine.h>
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSLog(@"%@ is dealloc",NSStringFromClass([self class]));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setNavTitle:(NSString *)title
{
    self.navigationItem.title = title;
}

- (UIButton *)setNavBackBtn
{
    UIButton *button = [[UIButton alloc]init];
    UIImage *image = nil;
    if (self.preferredStatusBarStyle == UIStatusBarStyleLightContent) {
        image = [LXBundleTool getImage:@"Navigationbar_back_write" FromBundle:LXFrameWorkBundle];
    }else if (self.preferredStatusBarStyle == UIStatusBarStyleDefault){
        image = [LXBundleTool getImage:@"navigationbar_back" FromBundle:LXFrameWorkBundle];
    }
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(NavBackBtnClick)];
    self.navigationItem.leftBarButtonItem = backItem;
    return button;
}

#pragma  mark - 按钮点击

- (void)NavBackBtnClick
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
