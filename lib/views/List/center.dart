import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Center'),
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
                  '1 center',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            height: AppSize.setHeight(300),
            child: Center(
              child: Text('中间子组件'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            height: AppSize.setHeight(200),
            child: Center(
              child: Text('中间子组件'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            height: AppSize.setHeight(300),
            child: Center(
              child: Text('中间子组件'),
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
        future: rootBundle.loadString('markdown/center.md'),
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
