## **1 Transform**
> 在绘制子widget之前应用转换的widget

## **2 构造函数** 
> Transform({
>     Key key,
>     @required this.transform,
>     this.origin,
>     this.alignment,
>     this.transformHitTests = true,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 origin：指定子组件做平移、旋转、缩放时的中心点**
> origin: Offset(50, 50),

### **3.2 alignment：对齐方式**
> alignment:Alignment.center,

3.2.1 顶部左边
> alignment:Alignment.topLeft,

3.2.2 顶部中间
> alignment:Alignment.topCenter,

3.2.3 顶部右边
> alignment:Alignment.topRight,

3.2.4 中部左边
> alignment:Alignment.centerLeft,

3.2.5 中部中间
> alignment:Alignment.center,

3.2.6 中部右边
> alignment:Alignment.centerRight,

3.2.7 底部左边
> alignment:Alignment.bottomLeft,

3.2.8 底部中间
> alignment:Alignment.bottomCenter,

3.2.9 底部右边
> alignment:Alignment.bottomRight,

### **3.3 transformHitTests：点击区域是否也做相应的变换,为true时执行相应的变换,为false不执行**
> transformHitTests:true,

### **3.4 transform：控制子组件的平移、旋转、缩放、倾斜变换**
> transform: Matrix4.rotationX(radian),

3.4.1 旋转
> transform: Matrix4.rotationX(radian),
> transform: Matrix4.rotationY(radian),
> transform: Matrix4.rotationZ(radian),

3.4.2 平移
> transform:Matrix4.translation(Vector3(x, y, z)),
> transform:Matrix4.translation(Vector3.all(val)),
> transform:Matrix4.translationValues(x, y, z),

3.4.3 缩放
> transform:Matrix4.diagonal3(Vector3(x, y, z)),
> transform:Matrix4.diagonal3(Vector3.all(val)),
> transform:Matrix4.diagonal3Values(x, y, z),

3.4.4 倾斜
> transform:Matrix4.skewX(alpha),
> transform:Matrix4.skewY(double beta),
> transform:Matrix4.skew(alpha, beta),

### **3.5 child：子widget**
> child: Text('你好 Flutter'),
