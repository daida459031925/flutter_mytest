import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 导入IOS 风格的控件
import 'package:flutter/cupertino.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListCupertinoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoSlider'),
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
    return LearnCupertinoSlider();
  }
}

class LearnCupertinoSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoSlider();
  }
}

class _LearnCupertinoSlider extends State<LearnCupertinoSlider> {
  double _slidervalue = 0;
  List<bool> isChecks = [false, false];
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              top: AppSize.setHeight(40), bottom: AppSize.setHeight(40)),
          child: Center(
            child: Text('$_slidervalue'),
          ),
        ),
        CupertinoSlider(
          max: 100,
          min: 0,
          value: _slidervalue,
          onChanged: (v) {
            setState(() {
              _slidervalue = v;
            });
          },
        ),
      ],
    );
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: rootBundle.loadString('markdown/cupertinoSlider.md'),
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
