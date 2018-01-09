//
//  BasePullTableViewController.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BasePullTableViewController.h"
#import <MJRefresh.h>

@interface BasePullTableViewController ()

@end

@implementation BasePullTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingTableViewPull];
}

- (void)setTableViewStyle:(UITableViewStyle)tableViewStyle
{
    [super setTableViewStyle:tableViewStyle];
    [self settingTableViewPull];
}

- (void) settingTableViewPull
{
    MJRefreshNormalHeader *headRefresh =  [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    MJRefreshAutoNormalFooter *footerRefresh = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
    self.tableView.mj_header = headRefresh;
    self.tableView.mj_footer = footerRefresh;
}

- (void) loadNewData
{
    
}

- (void)loadMoreData
{
    
}


@end
