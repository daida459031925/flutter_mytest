## **1 ConstrainedBox**
> ConstrainedBox即创建一个Widget，该Widget对其子child施加附加约束

## **2 构造函数** 
> ConstrainedBox({
>     Key key,
>     @required this.constraints,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 constraints：约束**
> BoxConstraints({
>     this.minWidth = 0.0,
>     this.maxWidth = double.infinity,
>     this.minHeight = 0.0,
>     this.maxHeight = double.infinity
> })

3.1.1 满足约束条件的最小宽度
> minWidth: 30,

3.1.2 满足约束条件的最大宽度
> maxWidth: 30,

3.1.3 满足约束条件的最小高度
> minHeight: 30,

3.1.4 满足约束条件的最大高度
> maxHeight: 30,

### **3.2 child：子widget**
> child: Text('你好 Flutter'),
