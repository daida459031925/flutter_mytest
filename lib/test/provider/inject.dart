import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


///依赖注入的特点是注入的是某个方法
void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<HttpClient>(
          create: (_) => HttpClient(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final httpClient = Provider.of<HttpClient>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Network Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Make Request'),
          onPressed: () {
            httpClient.makeRequest();
          },
        ),
      ),
    );
  }
}

class HttpClient {
  void makeRequest() {
    // 发送网络请求的逻辑
  }
}
