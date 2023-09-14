## **1 Stepper**
> Stepper 是一个步骤条组件

## **2 构造函数** 
> Stepper({
>     Key key,
>     @required this.steps,
>     this.physics,
>     this.type = StepperType.vertical,
>     this.currentStep = 0,
>     this.onStepTapped,
>     this.onStepContinue,
>     this.onStepCancel,
>     this.controlsBuilder,
> })

## **3 常用属性** 
### **3.1 steps：步骤内容**
> steps: <Step>[],

### **3.2 type：摆放方向，默认是垂直的，可以设置为水平的**
> type: StepperType.vertical,

### **3.3 currentStep：步骤位置**
> currentStep: 0,

### **3.4 onStepCancel：点击 cancel 时触发**
> onStepCancel: () {
>     print();
> },

### **3.5 onStepContinue：点击 continue 时触发**
> onStepContinue: () {
>     print();
> },

### **3.6 onStepTapped：状态改变时触发**
> onStepTapped: (step) {
>     print(step);
> },