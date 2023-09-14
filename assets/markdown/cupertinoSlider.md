## **1 CupertinoSlider**
> ios风格的滑块

## **2 构造函数** 
> CupertinoSlider({
>     Key key,
>     @required this.value,
>     @required this.onChanged,
>     this.onChangeStart,
>     this.onChangeEnd,
>     this.min = 0.0,
>     this.max = 1.0,
>     this.divisions,
>     this.activeColor,
>     this.thumbColor = CupertinoColors.white,
> })

## **3 常用属性** 
### **3.1 activeColor：激活时的颜色**
> activeColor: Colors.blue,

### **3.2 divisions：离散部分的数量**
> divisions: 10, 

### **3.3 max：用户可以选择的最大值**
> max: 100,

### **3.4 min：用户可以选择的最小值**
> min: 0,

### **3.5 onChanged：改变时触发**
> onChanged: (v) {
>     print(v);
> },

### **3.6 onChangeEnd：改变后触发**
> onChangeEnd: (v) {
>     print(v);
> },

### **3.7 onChangeStart：改变前触发**
> onChangeStart: (v) {
>     print(v);
> },

### **3.8 value：滑块的值**
> value:10,
