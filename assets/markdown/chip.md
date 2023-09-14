## **1 Chip**
> 中文翻译为碎片的意思，一般也是用作商品或者一些东西的标签。

## **2 构造函数** 
> Chip({
>     Key key,
>     this.avatar,
>     @required this.label,
>     this.labelStyle,
>     this.labelPadding,
>     this.deleteIcon,
>     this.onDeleted,
>     this.deleteIconColor,
>     this.deleteButtonTooltipMessage,
>     this.shape,
>     this.clipBehavior = Clip.none,
>     this.backgroundColor,
>     this.padding,
>     this.materialTapTargetSize,
> })

## **3 常用属性** 
### **3.1 avatar：标签左侧Widget，一般为小图标**
> avatar: Icon(
>     Icons.arrow_forward,
>     color: Colors.black54,
> ),

### **3.2 label：标签**
> label: Text("chip"),

### **3.3 labelStyle：标签样式**
> labelStyle: TextStyle(color: Colors.black54),

### **3.4 labelPadding：标签内边距**
> labelPadding: EdgeInsets.all(15.0),

### **3.5 deleteIcon：删除图标**
> deleteIcon: Icon(Icons.close),

### **3.6 onDeleted：删除回调**
> onDeleted: () {
>      print("点击了删除噢");
> },

### **3.7 deleteIconColor：删除图标的颜色**
> deleteIconColor: Colors.black54,

### **3.8 deleteButtonTooltipMessage：删除按钮的tip文字**
> deleteButtonTooltipMessage: "弹出提示",

### **3.9 shape：形状**
> shape: RoundedRectangleBorder(
>     borderRadius: BorderRadius.circular(2.0),
> ),

### **3.10 backgroundColor：背景颜色**
> backgroundColor: Colors.orange,

### **3.11 padding：chip内边距**
> padding: EdgeInsets.all(15.0),

### **3.12 materialTapTargetSize：删除图标material点击区域大小**
> materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,