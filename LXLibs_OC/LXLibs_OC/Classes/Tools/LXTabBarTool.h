//
//  LXTabBarTool.h
//  LXUtils_OC
//
//  Created by Xiao.Li on 2018/1/4.
//  Copyright © 2018年 LXUtils. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LXTabBarTool : NSObject

/**
 *  StoryBoard -- 往TabBarController 中添加子控制器，并设置对应的TabbarItem 图片和文字
 *
 *  @param storyBoardName    传入StoryBoard 的名称
 *  @param title             tabBarTitle
 *  @param noramlImage       普通状态下的image名称
 *  @param selectedImage     选中状态下image名称
 *
 *  @return 包装好的NavigationController
 */
+ (UINavigationController *) addChildViewWithStoryBoardName:(NSString *) storyBoardName tabBarTitle: (NSString *) title NormalFont:(UIFont *) normalFont NoramlColor:(UIColor*) normalColor NormalImage:(NSString *)noramlImage SelectedFont:(UIFont *) selectedFont SelectColor:(UIColor *) selectColor SelectedImage:(NSString *) selectedImage;

/**
 *  Xib --往TabBarController 中添加子控制器，并设置对应的TabbarItem 图片和文字
 *
 *  @param xibName          传入 Xib 的名称
 *  @param controllerName   Controller 的名称
 *  @param title            tabBarTitle
 *  @param noramlImage      普通状态下的image名称
 *  @param selectedImage    选中状态下image名称
 *
 *  @return 包装好的NavigationController
 */
+ (UINavigationController *) addChildViewWithXibName:(NSString *) xibName ControllerName:(NSString *)controllerName tabBarTitle: (NSString *) title NormalFont:(UIFont *) normalFont NoramlColor:(UIColor*) normalColor NormalImage:(NSString *)noramlImage SelectedFont:(UIFont *) selectedFont SelectColor:(UIColor *) selectColor SelectedImage:(NSString *) selectedImage;

@end
