## **1 IntrinsicWidth**
> 一个widget，它将它的子widget的高度调整其本身实际的高度

## **2 构造函数** 
> IntrinsicWidth({ 
>     Key key, 
>     this.stepWidth, 
>     this.stepHeight, 
>     Widget child 
> })

## **3 常用属性** 
### **3.1 stepWidth**
> 如果非空，则强制子组件的宽度为该值的倍数
> 如果null或0.0，子组件的宽度将与其最大固有宽度相同。
> 这个值不能取负数

> stepWidth: 450.0,

### **3.2 stepHeight：子widget**
> 如果非空，则强制子元素的高度为该值的倍数
> 如果null或0.0，则不限制子节点的高度

> stepHeight: 450.0,

### **3.3 child：子widget**
> child: Text('你好 Flutter'),