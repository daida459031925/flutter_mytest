import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Radio'),
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
      padding: EdgeInsets.fromLTRB(AppSize.setWidth(20), AppSize.setHeight(20),
          AppSize.setWidth(20), AppSize.setHeight(20)),
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  'Checkbox',
                  style: new TextStyle(
                    fontSize: AppSize.setSp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: new LearnCheckBox(),
          ),
        ],
      ),
    );
  }
}

class LearnCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCheckBox();
  }
}

class _LearnCheckBox extends State<LearnCheckBox> {
  int _radioGroupA = 0;
  bool isCheck = false;
  List<bool> isChecks = [false, false];
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Radio(
        value: 1,
        groupValue: this._radioGroupA,
        onChanged: (v) {
          setState(() {
            this._radioGroupA = v!;
          });
        },
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
        future: rootBundle.loadString('markdown/radio.md'),
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
