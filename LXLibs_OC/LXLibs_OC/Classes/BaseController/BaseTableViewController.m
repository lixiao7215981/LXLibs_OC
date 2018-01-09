//
//  BaseTableViewController.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BaseTableViewController.h"
#import <UIView+Category.h>

@interface BaseTableViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_tableViewInsets;
}
@end

@implementation BaseTableViewController

static NSString *LX_BaseTableViewControllerCellID = @"BaseTableViewControllerCellID";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTableViewWith:UITableViewStylePlain];
}

- (void)dealloc
{
    self.tableView.delegate = nil;
    self.tableView.dataSource = nil;
}

#pragma mark - Method

- (void) createTableViewWith:(UITableViewStyle) style
{
    // 设置tableview -> 从Xib中加载
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[UITableView class]] && view.tag == 0) {
            self.tableView = (UITableView *)view;
            break;
        }
    }
    // xib 中未找到TableView 手动创建
    if (!self.tableView) {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
        self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:self.tableView];
        _tableViewInsets = [self.tableView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
    }
    
    // 设置TableView
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.tableView.width, 0.01f)];
}

- (void)setTableViewStyle:(UITableViewStyle)tableViewStyle
{
    _tableViewStyle = tableViewStyle;
    if (self.tableView.style == tableViewStyle) return;
    [self.tableView removeFromSuperview];
    self.tableView = nil;
    [self createTableViewWith:tableViewStyle];
}

- (NSArray *)setTableViewToSuperviewEdgesWithInsets:(UIEdgeInsets)insets
{
    [_tableViewInsets autoRemoveConstraints];
    _tableViewInsets = [self.tableView autoPinEdgesToSuperviewEdgesWithInsets:insets];
    return _tableViewInsets;
}

#pragma mark - UITableViewDataSource,UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.dataList.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:LX_BaseTableViewControllerCellID];
    if (tableViewCell == nil) {
        tableViewCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:LX_BaseTableViewControllerCellID];
    }
    return tableViewCell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [UIView new];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

#pragma mark - 懒加载
- (NSMutableArray *)dataList
{
    if (!_dataList) {
        _dataList = [[NSMutableArray alloc] init];
    }
    return _dataList;
}

@end
