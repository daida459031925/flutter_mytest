import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chip'),
          backgroundColor: Color(0xFFfafcff),
          bottom: TabBar(labelColor: Color(0xff030303), tabs: [
            Tab(
              text: "效果",
            ),
            Tab(
              text: "属性",
            )
          ]),
        ),
        body: TabBarView(children: [
          Container(
              decoration: new BoxDecoration(
                color: new Color(0xffffffff),
                borderRadius: new BorderRadius.circular((AppSize.setWidth(20))),
              ),
              child: ShowEffect()),
          Container(
              decoration: new BoxDecoration(
                color: new Color(0xffffffff),
                borderRadius: new BorderRadius.circular((AppSize.setWidth(20))),
              ),
              child: ShowAttribute()),
        ]),
      ),
    );
  }
}

// 效果
class ShowEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChipPage(),
    );
  }
}

class ChipPage extends StatefulWidget {
  @override
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {
  int _valueChoice = 0;

  Widget _buildChoiceItem(int index) {
    return ChoiceChip(
      label: Text("ChoiceChip $index"),
      selectedColor: Colors.orange, //选中的颜色
      disabledColor: Colors.orange[100], //没选中的颜色
      onSelected: (bool selected) {
        setState(() {
          _valueChoice = (selected ? index : null)!;
        });
      },
      selected: _valueChoice == index,
      labelStyle: TextStyle(color: Colors.black54),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Chip(
                label: Text("普通的chip"),
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              Chip(
                avatar: Icon(
                  Icons.arrow_forward,
                  color: Colors.black54,
                ),
                label: Text("带avatar的chip"),
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text("带avatar的chip"),
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              Chip(
                padding: EdgeInsets.all(0.0),
                label: Text("padding为0,labelPadding不为0的chip"),
                labelPadding: EdgeInsets.all(15.0),
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text("带deleteIcon的chip"),
                deleteIcon: Icon(Icons.close),
                deleteIconColor: Colors.black54,
                onDeleted: () {
                  print("点击了删除噢");
                },
                deleteButtonTooltipMessage: "弹出提示",
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text("圆角矩形的chip"),
                deleteIcon: Icon(Icons.close),
                deleteIconColor: Colors.black54,
                onDeleted: () {
                  print("点击了删除噢");
                },
                deleteButtonTooltipMessage: "弹出提示",
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text("尺寸最小的chip"),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text("带阴影的chip"),
                shadowColor: Colors.grey,
                elevation: 10.0,
                labelStyle: TextStyle(color: Colors.black54),
                backgroundColor: Colors.orange,
              ),
              ActionChip(
                //自带一个onPress事件，有点击效果
                label: Text("ActionChip"),
                backgroundColor: Colors.orange,
                onPressed: () {},
              ),
              Wrap(
                spacing: 5.0, //主轴间距
                runSpacing: 8.0, //副轴间距
                children: List<Widget>.generate(2, (int index) {
                  return _buildChoiceItem(index);
                }),
              ),
              ElevatedButton(
                  child: Text(
                    "FilterChipDemo",
                    style: TextStyle(color: Colors.black54),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // 设置按钮的背景颜色
                  ),
                  onPressed: () {}),
              ElevatedButton(
                  child: Text(
                    "InputChipDemo",
                    style: TextStyle(color: Colors.black54),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // 设置按钮的背景颜色
                  ),
                  onPressed: () {}),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: rootBundle.loadString('markdown/chip.md'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data,
              selectable: true,
            );
          } else {
            return Center(
              child: Text("加载中..."),
            );
          }
        },
      ),
    );
  }
}
