## **1 Card**
> Flutter Card 组件，卡片组件具有圆角和阴影，看起来有立体感。

## **2 构造函数** 
> Card({
>     Key key,
>     this.color,
>     this.shadowColor,
>     this.elevation,
>     this.shape,
>     this.borderOnForeground = true,
>     this.margin,
>     this.clipBehavior,
>     this.child,
>     this.semanticContainer = true,
> })

## **3 常用属性** 
### **3.1 color：颜色**
> color:Colors.blue[500],

### **3.2 elevation：阴影大小**
> elevation: elevation: 5.0,

### **3.3 shape：Card 的阴影效果**
> shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))), 

### **3.4 margin：外边距**
>  margin: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0,right: 10.0)

### **3.5 child**
> child: Text("内容"),