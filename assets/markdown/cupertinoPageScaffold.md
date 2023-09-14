## **1 CupertinoPageScaffold**
> 一个iOS风格的页面的基本布局结构。包含内容和导航栏

## **2 构造函数** 
> CupertinoPageScaffold({
>     Key key,
>     this.navigationBar,
>     this.backgroundColor,
>     this.resizeToAvoidBottomInset = true,
>     @required this.child,
> })

## **3 常用属性** 
### **3.1 navigationBar：顶部导航栏**
> navigationBar: CupertinoNavigationBar(),

### **3.2 backgroundColor：背景色**
> backgroundColor: Color(0xFFfafcff),

### **3.3 child：内容栏**
> child: Center(),
