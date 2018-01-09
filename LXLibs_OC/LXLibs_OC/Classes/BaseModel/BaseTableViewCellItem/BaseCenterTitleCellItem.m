//
//  BaseCenterTitleCellItem.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseCenterTitleCellItem.h"

@implementation BaseCenterTitleCellItem

+ (instancetype)createBaseCellItemWithCenterTitle:(NSString *)centerTitle ClickOption:(cellOption)option WithColor:(UIColor *)color
{
    BaseCenterTitleCellItem *centerTitleCell = [super createBaseCellItemWithIcon:nil AndTitle:nil SubTitle:nil ClickOption:option];
    centerTitleCell.centerTitle = centerTitle;
    centerTitleCell.color  = color;
    return centerTitleCell;
}

@end
