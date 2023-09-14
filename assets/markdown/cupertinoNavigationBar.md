## **1 CupertinoNavigationBar**
> iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用

## **2 构造函数** 
> CupertinoNavigationBar({
>     Key key,
>     this.leading,
>     this.automaticallyImplyLeading = true,
>     this.automaticallyImplyMiddle = true,
>     this.previousPageTitle,
>     this.middle,
>     this.trailing,
>     this.border = _kDefaultNavBarBorder,
>     this.backgroundColor,
>     this.brightness,
>     this.padding,
>     this.actionsForegroundColor,
>     this.transitionBetweenRoutes = true,
>     this.heroTag = _defaultHeroTag,
> })

## **3 常用属性** 
### **3.1 leading：导航栏左侧组件,leading优先级高于previousPageTitle**
> leading: Icon(Icons.arrow_back),

### **3.2 automaticallyImplyLeading：是否显示左边组件**
> automaticallyImplyLeading : true,

### **3.3 automaticallyImplyMiddle：是否显示中间组件**
> automaticallyImplyMiddle : true,

### **3.4 previousPageTitle：导航栏左侧组件的右边的文本**
> previousPageTitle : "返回",

### **3.5 middle：导航栏中间组件**
> middle: Text("标题"),

### **3.6 trailing：导航栏右侧组件**
> trailing: Image.asset(
>     "assets/sample/image.jpg", 
>     width: 25.0, 
>     height: 25.0
> ),

### **3.7 backgroundColor：背景色**
> backgroundColor: Color(0xfff1f1f1),

### **3.8 padding：内边距**
> padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),

### **3.9 actionsForegroundColor：左侧默认组件和左侧组件右边文本的颜色**
> actionsForegroundColor: Colors.red,