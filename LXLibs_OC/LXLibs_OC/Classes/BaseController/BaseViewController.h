//
//  BaseViewController.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

/**
 *  设置 NavigationController Title
 */
- (void)setNavTitle:(NSString *)title;

/**
 *  设置navigationBar 返回按钮
 */
- (UIButton *) setNavBackBtn;

@end
