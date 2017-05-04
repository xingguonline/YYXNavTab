//
//  YYXNavTabController.m
//  YYXNavTab
//
//  Created by YanYaxing on 2017/5/4.
//  Copyright © 2017年 yanyaxing. All rights reserved.
//

#import "YYXNavTabController.h"
#import "TabItem.h"


@interface YYXNavTabController ()

@end

@implementation YYXNavTabController

-(UITabBarController *) setNavTabVC{
    
    // 获取plist文件的路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"TabItem.plist" ofType:nil];
    // 从plist文件字典数组
    NSArray<NSDictionary *> *tabItemDics = [NSArray arrayWithContentsOfFile:path];
    // 保存模型数组
    NSMutableArray *tabItems = [NSMutableArray arrayWithCapacity:tabItemDics.count];
    
    // 保存标签控制器的子控制器
    NSMutableArray *viewControllers = [NSMutableArray arrayWithCapacity:tabItems.count];
    
    // 创建子控制器,并设置子控制器的相关属性
    [tabItemDics enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull dic, NSUInteger idx, BOOL * _Nonnull stop) {
        
        // 字典转换为模型
        TabItem *tabItem = [TabItem tabItemWithDic:dic];
        [tabItems addObject:tabItem];
        Class rootCls = NSClassFromString(tabItem.rootController);
        UIViewController *rootController = [[rootCls alloc] init];
        rootController.title = tabItem.title;
        // 根据类名创建类
        Class navCls = NSClassFromString(tabItem.navController);
        UINavigationController *navController = [[navCls alloc] initWithRootViewController:rootController];
        
        navController.tabBarItem.image = [[UIImage imageNamed:tabItem.image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        navController.tabBarItem.selectedImage = [[UIImage imageNamed:tabItem.selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        navController.navigationBar.barStyle = UIBarStyleBlack;
        
        navController.tabBarItem.title = tabItem.title;
        [viewControllers addObject:navController];
    }];
    
    // 创建标签控制器
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = viewControllers;
    tabBarController.tabBar.tintColor = [UIColor blueColor];
    
    return tabBarController;
}

@end
