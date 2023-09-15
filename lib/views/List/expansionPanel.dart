import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/AppSize.dart';

class ListExpansionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ExpansionPanel'),
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
      child: LearnExpansionPanelList(),
    );
  }
}

class LearnExpansionPanelList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnExpansionPanelList();
  }
}

class _LearnExpansionPanelList extends State<LearnExpansionPanelList> {
  var currentPanelIndex = -1; //设置-1默认全部闭合
  List<int> mList = [];
  _LearnExpansionPanelList() {
    for (int i = 0; i < 5; i++) {
      mList.add(i);
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  currentPanelIndex =
                      (currentPanelIndex != panelIndex ? panelIndex : -1);
                });
              },
              children: mList.map((i) {
                return new ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return new ListTile(
                      title: new Text('这是标题$i'),
                    );
                  },
                  body: new Padding(
                    padding: EdgeInsets.all(30.0),
                    child: new ListBody(
                      children: <Widget>[
                        new Text('这是标题$i的内容'),
                      ],
                    ),
                  ),
                  isExpanded: currentPanelIndex == i,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: rootBundle.loadString('markdown/expansionPanel.md'),
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
    );
    return Container(
      child: futureBuilder,
    );
  }
}
