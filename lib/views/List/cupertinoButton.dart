import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 导入IOS 风格的控件
import 'package:flutter/cupertino.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListCupertinoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoButton'),
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
            padding: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            width: double.infinity,
            child: Center(
              child: CupertinoButton(
                child: Text(
                  "按钮",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                disabledColor: Colors.blue,
                color: Colors.green,
                onPressed: () {},
                minSize: 40.0,
                pressedOpacity: 0.4,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            width: double.infinity,
            child: Center(
              child: CupertinoButton(
                child: Text(
                  "按钮",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                disabledColor: Colors.blue,
                color: Colors.yellow,
                onPressed: () {},
                minSize: 40.0,
                pressedOpacity: 0.4,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            width: double.infinity,
            child: Center(
              child: CupertinoButton(
                child: Text(
                  "按钮",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                disabledColor: Colors.blue,
                color: Colors.pink,
                onPressed: () {},
                minSize: 40.0,
                pressedOpacity: 0.4,
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
        future: rootBundle.loadString('markdown/cupertinoButton.md'),
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
