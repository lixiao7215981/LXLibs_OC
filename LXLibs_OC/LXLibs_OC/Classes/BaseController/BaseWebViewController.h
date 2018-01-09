//
//  BaseWebViewController.h
//  LXLibs_OC
//
//  Created by Xiao.Li on 2018/1/2.
//  Copyright © 2018年 LXLibs. All rights reserved.
//

//              ◢██████◣　　　　　　◢████◣
//          ◢◤　　　　　　◥◣　　　　◢◤　　　　◥◣
//          ◤　　　　　　　　◥◣　　◢◤　　　　　　█
//          ▎　　　◢█◣　　　◥◣◢◤　　◢█　　　█
//          ◣　　◢◤　　◥◣　　　　　　◢◣◥◣　◢◤
//          ◥██◤　　　◢◤　　     　　◥◣
//          　　　　　　　┃　　　　　   ┃
//          　　　　　　　┃　　　━　　  ┃
//          　　　　　　　┃　┳┛　┗┳    ┃
//          　　　　　　　┃　　　 　　  ┃
//          　　　　　　　┃≡╰┬┬┬╯≡┃
//          　　　　　　　┃　　　　　　　┃
//          　　　　　　　┗━┓　　　┏━┛
//          　　　　　　　　　┃　　　┃
//          　　　　　　　　　┃　　　┃
//          　　　　　　　　　┃　　　┗━━━┓
//          　　　　　　　　　┃　　　    ┣━━━━┓
//          　　　　　　　　　┃         ┏━━━━┛
//          　　　　　　　　　┗┓┓┏━┳┓┏┛
//          　　　　　　　　　 ┃┫┫ ┃┫┫
//

#import "BaseViewController.h"
#import <WebKit/WebKit.h>

@interface BaseWebViewController : BaseViewController

/*** 显示的 WebView */
@property (nonatomic,strong) WKWebView *webView;
/*** 显示的 WebView Top 进度条 */
@property (nonatomic, strong) UIProgressView *progressView;

@end
