## **1 IconButton**
> IconButton一个Material图标按钮，点击时会有水波动画

## **2 构造函数** 
> IconButton({
>     Key key,
>     this.iconSize = 24.0,
>     this.padding = const EdgeInsets.all(8.0),
>     this.alignment = Alignment.center,
>     @required this.icon,
>     this.color,
>     this.highlightColor,
>     this.splashColor,
>     this.disabledColor,
>     @required this.onPressed,
>     this.tooltip
> })

## **3 常用属性** 
### **3.1 iconSize：图标大小**
> iconSize:24.0

### **3.2 icon：图标资源**
> icon: Icon(Icons.android),

### **3.3 alignment：图标位置**
> alignment: Alignment.center,

### **3.4 color：颜色**
> color: Colors.black,

### **3.5 highlightColor：高亮颜色，点击（长按）按钮后的颜色**
> highlightColor: Colors.green,

### **3.6 padding：内边距，其接收值的类型是EdgeInsetsGeometry类型的**

3.6.1 一次性设置上下左右的间距
> padding: EdgeInsets.all(20),

3.6.2 单独设置
3.6.2.1 上内边距  
> padding: EdgeInsets.only(top: 30),    

3.6.2.2 下内边距  
> padding: EdgeInsets.only(bottom: 30), 

3.6.2.3 左内边距  
> padding: EdgeInsets.only(left: 30),  

3.6.2.4 右内边距  
> padding: EdgeInsets.only(right: 30), 

3.6.3 一次性设置上下左右的间距 左上右下顺序设置
> padding: EdgeInsets.fromLTRB(0,30,20,40),

### **3.7 splashColor：水波纹颜色**
> splashColor: Colors.black,

### **3.8 disabledColor：不可点击时高亮颜色**
> disabledColor: Colors.black,

