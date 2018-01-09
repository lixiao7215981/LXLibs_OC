//
//  BaseSwitchCellItem.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseCellItem.h"
#import <UIKit/UIKit.h>
typedef void(^switchCellOption)(UISwitch *cellSwitch);

@interface BaseSwitchCellItem : BaseCellItem

/* 默认Switch开关是否开启 */
@property (nonatomic,assign) BOOL open;
/* Switch 开关*/
@property (nonatomic,strong) UISwitch *switchs;

/* block 保存一段代码在用到的时候执行 */
@property (nonatomic,copy) switchCellOption switchOption;

+ (instancetype)createBaseCellItemWithIcon:(NSString *)icon AndTitle:(NSString *)title SubTitle:(NSString *)subTitle defaultOpen:(BOOL)open ClickOption:(cellOption) cellOption SwitchOption:(switchCellOption) switchOption;

@end
