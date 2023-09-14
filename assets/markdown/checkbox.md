## **1 Checkbox**
> Checkbox 是一个复选框组件，通常用于设置的选项里。 

## **2 构造函数** 
> const Checkbox({
>     Key key,
>     this.activeColor,
>     this.tristate,
>     this.value,
>     this.onChanged
> })

## **3 常用属性** 
### **3.1 activeColor：激活时的颜色**
> activeColor:Colors.blue,

### **3.2 tristate：如果为 true，那么复选框的值可以是 true，false 或 null**
> tristate: true,

### **3.3 value：复选框的值**
> value: false,

### **3.4 onChanged：改变时触发**
> onChanged: (bool value) {
>     setState(() {
>         this.check = !this.check;
>     });
> },