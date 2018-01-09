//
//  BaseSwitchCellItem.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseSwitchCellItem.h"

@implementation BaseSwitchCellItem

+ (instancetype)createBaseCellItemWithIcon:(NSString *)icon AndTitle:(NSString *)title SubTitle:(NSString *)subTitle defaultOpen:(BOOL)open ClickOption:(cellOption) cellOption SwitchOption:(switchCellOption) switchOption
{
    BaseSwitchCellItem *baseSwitchCell = [super createBaseCellItemWithIcon:icon AndTitle:title SubTitle:subTitle ClickOption:cellOption];
    baseSwitchCell.switchOption = switchOption;
    baseSwitchCell.open = open;
    return baseSwitchCell;
}


@end
