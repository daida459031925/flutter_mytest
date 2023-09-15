import 'package:flutter/material.dart';
// 字体适配
import '../utils/AppSize.dart';

import '../views/search_list.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SearchPage();
  }
}

class _SearchPage extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      color: new Color(0xfafafcff),
      child: new Container(
        margin: EdgeInsets.all(AppSize.setWidth(25)),
        child: Column(children: <Widget>[
          // 大标题
          new Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(AppSize.setWidth(55), AppSize.setHeight(100),
                AppSize.setWidth(55), AppSize.setHeight(10)),
            child: new Text(
              "全局搜索所有组件",
              style: new TextStyle(
                fontSize: AppSize.setSp(56),
                color: new Color(0xff030303),
              ),
            ),
          ),
          // 小标题
          new Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(AppSize.setWidth(55), AppSize.setWidth(10),
                AppSize.setWidth(55), AppSize.setWidth(20)),
            child: new Text(
              "输入关键字搜索你想搜索的内容",
              style: new TextStyle(
                fontSize: AppSize.setSp(26),
                color: new Color(0xff7c7c7e),
              ),
            ),
          ),
          // 搜索框
          new Container(
            margin: EdgeInsets.fromLTRB(
                0, AppSize.setWidth(100), AppSize.setWidth(0), AppSize.setWidth(20)),
            padding:
                EdgeInsets.fromLTRB(AppSize.setWidth(30), 0, AppSize.setWidth(30), 0),
            decoration: new BoxDecoration(
                border: new Border.all(
                    color: Color(0xFFcccccc), width: AppSize.setWidth(3)),
                color: Color(0xFFffffff),
                borderRadius: new BorderRadius.circular((AppSize.setWidth(20)))),
            height: AppSize.setHeight(100),
            width: double.infinity,
            child: new Row(children: <Widget>[
              new Container(
                child: new Image(
                  image: new AssetImage('assets/icon/search.png'),
                  width: AppSize.setWidth(50),
                  height: AppSize.setWidth(50),
                ),
              ),
              Expanded(
                child: new Container(
                  padding: EdgeInsets.fromLTRB(AppSize.setWidth(30), 0, 0, 0),
                  child: GestureDetector(
                    child: new Text(
                      '搜索flutter组件',
                      style: new TextStyle(
                        fontSize: AppSize.setSp(32),
                        color: new Color(0xff7c7c7e),
                      ),
                    ),
                    onTap: () {
                      showSearch(
                          context: context, delegate: SearchBarDelegate());
                    },
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
