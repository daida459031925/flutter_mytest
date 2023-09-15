import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Padding'),
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
                  '1 padding',
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
            child: Padding(
              padding: new EdgeInsets.all(8.0),
              child: const Card(child: const Text('Hello World!')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            child: Padding(
              padding: new EdgeInsets.all(10.0),
              child: const Card(child: const Text('10内边距')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            child: Padding(
              padding: new EdgeInsets.all(20.0),
              child: const Card(child: const Text('20内边距')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            child: Padding(
              padding: new EdgeInsets.all(40.0),
              child: const Card(child: const Text('40内边距')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: AppSize.setHeight(20), bottom: AppSize.setHeight(20)),
            color: Colors.blue,
            width: double.infinity,
            child: Padding(
              padding: new EdgeInsets.all(60.0),
              child: const Card(child: const Text('60内边距')),
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
        future: rootBundle.loadString('markdown/padding.md'),
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
