//
//  BaseCellItemGroup.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseCellItemGroup : NSObject

/**
 *  分组的头部
 */
@property (nonatomic,copy) NSString *headTitle;
/**
 *  分组的尾部
 */
@property (nonatomic,copy) NSString *footerTitle;
/**
 *  分组的头部View
 */
@property (nonatomic,strong) UIView *headView;
/**
 *  分组的尾部View
 */
@property (nonatomic,strong) UIView *footerView;
/**
 *  分组的数据
 */
@property (nonatomic,strong) NSArray *item;

+ (instancetype)createGroupWithHeadTitle:(NSString *) headTitle AndFooterTitle:(NSString *) footerTitle OrItem:(NSArray *) item;

+ (instancetype)createGroupWithHeadView:(UIView *) headView AndFootView:(UIView *) footerView OrItem:(NSArray *)item;

+ (instancetype)createGroupWithItem:(NSArray *) item;

/**
 *  向 item 当中添加数据
 */
- (instancetype)addObjectWith:(id)object;

@end
