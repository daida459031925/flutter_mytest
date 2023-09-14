## **1 CupertinoTabView**
> 支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用

## **2 构造函数** 
> CupertinoTabView({
>     Key key,
>     this.builder,
>     this.navigatorKey,
>     this.defaultTitle,
>     this.routes,
>     this.onGenerateRoute,
>     this.onUnknownRoute,
>     this.navigatorObservers = const <NavigatorObserver>[],
> })

## **3 常用属性** 
### **3.1 builder：选项卡视图**
> builder: (context) {
>     switch (index) {
>       case 0:
>         return Center(
>           child: Text('根选项卡-首页'),
>         );
>         break;
>       case 1:
>         return Center(
>           child: Text('根选项卡-设置'),
>         );
>         break;
>     }
> },

### **3.2 routes：选项卡视图路由**
> 不怎么会用