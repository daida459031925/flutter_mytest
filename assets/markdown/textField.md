## **1 TextField**
> TextField 是一个文本输入组件，类似 Web 上的 Input。

## **2 构造函数** 
> TextField({
>     Key key,
>     this.controller,
>     this.focusNode,
>     this.decoration = const InputDecoration(),
>     TextInputType keyboardType,
>     this.textInputAction,
>     this.textCapitalization = TextCapitalization.none,
>     this.style,
>     this.strutStyle,
>     this.textAlign = TextAlign.start,
>     this.textDirection,
>     this.autofocus = false,
>     this.obscureText = false,
>     this.autocorrect = true,
>     this.maxLines = 1,
>     this.minLines,
>     this.expands = false,
>     this.maxLength,
>     this.maxLengthEnforced = true,
>     this.onChanged,
>     this.onEditingComplete,
>     this.onSubmitted,
>     this.inputFormatters,
>     this.enabled,
>     this.cursorWidth = 2.0,
>     this.cursorRadius,
>     this.cursorColor,
>     this.keyboardAppearance,
>     this.scrollPadding = const EdgeInsets.all(20.0),
>     this.dragStartBehavior = DragStartBehavior.start,
>     this.enableInteractiveSelection,
>     this.onTap,
>     this.buildCounter,
>     this.scrollPhysics,
> })

## **3 常用属性** 
### **3.1 autocorrect：是否启用自动更正**
> autocorrect:true,

### **3.2 autofocus：是否是自动获取焦点**
> autofocus: false,

### **3.3 controller：控制正在编辑的文本**
> controller: new TextEditingController(text: this.id),

### **3.4 decoration：TextField 的外形描述**
> decoration: const InputDecoration(
>     hintText: '帐号/邮箱',
>     contentPadding: const EdgeInsets.all(10.0),
> ),

### **3.5 enabled：是否禁用**
> enabled:false,

### **3.6 focusNode：是否具有键盘焦点**
> focusNode:false,

### **3.7 keyboardType：键盘类型**
> keyboardType: TextInputType.number,

### **3.8 maxLength：文本最大的字符串长度**
> maxLength: 8,

### **3.9 maxLengthEnforced：如果为true，则防止字段允许超过 maxLength 字符**
> maxLengthEnforced:true,

### **3.10 maxLines：文本最大行数，默认为 1。多行时应该设置为 > 1**
> maxLines:1,

### **3.11 obscureText：是否是隐藏文本（密码形式）**
> obscureText: true,

### **3.12 onChanged：当 value 改变时触发**
> onChanged: (text) {
>     print("输入改变时" + text);
> },

### **3.13 onSubmitted：当用户点击键盘的提交时触发**
> onSubmitted: (text) {
>     print("提交时触发" + text);
> },
### **3.14 style：文本样式，颜色，字体等**
> style:TextStyle(color: Colors.blue),

### **3.15 textAlign：设置文本对齐方式**
> textAlign:TextAlign.start,