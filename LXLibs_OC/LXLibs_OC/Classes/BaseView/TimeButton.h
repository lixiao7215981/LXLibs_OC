//
//  TimeButton.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockButton.h"
@interface TimeButton : BlockButton

/**
 *  按钮默认的颜色
 */
@property (nonatomic,strong) UIColor *defineColor;

/**
 *  开始计时WithTime
 */
- (void)startWithTimer:(NSInteger)time;

/**
 *  结束计时
 */
- (void) endTimed;

@end
