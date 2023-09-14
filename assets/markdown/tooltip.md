## **1 Tooltip**
> 一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签

## **2 构造函数** 
> Tooltip({
>     Key key,
>     @required this.message,
>     this.height,
>     this.padding,
>     this.margin,
>     this.verticalOffset,
>     this.preferBelow,
>     this.excludeFromSemantics,
>     this.decoration,
>     this.textStyle,
>     this.waitDuration,
>     this.showDuration,
>     this.child,
> })

## **3 常用属性** 
### **3.1 message：提示的内容**
> message:'显示了',

### **3.2 height：提示框的高度**
> height: 50,

### **3.3 padding：内边距**
> padding: EdgeInsets.only(left: 10,right: 10),

### **3.4 verticalOffset：距离child的垂直距离**
> verticalOffset: 50,

### **3.5 preferBelowr：false 在child上面  true 在child下面提示**
> preferBelowr:false,

### **3.6 decoration： 可以对背景进行修饰**
> decoration: BoxDecoration(color: Colors.black45),

### **3.7 waitDuration：长按的时间**
> waitDuration: Duration(seconds: 2),

### **3.8 showDuration：显示的时间**
> showDuration: Duration(seconds: 5),
