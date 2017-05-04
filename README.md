# YYXNavTab

标签栏加导航控制器

网上很多太复杂了！！！
自己写了一个最快捷搭建的，
设置代码启动，
然后调用就可以了，
封装成plist文件，直接修改plist图标名就OK了！！！

 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/Image/y0.png)

在APPDelegate调用，下面几行代码搞定！！！

    //初始化自定义
    YYXNavTabController *vc = [YYXNavTabController new];
    // 创建window,并显示
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [vc setNavTabVC];
    [_window makeKeyAndVisible];

直接下代码启动看吧，灰常简单。
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/Image/y1.png)

使用说明：
1、拖入YYXNavTab文件夹到你的项目;

2、在APPDelegate里导入并调用，OK！


下载了记得点个star，握爪。

提醒：使用代码启动
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/Image/y2.png)

提醒：自定义plist文件
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/Image/y3.png)

