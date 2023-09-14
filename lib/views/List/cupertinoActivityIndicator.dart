import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 导入IOS 风格的控件
import 'package:flutter/cupertino.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListCupertinoActivityIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicator'),
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
                  '1 菊花',
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
            child: Center(
              child: CupertinoActivityIndicator(
                radius: AppSize.sp(38),
                animating: true,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '2 大小',
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
            child: Center(
              child: CupertinoActivityIndicator(
                radius: AppSize.sp(10),
                animating: true,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Center(
              child: CupertinoActivityIndicator(
                radius: AppSize.sp(20),
                animating: true,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Center(
              child: CupertinoActivityIndicator(
                radius: AppSize.sp(30),
                animating: true,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.height(20), bottom: AppSize.height(20)),
            width: double.infinity,
            child: Center(
              child: CupertinoActivityIndicator(
                radius: AppSize.sp(40),
                animating: true,
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
        future:
            rootBundle.loadString('markdown/cupertinoActivityIndicator.md'),
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
