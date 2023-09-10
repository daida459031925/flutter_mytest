import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  const MyWebView({super.key});

  @override
  State<MyWebView> createState() => _MyWebViewState();
}


class _MyWebViewState extends State<MyWebView> {
  late final WebViewController controller;
  double height = 0;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.baidu.com"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Expanded(child: WebViewWidget(controller: controller))],
    );
  }
}
