## **1 SizedOverflowBox**
> SizedOverflowBox主要的布局行为有两点：
> 1 尺寸部分。通过将自身的固定尺寸，传递给child，来达到控制child尺寸的目的；  
> 2 超出部分。可以突破父节点尺寸的限制，超出部分也可以被渲染显示，与OverflowBox类似。

## **2 构造函数** 
> SizedOverflowBox({
>     Key key,
>     @required this.size,
>     this.alignment = Alignment.center,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 size：固定的尺寸**
> size: Size(100.0, 200.0),

### **3.2 alignment：对齐方式**
> alignment:Alignment.topLeft,

3.2.1 顶部左边
> alignment:Alignment.topLeft,

3.2.2 顶部中间
> alignment:Alignment.topCenter,

3.2.3 顶部右边
> alignment:Alignment.topRight,

3.2.4 中部左边
> alignment:Alignment.centerLeft,

3.2.5 中部中间
> alignment:Alignment.center,

3.2.6 中部右边
> alignment:Alignment.centerRight,

3.2.7 底部左边
> alignment:Alignment.bottomLeft,

3.2.8 底部中间
> alignment:Alignment.bottomCenter,

3.2.9 底部右边
> alignment:Alignment.bottomRight,

### **3.3 child：子控件**
> child: Text("内容"),