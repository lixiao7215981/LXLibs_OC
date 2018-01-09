//
//  BaseCellItem.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseCellItem.h"

@implementation BaseCellItem

+(instancetype)createBaseCellItemWithIcon:(NSString *)icon AndTitle:(NSString *)title SubTitle:(NSString *)subTitle ClickOption:(cellOption)option
{
    BaseCellItem *baseCellItem = [[self alloc] init];
    baseCellItem.icon = icon;
    baseCellItem.title = title;
    baseCellItem.subTitle = subTitle;
    baseCellItem.option = option;
    return baseCellItem;
}
@end
