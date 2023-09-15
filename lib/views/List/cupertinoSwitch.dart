import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 导入IOS 风格的控件
import 'package:flutter/cupertino.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListCupertinoSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoSwitch'),
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
    return LearnCupertinoSwitch();
  }
}

class LearnCupertinoSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoSwitch();
  }
}

class _LearnCupertinoSwitch extends State<LearnCupertinoSwitch> {
  bool _switchvalue = false;
  List<bool> isChecks = [false, false];
  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: Text('Lights'),
        trailing: CupertinoSwitch(
          value: _switchvalue,
          onChanged: (bool value) {
            setState(() {
              _switchvalue = value;
            });
          },
        ),
        onTap: () {
          setState(() {
            _switchvalue = !_switchvalue;
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
        future: rootBundle.loadString('markdown/cupertinoSwitch.md'),
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
