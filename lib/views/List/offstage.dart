import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListOffstage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Offstage'),
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
    return MaterialApp(
      home: OffstagePage(),
    );
  }
}

class OffstagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OffstageState();
  }
}

class OffstageState extends State<OffstagePage> {
  String showText = "hide";
  bool isOff = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Offstage"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Offstage(
            offstage: isOff,
            child: Text("Offstage组件"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onButtonClickListener,
          child: Text(showText),
        ),
      ),
    );
  }

  void onButtonClickListener() {
    setState(() {
      isOff = !isOff;
    });
    if (isOff) {
      showText = "show";
    } else {
      showText = "hide";
    }
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: rootBundle.loadString('markdown/offstage.md'),
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
