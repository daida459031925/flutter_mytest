## **1 PopupMenuButton**
> 当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表

## **2 构造函数** 
> PopupMenuButton({
>     Key key,
>     @required this.itemBuilder,
>     this.initialValue,
>     this.onSelected,
>     this.onCanceled,
>     this.tooltip,
>     this.elevation = 8.0,
>     this.padding = const EdgeInsets.all(8.0),
>     this.child,
>     this.icon,
>     this.offset = Offset.zero,
> })

## **3 常用属性** 
### **3.1 itemBuilder：item子项**
> itemBuilder:<PopupMenuItem<String>>[],

### **3.2 initialValue：初始值，如果itemBuilder里该值，则会高亮显示**
> initialValue: 'value',

### **3.3 onSelected：选择其中一项时回调**
> onSelected:(String action) {}

### **3.4 onCanceled：点击空白处，不选择时回调**
> onCanceled: () {}

### **3.5 dtooltip：提示**
> tooltip: "长按提示",

### **3.6 elevation：Z轴阴影**
> elevation:8.0,

### **3.7 child：子控件，不能和icon都设置**
> child: Text("abc"),

### **3.8 icon：IconButton子控件， 不能和child都设置**
> icon: Image(image: AssetImage("assets/tab/search.png"),),