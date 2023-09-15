import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('RaisedButton'),
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
  _log() {
    print("点击了按钮");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(AppSize.setWidth(20), AppSize.setHeight(20),
          AppSize.setWidth(20), AppSize.setHeight(20)),
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '1 按钮',
                style: new TextStyle(
                  fontSize: AppSize.setSp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Text("按钮"),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '2 带颜色',
                style: new TextStyle(
                  fontSize: AppSize.setSp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Text("按钮"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Text("按钮"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Text("按钮"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '3 点击按钮时水波纹的颜色',
                style: new TextStyle(
                  fontSize: AppSize.setSp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black12,
            ),
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.red, // 设置splashColor
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black26,
            ),
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.blue, // 设置splashColor
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '4 高亮颜色，点击（长按）按钮后的颜色',
                style: new TextStyle(
                  fontSize: AppSize.setSp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.blue, // 设置splashColor
                highlightColor: Colors.green,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple,
            ),
          ),

        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '5 设置按钮的形状',
                style: new TextStyle(
                  fontSize: AppSize.setSp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.blue, // 设置splashColor
                highlightColor: Colors.green,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigoAccent,
              shape: BeveledRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            ),

          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.blue, // 设置splashColor
                highlightColor: Colors.green,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.lightGreenAccent,
              shape: CircleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.blue, // 设置splashColor
                highlightColor: Colors.green,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),

          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _log,
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                splashColor: Colors.blue, // 设置splashColor
                highlightColor: Colors.green,
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text("按钮", style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.pinkAccent,
              shape: StadiumBorder(),
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
        future: rootBundle.loadString('markdown/raisedButton.md'),
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
