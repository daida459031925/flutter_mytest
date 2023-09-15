import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListBaseline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Baseline'),
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
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(AppSize.setWidth(20), AppSize.setHeight(20),
          AppSize.setWidth(20), AppSize.setHeight(20)),
      child: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '1 alphabetic',
                  style: new TextStyle(
                    fontSize: AppSize.setSp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Baseline(
                baseline: 80.0,
                baselineType: TextBaseline.alphabetic,
                child: new Text(
                  'AaBbCc',
                  style: new TextStyle(
                    fontSize: 18.0,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
              ),
              new Baseline(
                baseline: 80.0,
                baselineType: TextBaseline.alphabetic,
                child: new Container(
                  width: 40.0,
                  height: 40.0,
                  color: Colors.green,
                ),
              ),
              new Baseline(
                baseline: 80.0,
                baselineType: TextBaseline.alphabetic,
                child: new Text(
                  'DdEeFf',
                  style: new TextStyle(
                    fontSize: 26.0,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
              )
            ],
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
        future: rootBundle.loadString('markdown/baseline.md'),
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
