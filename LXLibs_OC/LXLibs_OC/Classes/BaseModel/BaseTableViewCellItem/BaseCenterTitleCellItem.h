//
//  BaseCenterTitleCellItem.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseCellItem.h"
#import <UIKit/UIKit.h>

@interface BaseCenterTitleCellItem : BaseCellItem

@property (nonatomic,copy) NSString *centerTitle;

@property (nonatomic,strong) UIColor *color;

+(instancetype)createBaseCellItemWithCenterTitle:(NSString *) centerTitle ClickOption:(cellOption) option WithColor:(UIColor *) color;

@end
