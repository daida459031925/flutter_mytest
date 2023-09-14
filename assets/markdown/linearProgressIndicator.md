## **1 LinearProgressIndicator**
> LinearProgressIndicator是一个线性进度条。

## **2 构造函数** 
> LinearProgressIndicator({
>     Key key,
>     double value,
>     Color backgroundColor,
>     Animation<Color> valueColor,
>     this.minHeight,
>     String semanticsLabel,
>     String semanticsValue,
> })

## **3 常用属性** 
### **3.1 value：value表示当前的进度，取值范围为[0,1]**
> value: 0.3,

### **3.2 backgroundColor：指示器的背景色**
> backgroundColor: Colors.grey,

### **3.3 valueColor: 指示器的进度条颜色**
> valueColor: AlwaysStoppedAnimation(Colors.blue),

### **3.4 minHeight：最小高度**
> minHeight: 4.0,
