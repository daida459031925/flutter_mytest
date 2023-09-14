## **1 ExpansionPanel**
> 收缩面板。它有一个标题和一个正文，可以展开或折叠。面板的正文主体仅在展开时可见。收缩面板仅用作为 ExpansionPanelList的子级。

## **2 构造函数** 
> MaterialApp({
>   Key key,
>   this.headerBuilder = '', 
>   this.body,
>   this.isExpanded,
>   this.canTapOnHeader,
> }) 

## **3 常用属性** 
### **3.1 headerBuilder：标题**
> headerBuilder:Text("Flutter Demo"),

### **3.2 body：内容**
> body:ListBody(),

### **3.3 isExpanded：是否展开**
> isExpanded:true,

### **3.4 canTapOnHeader：header是否可以点击**
> canTapOnHeader:false,