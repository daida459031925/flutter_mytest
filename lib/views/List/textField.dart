import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
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
                borderRadius: new BorderRadius.circular((AppSize.width(20))),
              ),
              child: ShowEffect()),
          Container(
              decoration: new BoxDecoration(
                color: new Color(0xffffffff),
                borderRadius: new BorderRadius.circular((AppSize.width(20))),
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
      padding: EdgeInsets.fromLTRB(AppSize.width(20), AppSize.height(20),
          AppSize.width(20), AppSize.height(20)),
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '1 普通表单',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '2 边框表单、label 动效',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                labelText: '表单label',
                labelStyle: TextStyle(
                  color: Colors.pink,
                  fontSize: 12,
                ),
                helperText: 'helperText',
                hintText: 'Placeholder...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '3 多行表单',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(hintText: '多行文本'),
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '4 密码框',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: '密码框'),
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '5 icon 表单',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '图标',
                icon: Icon(Icons.palette),
              ),
            ),
          ),
        ],
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
        future: rootBundle.loadString('markdown/textField.md'),
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
