import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListLinearProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('LinearProgressIndicator'),
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
    return ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '1 进度条',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
          child: LinearProgressIndicator(
            value: 0.3,
            backgroundColor: Color(0xff00ff00),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '2 带动画',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
          child: LinearProgressIndicator(
//                    value: 0.3,
            backgroundColor: Color(0xffff0000),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '3 调整颜色',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
          child: LinearProgressIndicator(
            value: 0.3,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
            backgroundColor: Color(0xff00ff00),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '4 进度条宽度',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
          child: Container(
            height: 10.0,
            child: LinearProgressIndicator(
              value: 0.3,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              backgroundColor: Color(0xff00ff00),
              minHeight: 1.0,
            ),
          ),
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
        future:
            rootBundle.loadString('markdown/linearProgressIndicator.md'),
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
