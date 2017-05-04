//
//  AppDelegate.m
//  YYXNavTab
//
//  Created by YanYaxing on 2017/4/27.
//  Copyright © 2017年 yanyaxing. All rights reserved.
//

#import "AppDelegate.h"
#import "YYXNavTabController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //初始化自定义
    YYXNavTabController *vc = [YYXNavTabController new];
    // 创建window,并显示
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [vc setNavTabVC];
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
