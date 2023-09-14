## **1 Align**
> 在其他端的开发，Align一般都是当做一个控件的属性，并没有拿出来当做一个单独的控件。Align本身实现的功能并不复杂，设置child的对齐方式，例如居中、居左居右等，并根据child尺寸调节自身尺寸。

## **2 构造函数** 
> Align({
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

### **3.2 widthFactor：宽度**
> 宽度因子。如果没有设置，则 Align 的宽度就是match_parent；如果为 非null，则将容器的宽度设置为 子Widget的宽度 乘以此宽度因子
值必须>=0

### **3.3 heightFactor：高度**
> 高度因子。如果没有设置，则 Align 的高度就是match_parent；如果为 非null，则将容器的高度设置为 子Widget的高度 乘以此高度因子
值必须>=0

### **3.4 child：子widget**
> child: Text('你好 Flutter'),
