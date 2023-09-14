## **1 CupertinoSwitch**
> ios风格的开关控制

## **2 构造函数** 
> CupertinoSwitch({
>     Key key,
>     @required this.value,
>     @required this.onChanged,
>     this.activeColor,
>     this.trackColor,
>     this.dragStartBehavior = DragStartBehavior.start,
> })

## **3 常用属性** 
### **3.1 value：true表示打开开关，false表示关闭开关**
> value: false,

### **3.2 activeColor：打开时的颜色**
> activeColor: Colors.blue,

### **3.3 onChanged：控制开关的关闭和打开**
> onChanged: (v) {
>     print(v);
> },
