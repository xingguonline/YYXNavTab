//
//  TabItem.m
//  YYXNavTab
///Users/yanyanxing/Documents/2017-0-0/2017-02-00/2017-02-23/33-严雅兴/33-严雅兴/Classes/TabItem.plist
//  Created by YanYaxing on 2017/4/27.
//  Copyright © 2017年 yanyaxing. All rights reserved.
//

#import "TabItem.h"

@implementation TabItem

// 字典转模型
+(instancetype)tabItemWithDic:(NSDictionary *)dic{
    TabItem *tabItem = [[TabItem alloc] init];
    // 把字典的key和value转化成模型的属性和属性的值
    [tabItem setValuesForKeysWithDictionary:dic];
    return tabItem;
}

@end
