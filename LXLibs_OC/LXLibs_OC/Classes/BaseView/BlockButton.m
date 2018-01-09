//
//  BlockButton.m
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import "BlockButton.h"

@implementation BlockButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)btnClick
{
    if (self.ClickOption) {
        self.ClickOption();
    }
}

@end
