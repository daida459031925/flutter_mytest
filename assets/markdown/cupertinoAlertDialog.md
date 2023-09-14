## **1 CupertinoAlertDialog**
> iOS风格的alert dialog

## **2 构造函数** 
> CupertinoAlertDialog({
>     Key key,
>     this.title,
>     this.content,
>     this.actions = const <Widget>[],
>     this.scrollController,
>     this.actionScrollController,
>     this.insetAnimationDuration = const Duration(milliseconds: 100),
>     this.insetAnimationCurve = Curves.decelerate,
> })

## **3 常用属性** 
### **3.1 atitle：组件的标题**
> title: Text("这是一个iOS风格的对话框"),

### **3.2 content：标题的内容**
> content: SizedBox(),

### **3.3 actions：组件中包含的操作组件，不能为空**
> actions: <Widget>[],

### **3.4 scrollController：内容滚动控制器**
> 默认 null，一般不需要

### **3.5 actionScrollController：操作组件滚动控制器**
> 默认 null，一般不需要