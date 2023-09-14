## **1 Baseline**
> 根据子项的基线对它们的位置进行定位的widget

## **2 构造函数** 
> Baseline({
>     Key key,
>     @required this.baseline,
>     @required this.baselineType,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 baseline：子组件基准线距离顶部的距离**
> baseline: 80.0,

### **3.2 baselineType：baseline类型**
> baselineType: TextBaseline.alphabetic,

3.2.1 对齐字母字符的字形底部的水平线
> baselineType: TextBaseline.alphabetic,

3.2.2 对齐表意文字的水平线
> baselineType: TextBaseline.ideographic,

### **3.3 child：子widget**
> child: Text('你好 Flutter'),