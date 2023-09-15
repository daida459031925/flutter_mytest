import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 导入IOS 风格的控件
import 'package:flutter/cupertino.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListCupertinoAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoAlertDialog'),
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
    return Center(
      child: ElevatedButton(
        child: Text("按钮"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text("这是一个iOS风格的对话框"),
                  content: SizedBox(
                    child: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text("Flutter_eidget-一个帮助开发者快速上手的app"),
                        ],
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text("取消"),
                      onPressed: () {
                        Navigator.pop(context);
                        print("取消");
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text("确定"),
                      onPressed: () {
                        Navigator.pop(context);
                        print("确定");
                      },
                    ),
                  ],
                );
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
        future: rootBundle.loadString('markdown/cupertinoAlertDialog.md'),
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
