import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 导入IOS 风格的控件
import 'package:flutter/cupertino.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListCupertinoFullscreenDialogTransition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoFullscreenDialogTransition'),
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
    return LearnCupertinoFullscreenDialogTransition();
  }
}

class LearnCupertinoFullscreenDialogTransition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoFullscreenDialogTransition();
  }
}

class _LearnCupertinoFullscreenDialogTransition
    extends State<LearnCupertinoFullscreenDialogTransition>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _animationController.forward(),
              child: Text('Forward'),
            ),
            ElevatedButton(
              onPressed: () => _animationController.reverse(),
              child: Text('Reverse'),
            ),
          ],
        ),
        CupertinoFullscreenDialogTransition(
          linearTransition: true,
          primaryRouteAnimation: _animationController,
          secondaryRouteAnimation: _animationController,
          child: Container(
            color: Colors.blueGrey,
            height: 300,
            width: 200,
            child: Text('data'),
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
        future: rootBundle
            .loadString('markdown/cupertinoFullscreenDialogTransition.md'),
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
