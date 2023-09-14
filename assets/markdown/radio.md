## **1 Radio**
> Radio 单选框，允许用户从一组中选择一个选项。 

## **2 构造函数** 
> const Radio({
>     Key key,
>     this.groupValue ,
>     this.activeColor,
>     this.value,
>     this.onChanged
> })

## **3 常用属性** 
### **3.1 activeColor：激活时的颜色**
> activeColor:Colors.blue,

### **3.2 groupValue：选择组的值**
> groupValue: 0,

### **3.3 value：单选的值**
> value: false,

### **3.4 onChanged：改变时触发**
> onChanged: (bool value) {
>     setState(() {
>         this.check = !this.check;
>     });
> },