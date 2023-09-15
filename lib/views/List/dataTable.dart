import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../utils/AppSize.dart';
// 字体适配

class ListDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DataTable'),
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
        child: new ListView(
      children: <Widget>[
        new DataTable(
          columns: <DataColumn>[
            new DataColumn(
                label: new GestureDetector(
              onTap: () {},
              child: Text("报警时间"),
            )),
            new DataColumn(
              label: new GestureDetector(
                onTap: () {},
                child: Text("报警信息"),
              ),
            ),
          ],
          rows: <DataRow>[
            new DataRow(cells: <DataCell>[
              new DataCell(Text("报警值41℃"), onTap: () {}),
              new DataCell(Text("2019/05/7 8:32:06"), onTap: () {}),
            ]),
            new DataRow(cells: <DataCell>[
              new DataCell(Text("报警值41℃"), onTap: () {}),
              new DataCell(Text("2019/05/7 8:32:06"), onTap: () {}),
            ]),
          ],
        ),
      ],
    ));
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: rootBundle.loadString('markdown/dataTable.md'),
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
