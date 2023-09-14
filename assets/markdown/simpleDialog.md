## **1 SimpleDialog**
> 简单对话框，可以显示附加的提示和操作，通常配合SimpleDialogOption一起使用。

## **2 构造函数** 
> const SimpleDialog({
>     Key key,
>     this.title,
>     this.titlePadding = const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
>     this.children,
>     this.contentPadding = const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
>     this.semanticLabel,
>     this.shape,
> })

## **3 常用属性** 
### **3.1 title：标题**
> title:Text("Flutter Demo"),

### **3.2 titlePadding：标题间距**
> titlePadding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),

### **3.3 children：要显示的内容**
> children: <Widget>[],

### **3.4 contentPadding：内容间距**
> contentPadding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),