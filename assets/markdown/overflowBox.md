## **1 OverflowBox**
> 对其子项施加不同约束的widget，它可能允许子项溢出父级

## **2 构造函数** 
> OverflowBox({
>     Key key,
>     this.alignment = Alignment.center,
>     this.minWidth,
>     this.maxWidth,
>     this.minHeight,
>     this.maxHeight,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 alignment：对齐方式**
> alignment:Alignment.center,

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

### **3.2 minWidth：允许child的最小宽度，如果child宽度小于这个值，则按照最小宽度进行显示**
> minWidth: 200.0,

### **3.3 maxWidth：允许child的最大宽度，如果child宽度大于这个值，则按照最大宽度进行展示**
> maxWidth: 200.0,

### **3.4 minHeight：允许child的最小高度，如果child高度小于这个值，则按照最小高度进行显示**
> minHeight: 200.0,

### **3.5 maxHeight：允许child的最大高度，如果child高度大于这个值，则按照最大高度进行展示**
> maxHeight: 200.0,

### **3.6 child：子widget**
> child: Text('你好 Flutter'),
