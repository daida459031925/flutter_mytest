import 'package:flutter/material.dart';
// 字体适配
import '../utils/AppSize.dart';
// 引入颜色
import '../utils/color.dart';

import 'plug_list.dart';

class PlugPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          primary: true,
          expandedHeight: AppSize.setHeight(230),
          backgroundColor: createMaterialColor(Color(0xFFfafcff)),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.symmetric(
              horizontal: AppSize.setWidth(80),
              vertical: AppSize.setWidth(25),
            ),
            centerTitle: false,
            title: new Text(
              "Flutter常用插件",
              style: new TextStyle(
                color: new Color(0xff030303),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            child: Column(children: <Widget>[
              // 小标题
              new Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(AppSize.setWidth(80),
                    AppSize.setWidth(0), AppSize.setWidth(80), AppSize.setWidth(80)),
                child: new Text(
                  "Flutter项目中常用插件及使用方法",
                  style: new TextStyle(
                    fontSize: AppSize.setSp(26),
                    color: new Color(0xff7c7c7e),
                  ),
                ),
              ),
              // 基础组件列表
              PlugList()
            ]),
          );
        }, childCount: 1)),
      ],
    );
  }
}
