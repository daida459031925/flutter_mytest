import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Divider'),
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
                  '1 分割线',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(height: 1.0, indent: 0.0, color: Colors.pink),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '2 分割线的厚度',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0, indent: 0.0, color: Colors.pink, thickness: 1.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0, indent: 0.0, color: Colors.pink, thickness: 2.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0, indent: 0.0, color: Colors.pink, thickness: 3.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0, indent: 0.0, color: Colors.pink, thickness: 4.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0, indent: 0.0, color: Colors.pink, thickness: 5.0),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '3 分割线的后边空间',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.pink,
                thickness: 1.0,
                endIndent: 5.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.pink,
                thickness: 2.0,
                endIndent: 10.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.pink,
                thickness: 3.0,
                endIndent: 15.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.pink,
                thickness: 4.0,
                endIndent: 20.0),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.pink,
                thickness: 5.0,
                endIndent: 25.0),
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
        future: rootBundle.loadString('markdown/divider.md'),
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
