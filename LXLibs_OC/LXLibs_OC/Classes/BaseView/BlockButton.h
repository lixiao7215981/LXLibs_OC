//
//  BlockButton.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ClickButton)(void);

@interface BlockButton : UIButton

@property (nonatomic,copy) ClickButton ClickOption;

@end
