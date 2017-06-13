# YYXNavTab

简单-快速-标签栏加导航控制器

设置代码启动，
然后调用就可以了，
封装成plist文件，直接修改plist图标名就OK了。
<br>
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/YYXNavTab/Image/y0.png)
<br>

在APPDelegate调用，下面代码搞定。

    //初始化自定义
    YYXNavTabController *vc = [YYXNavTabController new];
    // 创建window,并显示
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [vc setNavTabVC];
    [_window makeKeyAndVisible];

直接下代码启动看吧，灰常简单。
<br>
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/YYXNavTab/Image/y1.png)
<br>
使用说明：
1、拖入YYXNavTab文件夹到你的项目;

2、在APPDelegate里导入并调用，OK！


---------
提醒：使用代码启动
<br>
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/YYXNavTab/Image/y2.png)
<br>
---------

提醒：自定义plist文件
<br>
 ![image](https://github.com/xingguonline/YYXNavTab/blob/master/YYXNavTab/Image/y3.png)
<br>
--------

