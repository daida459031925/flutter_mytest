## **1 FractionallySizedBox**
> 一个widget，它把它的子项放在可用空间的一小部分

## **2 构造函数** 
> FractionallySizedBox({
>     Key key,
>     this.alignment = Alignment.center,
>     this.widthFactor,
>     this.heightFactor,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 alignment：对齐方式**
> alignment:Alignment.topLeft,

3.1.1 顶部左边
> alignment:Alignment.topLeft,

3.1.2 顶部中间
> alignment:Alignment.topCenter,

3.1.3 顶部右边
> alignment:Alignment.topRight,

3.1.4 中部左边
> alignment:Alignment.centerLeft,

3.1.5 中部中间
> alignment:Alignment.center,

3.1.6 中部右边
> alignment:Alignment.centerRight,

3.1.7 底部左边
> alignment:Alignment.bottomLeft,

3.1.8 底部中间
> alignment:Alignment.bottomCenter,

3.1.9 底部右边
> alignment:Alignment.bottomRight,

### **3.2 widthFactor：FractionallySizedBox组件的宽度**
> widthFactor: 0.5,

### **3.3 heightFactor：FractionallySizedBox组件的高度**
> heightFactor: 0.5,

### **3.4 child：子widget**
> child: Text('你好 Flutter'),