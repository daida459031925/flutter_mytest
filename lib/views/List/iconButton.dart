import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('IconButton'),
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
  _log() {
    print("点击了按钮");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(AppSize.width(20), AppSize.height(20),
          AppSize.width(20), AppSize.height(20)),
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '1 按钮',
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
          child: IconButton(
            icon: Icon(Icons.home),
            onPressed: _log,
            color: Colors.blueAccent,
            highlightColor: Colors.red,
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '2 按钮大小',
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
          child: IconButton(
            icon: Image.asset('assets/sample/image.jpg'),
            iconSize: 20.0,
            onPressed: null,
          ),
        ),
        Container(
          width: double.infinity,
          child: IconButton(
            icon: Image.asset('assets/sample/image.jpg'),
            iconSize: 30.0,
            onPressed: null,
          ),
        ),
        Container(
          width: double.infinity,
          child: IconButton(
            icon: Image.asset('assets/sample/image.jpg'),
            iconSize: 40.0,
            onPressed: null,
          ),
        ),
        Container(
          width: double.infinity,
          child: IconButton(
            icon: Image.asset('assets/sample/image.jpg'),
            iconSize: 50.0,
            onPressed: null,
          ),
        ),
        Container(
          width: double.infinity,
          child: IconButton(
            icon: Image.asset('assets/sample/image.jpg'),
            iconSize: 60.0,
            onPressed: null,
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
        future: rootBundle.loadString('markdown/iconButton.md'),
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
