# NightMode
夜间模式(换肤设置)

iOS 开发中有时候会有夜间模式(换肤设置)的需求, 其实主要是更改相关颜色操作!

思路:每次切换夜间/白天模式时，都会发出通知给所有ViewController，让它们切换到相应的主题。

创建一个管理模式主题的单例管理类ThemeManage
封装好需要做夜间模式变色处理的控件扩展:UIView (ThemeChange), UINavigationBar (ThemeChange), UITabBar (ThemeChange), UILabel (ThemeChange), UIButton (ThemeChange)
在 AppDelegate里先获取夜间模式状态, 根控制器里先设置tabBar 及 子控制器里navigationBar的夜间模式状态
添加控制白天/黑夜模式item,发通知切换相对应i模式及image
添加相关控件是否黑夜模式下已更换字色和背景色

思路详情请移步技术文章:[iOS-夜间模式(换肤设置)](http://www.jianshu.com/p/c8e638e76e83)


您的支持是作为程序媛的我最大的动力, 如果觉得对你有帮助请送个Star吧,谢谢啦
