## **1 CupertinoFullscreenDialogTransition**
> 一个iOS风格的过渡，用于调用全屏对话框

## **2 构造函数** 
> CupertinoFullscreenDialogTransition({
>     Key key,
>     @required Animation<double> primaryRouteAnimation,
>     @required Animation<double> secondaryRouteAnimation,
>     @required this.child,
>     @required bool linearTransition,
> }) 

## **3 常用属性** 
### **3.1 primaryRouteAnimation：是在此屏幕被推入时从0.0到1.0的线性路径动画**
> primaryRouteAnimation: false,

### **3.2 secondaryRouteAnimation：是一个从0.0到1.0的线性路径动画**
> secondaryRouteAnimation: Colors.blue,

### **3.3 linearTransition：用于精确跟踪手势拖动**
> linearTransition: false,

### **3.4 child：子组件**
> child: Container(
>   color: Colors.blueGrey,
>   height: 300,
> ),