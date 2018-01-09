//
//  BaseTableViewController.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

//           　 へ　　　　　 ／|
//          　　/＼7　　　 ∠＿/
//          　 /　│　　 ／　／
//          　│　Z ＿,＜　／　　 /`ヽ
//          　│　　　　　ヽ　　 /　　〉
//          　Y　　　　　`　  /　　/
//          　ｲ●　､　●　　⊂⊃〈　　/
//          　()　 へ　　　　|　＼〈
//          　　>ｰ ､_　 ィ　 │ ／／
//          　 / へ　　 /　ﾉ＜| ＼＼
//          　 ヽ_ﾉ　　(_／　 │／／
//              7　　　　　　　|／
//              ＞―r￣￣`ｰ―＿
//         永   无  BUG   十  万 电  伏

#import "BaseViewController.h"
#import <PureLayout.h>

@interface BaseTableViewController : BaseViewController

/** 设置 TableView 的样式 */
@property (nonatomic, assign) UITableViewStyle tableViewStyle;

/** 自定义的TableView */
@property (nonatomic,strong) UITableView *tableView;

/** UITableView数据源 */
@property (nonatomic,strong) NSMutableArray *dataList;

#pragma mark - Method

- (NSLayoutConstraint *) setTableViewToSuperviewEdgesWithInsets:(ALEdgeInsets)insets;

@end
