## **1 CupertinoButton**
> ios风格的按钮

## **2 构造函数** 
> CupertinoButton({
>     Key key,
>     @required this.child,
>     this.padding,
>     this.color,
>     this.disabledColor = CupertinoColors.quaternarySystemFill,
>     this.minSize = kMinInteractiveDimensionCupertino,
>     this.pressedOpacity = 0.4,
>     this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
>     @required this.onPressed,
> })

## **3 常用属性** 
### **3.1 padding：内边距**
> padding: EdgeInsets.fromLTRB(),

### **3.2 color：可用时按钮颜色**
> color: Colors.green,

### **3.3 disabledColor：不可用时按钮颜色**
> disabledColor: Colors.blue,

### **3.4 minSize：按钮最小尺寸**
> minSize: 40.0,

### **3.5 pressedOpacity：按下时按钮透明度是原来的多少，不能大于1**
> pressedOpacity: 0.2,

### **3.6 borderRadius：按钮圆角大小**
> borderRadius: BorderRadius.all(Radius.circular(8.0)),

### **3.7 onPressed：按下回调**
> onPressed: (){},