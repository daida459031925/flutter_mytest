## **1 FittedBox**
> 按自己的大小调整其子widget的大小和位置

## **2 构造函数** 
> FittedBox({
>     Key key,
>     this.fit = BoxFit.contain,
>     this.alignment = Alignment.center,
>     this.clipBehavior = Clip.hardEdge,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 fit：缩放方式**
> fit:BoxFit.contain,

3.1.1 没有任何填充模式
> fit:BoxFit.none,

3.1.2 不按宽高比例填充，内容不会超过容器范围
> fit:BoxFit.fill,

3.1.3 按照宽高比等比模式填充，内容不会超过容器范围
> fit:BoxFit.contain,

3.1.4 按照原始尺寸填充整个容器模式。内容可能回超过容器范围
> fit:BoxFit.cover,

3.1.5 会根据情况缩小范围
> fit:BoxFit.scaleDown,

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

### **3.3 child：子widget**
> child: Text('你好 Flutter'),

