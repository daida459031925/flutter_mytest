import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mutest/utils/AppSize.dart';
import 'package:provider/provider.dart';

//单个页面状态管理
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    AppSize.init(context, 100, 100);
    return const MaterialApp(
      title: 'GetWidget',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PositionState()),
      ],
      child: const Scaffold(
          backgroundColor: GFColors.WHITE,
          body: Center(
            child: MyPage(),
          )
      )
  );
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: AppSize.setWidth(200),
                    height: AppSize.setHeight(200),
                    color: Colors.blue,
                    child: ElevatedButton(
                      onPressed: () {
                        print(AppSize.getBottomBarHeight());
                        print(AppSize.getHeight());
                        print(AppSize.getPixel());
                        print(AppSize.getStatusBarHeight());
                        print(AppSize.getWidth());

                        Provider.of<PositionState>(context, listen: false).updatePosition(0, '新的左上');
                      },
                      child: Consumer<PositionState>(
                        builder: (context, positionState, _) => Text(
                          positionState.positions[0],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppSize.setSp(1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '左下',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        '右上',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '右下',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PositionState extends ChangeNotifier {
  final List<String> _positions = ['左上', '左下', '右上', '右下'];

  List<String> get positions => _positions;

  void updatePosition(int index, String newPosition) {
    _positions[index] = newPosition;
    notifyListeners();
  }
}
