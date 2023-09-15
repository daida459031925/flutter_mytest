import 'package:flutter/material.dart';
import 'package:mutest/routers/index.dart';
import 'package:mutest/utils/GlobalUtil.dart';
import 'package:mutest/utils/AppSize.dart';
import 'package:mutest/utils/JsonProvider.dart';
import 'package:mutest/utils/color.dart';
import 'package:mutest/views/basic_page.dart';
import 'package:mutest/views/plug_page.dart';
import 'package:mutest/views/search_page.dart';
import 'package:provider/provider.dart';


//主方法
void main() {
  GlobalUtil.getGlobalUtil()?.setupErrorHandling();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => JsonProvider()..loadJsonData()),
      ],
      child: const MyApp(),
    ),
  );
}

// 根入口
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent, // 水波纹
        highlightColor: Colors.transparent, // 高亮
        primarySwatch: createMaterialColor(Color(0xFF86b0ed)),
      ),
      home: Homes(), // 首页布局
      routes: WGRouter.routes,
    );
  }
}

// 布局
class Homes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomesState();
  }
}

// 导航及导航对应页面
class _HomesState extends State<Homes> with WidgetsBindingObserver {
  int _currentIndex = 0;
  final List<Widget> _children = [SearchPage(), BasicPage(), PlugPage()];
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
  }

  @override
  Widget build(BuildContext context) {
    AppSize.init(context,100,100);
    return Scaffold(
      // 预留状态栏的高度
      appBar: PreferredSize(
        preferredSize:
        Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: SafeArea(
          top: true,
          child: Offstage(),
        ),
      ),
      //构建底部导航，并添加点击事件
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              width: AppSize.setWidth(48),
              height: AppSize.setWidth(48),
              image: AssetImage("assets/tab/search.png"),
            ),
            activeIcon: Image(
              width: AppSize.setWidth(48),
              height: AppSize.setWidth(48),
              image: AssetImage("assets/tab/active-search.png"),
            ),
            label: Text('全局搜索').data,
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: AppSize.setWidth(48),
              height: AppSize.setWidth(48),
              image: AssetImage("assets/tab/basic.png"),
            ),
            activeIcon: Image(
              width: AppSize.setWidth(48),
              height: AppSize.setWidth(48),
              image: AssetImage("assets/tab/active-basic.png"),
            ),
            label: Text('基础组件').data,
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: AppSize.setWidth(48),
              height: AppSize.setWidth(48),
              image: AssetImage("assets/tab/plug.png"),
            ),
            activeIcon: Image(
              width: AppSize.setWidth(48),
              height: AppSize.setWidth(48),
              image: AssetImage("assets/tab/active-plug.png"),
            ),
            label: Text('常用插件').data,
          ),
        ],
        selectedFontSize: AppSize.setSp(18),
        unselectedFontSize: AppSize.setSp(18),
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Color(0xFFfafcff),
        ),
        child: _children[_currentIndex],
      ),
    );
  }

  //点击事件
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
