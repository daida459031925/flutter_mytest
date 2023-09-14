## **1 Slider**
> Slider 是一个滑块组件，可用于数量的选择。

## **2 构造函数** 
> const Switch({
>     Key key,
>     @required this.value,   
>     @required this.onChanged,  
>     this.onChangeStart,
>     this.onChangeEnd,
>     this.min = 0.0,
>     this.max = 1.0,
>     this.divisions, 
>     this.label,  
>     this.activeColor,  
>     this.inactiveColor, 
>     this.semanticFormatterCallback,
> })

## **3 常用属性** 
### **3.1 activeColor：激活时的颜色**
> activeColor: Colors.blue,

### **3.2 divisions：离散部分的数量**
> divisions: 10,

### **3.3 inactiveColor：滑块轨道的非活动部分的颜色**
> inactiveColor: Colors.black12,

### **3.4 label：滑块处于活动状态时显示在滑块上方的标签**
> label: '标签',

### **3.5 max：用户可以选择的最大值**
> max:10,

### **3.6 min：用户可以选择的最小值**
> min:0,

### **3.7 onChanged：改变时触发**
> onChanged: (double){
>     setState(() {
>         progressValue=double.roundToDouble();
>     });
> },

### **3.8 onChangeEnd：改变后触发**
> onChangeEnd:(double){
>     print(double);
> } 

### **3.9 onChangeStart：改变前触发**
> onChangeStart: (double){
>     print(double);
> },

### **3.10 value：滑块的值**
> value:8,

