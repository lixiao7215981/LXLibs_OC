//
//  BaseTableViewCell.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseCellItem.h"
#import "BaseIconItem.h"
#import "BaseArrowCellItem.h"
#import "BaseCenterTitleCellItem.h"
#import "BaseSwitchCellItem.h"
#import "BaseSubtitleCellItem.h"
#import <UIView+Category.h>

@interface BaseTableViewCell : UITableViewCell

/**
 *  数据Modal
 */
@property (nonatomic,strong) BaseCellItem *items;
/**
 *  快速创建 BaseTableView 显示的Cell
 *
 */
+ (instancetype)createProfileBaseCellWithTableView:(UITableView *)tableView CellStyle:(UITableViewCellStyle)cellStyle WithIdentifier:(NSString *)identifier;



@end
