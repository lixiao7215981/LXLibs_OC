//
//  BaseCellItemGroup.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseCellItemGroup.h"

@implementation BaseCellItemGroup

+ (instancetype)createGroupWithHeadTitle:(NSString *)headTitle AndFooterTitle:(NSString *)footerTitle OrItem:(NSArray *)item
{
    BaseCellItemGroup *group = [self createGroupWithItem:item];
    group.headTitle = headTitle;
    group.footerTitle = footerTitle;
    return group;
}

+ (instancetype)createGroupWithHeadView:(UIView *) headView AndFootView:(UIView *) footerView OrItem:(NSArray *)item
{
    BaseCellItemGroup *group = [self createGroupWithItem:item];
    group.headView = headView;
    group.footerView = footerView;
    return group;
}

+ (instancetype)createGroupWithItem:(NSArray *)item
{
    BaseCellItemGroup *group = [[self alloc] init];
    group.item = item;
    return group;
}

- (instancetype)addObjectWith:(id)object
{
    NSMutableArray *array = [NSMutableArray arrayWithArray:self.item];
    [array addObject:object];
    self.item = array;
    return self;
}

@end
