## **1 SnackBar**
> SnackBar 是 Flutter 提供的一种提示 Widget，附带操作（Action）功能

## **2 构造函数** 
> SnackBar({
>     Key key,
>     @required this.content,
>     this.backgroundColor,
>     this.elevation,
>     this.shape,
>     this.behavior,
>     this.action,
>     this.duration = _snackBarDisplayDuration,
>     this.animation,
> })

## **3 常用属性** 
### **3.1 content：提示信息**
> content:Text("Flutter Demo"),

### **3.2 backgroundColor：背景色**
> backgroundColor: CupertinoColors.white,

### **3.3 action：SnackBar 尾部的按钮，用于一些回退操作等**
> action: SnackBarAction(label: '撤销', onPressed: decrease),

### **3.4 duration：停留的时长，默认 4000ms**
> duration: Duration(milliseconds: 2000),

### **3.5 animation：进出动画**