## **1 ButtonBar**
> ButtonBar 可以默认实现一个按钮组，通过 children 属性可以传入多个 Button。

## **2 构造函数** 
> const ButtonBar({
>     Key key,
>     this.alignment = MainAxisAlignment.end,
>     this.mainAxisSize = MainAxisSize.max,
>     this.children = const <Widget>[],
> })

## **3 常用属性** 
### **3.1 alignment：子child的对齐方式**
> alignment:MainAxisAlignment.end,

### **3.2 MainAxisSize：在主轴方向占有空间的值**
> mainAxisSize: MainAxisSize.max,

### **3.3 children：子控件**
> children: <Widget>[],