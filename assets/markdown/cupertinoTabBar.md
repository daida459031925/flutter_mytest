## **1 CupertinoSwitch**
> iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用

## **2 构造函数** 
> CupertinoTabBar({
>     Key key,
>     @required this.items,
>     this.onTap,
>     this.currentIndex = 0,
>     this.backgroundColor,
>     this.activeColor,
>     this.inactiveColor = _kDefaultTabBarInactiveColor,
>     this.iconSize = 30.0,
>     this.border = const Border(
>       top: BorderSide(
>         color: _kDefaultTabBarBorderColor,
>         width: 0.0, // One physical pixel.
>         style: BorderStyle.solid,
>       ),
>     ),
> })

## **3 常用属性** 
### **3.1 onTap：点击事件**
> onTap:() {},

### **3.2 currentIndex：当前选中的选项卡**
> currentIndex: 0,

### **3.3 backgroundColor：背景色**
> backgroundColor: Color(0xFFfafcff),

### **3.4 activeColor：选中选项卡颜色**
> activeColor:Colors.blue,

### **3.5 inactiveColor：未选中选项卡颜色**
> inactiveColor:Colors.black12,

### **3.6 iconSize：按钮图标大小**
> iconSize:30.0,

### **3.7 border：边框**
> border:const Border(),