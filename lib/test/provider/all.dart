import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


/// 全局状态管理
/// 1.定义一个继承ChangeNotifier的结构体
/// 2.在main方法上进行创建ChangeNotifierProvider方法并在里面create: (context) => Counter(),创建对象
/// 3.在全局任意一个地方就可以调用final counter = Provider.of<Counter>(context);
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: ${counter.count}',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              child: const Text('Increment'),
              onPressed: () {
                counter.increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
