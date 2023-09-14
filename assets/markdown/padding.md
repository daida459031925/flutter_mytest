## **1 Padding**
> Padding在Flutter中用的也挺多的，作为一个基础的控件，功能非常单一，给子节点设置padding属性。写过其他端的都了解这个属性，就是设置内边距属性，内边距的空白区域，也是widget的一部分

## **2 构造函数** 
> Padding({
>     Key key,
>     @required this.padding,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 padding：内边距，其接收值的类型是EdgeInsetsGeometry类型的**
> padding:EdgeInsets.all(20),

3.1.1 一次性设置上下左右的间距
> padding: EdgeInsets.all(20),

3.1.2 单独设置
3.1.2.1 上内边距  
> padding: EdgeInsets.only(top: 30),    

3.1.2.2 下内边距  
> padding: EdgeInsets.only(bottom: 30), 

3.1.2.3 左内边距  
> padding: EdgeInsets.only(left: 30),  

3.1.2.4 右内边距  
> padding: EdgeInsets.only(right: 30), 

3.1.3 一次性设置上下左右的间距 左上右下顺序设置
> padding: EdgeInsets.fromLTRB(0,30,20,40),
