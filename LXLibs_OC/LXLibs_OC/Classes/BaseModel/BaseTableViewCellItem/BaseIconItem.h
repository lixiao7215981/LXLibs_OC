//
//  BaseIconItem.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseCellItem.h"
#import <UIKit/UIKit.h>

@interface BaseIconItem : BaseCellItem

typedef void(^iconOption)(void);

/**
 *  默认TableViewSection 分割View H:10px,
 */
@property (nonatomic,strong) UIView *sectionView;

/* block 保存一段代码在用到的时候执行 */
@property (nonatomic,copy) iconOption iconOption;

+(instancetype)createBaseCellItemWithIconNameOrUrl:(NSString *) icon AndTitle:(NSString *)title SubTitle:(NSString *) subTitle ClickCellOption:(cellOption) option ClickIconOption:(iconOption)iconOption;

@end
