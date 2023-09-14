## **1 LimitedBox**
> 一个当其自身不受约束时才限制其大小的盒子

## **2 构造函数** 
> LimitedBox({
>     Key key,
>     this.maxWidth = double.infinity,
>     this.maxHeight = double.infinity,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 maxWidth：限定的最大宽度，默认值是double.infinity**
> maxWidth:150.0,

### **3.2 maxHeight：限定的最大高度，默认值是double.infinity**
> maxHeight: 150.0,

### **3.4 child：子widget**
> child: Text('你好 Flutter'),