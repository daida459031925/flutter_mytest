## **1 DataTable**
> 数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件

## **2 构造函数** 
> DataTable({
>     Key key,
>     @required this.columns,
>     this.sortColumnIndex,
>     this.sortAscending = true,
>     this.onSelectAll,
>     this.dataRowHeight = kMinInteractiveDimension,
>     this.headingRowHeight = 56.0,
>     this.horizontalMargin = 24.0,
>     this.columnSpacing = 56.0,
>     this.showCheckboxColumn = true,
>     this.dividerThickness = 1.0,
>     @required this.rows,
> }) 

## **3 常用属性** 
### **3.1 columns：表头**
> columns:List<DataColumn>

### **3.1.1 columns：表头**
> columns:List<DataColumn>

### **3.2 columns：内容行**
> rows:List<DataRow>,

### **3.3 sortColumnIndex：排序列索引**
> sortColumnIndex:1,

### **3.4 sortAscending：升序排序**
> sortAscending:false,

### **3.4 onSelectAll：点击全选**
> onSelectAll: table.selectAll,