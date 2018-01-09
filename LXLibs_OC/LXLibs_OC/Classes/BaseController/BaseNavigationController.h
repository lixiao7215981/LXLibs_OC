//
//  BaseNavigationController.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/3.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

//
//                       .::::.
//                     .::::::::.
//                    :::::::::::
//                 ..:::::::::::'
//              '::::::::::::'
//                .::::::::::
//           '::::::::::::::..
//                ..::::::::::::.
//              ``::::::::::::::::
//               ::::``:::::::::'        .:::.
//              ::::'   ':::::'       .::::::::.
//            .::::'      ::::     .:::::::'::::.
//           .:::'       :::::  .:::::::::' ':::::.
//          .::'        :::::.:::::::::'      ':::::.
//         .::'         ::::::::::::::'         ``::::.
//     ...:::           ::::::::::::'              ``::.
//    ```` ':.          ':::::::::'                  ::::..
//                       '.:::::'                    ':'````..
//
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface BaseNavigationController : UINavigationController

- (void)dragging:(UIPanGestureRecognizer *)recognizer;

@end
