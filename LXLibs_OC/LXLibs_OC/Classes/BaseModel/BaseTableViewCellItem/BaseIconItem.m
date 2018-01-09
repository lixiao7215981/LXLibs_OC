//
//  BaseIconItem.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseIconItem.h"
#define sectionViewBackGroundColor kRGBColor(231, 231, 231, 1)

@implementation BaseIconItem


- (UIView *)sectionView
{
    _sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 10)];
    _sectionView.backgroundColor = sectionViewBackGroundColor ;
    return _sectionView;
}

+ (instancetype)createBaseCellItemWithIconNameOrUrl:(NSString *)icon AndTitle:(NSString *)title SubTitle:(NSString *)subTitle ClickCellOption:(cellOption)option ClickIconOption:(cellOption)iconOption
{
    BaseIconItem *iconCell = [super createBaseCellItemWithIcon:icon AndTitle:title SubTitle:subTitle ClickOption:option];
    iconCell.iconOption = iconOption;
    return iconCell;
}

@end
