## **1 CupertinoTabScaffold**
> 标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上

## **2 构造函数** 
> CupertinoTabScaffold({
>     Key key,
>     @required this.tabBar,
>     @required this.tabBuilder,
>     this.controller,
>     this.backgroundColor,
>     this.resizeToAvoidBottomInset = true,
> })

## **3 常用属性** 
### **3.1 tabBar：底部选项卡**
>  tabBar: CupertinoTabBar(),

### **3.2 tabBuilder：选项卡内容**
> tabBuilder: (context, index) {},

### **3.3 backgroundColor：背景色**
> backgroundColor: Color(0xFFfafcff),