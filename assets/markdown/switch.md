## **1 Switch**
> Switch 是一个切换按钮组件，通常用于设置的选项里。

## **2 构造函数** 
> const Switch({
>     Key key,
>     this.activeColor,
>     this.activeThumbImage,
>     this.activeTrackColor,
>     this.inactiveThumbColor,
>     this.inactiveThumbImage,
>     this.inactiveTrackColor,
>     this.onChanged,
>     this.value
> })

## **3 常用属性** 
### **3.1 activeColor：激活时原点的颜色**
> activeColor:Colors.blue,

### **3.2 activeThumbImage：原点还支持图片，激活时的效果**
> activeThumbImage: AssetImage(('assets/images/title.png')),

### **3.3 activeTrackColor：激活时横条的颜色**
> activeTrackColor: Colors.blue,

### **3.4 inactiveThumbColor：非激活时原点的颜色**
> inactiveThumbColor:Colors.blue,

### **3.5 inactiveThumbImage：非激活原点的图片效果**
> inactiveThumbImage:AssetImage(('assets/images/title.png')),

### **3.6 inactiveTrackColor：非激活时横条的颜色**
> inactiveTrackColor:Colors.blue

### **3.7 onChanged：改变时触发**
> onChanged: (newValue) {
>     setState(() {
>         _value = newValue;
>     });
> }

### **3.8 value：切换按钮的值**
> value:0,
