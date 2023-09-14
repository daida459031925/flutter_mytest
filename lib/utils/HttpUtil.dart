import 'dart:async';
import 'package:dio/dio.dart';
import 'package:mutest/utils/GlobalUtil.dart';
import 'package:quiver/strings.dart';

import 'ErrorUtil.dart';

class HttpUtil<T> {
  //网络请求工具类
  late Dio _dio;
  //网络请求路径
  late String _path;

  //初始化请求
  HttpUtil(String path) {
    _dio = Dio();
    if(isBlank(path)){ ErrorUtil.err("传入路径不能为空"); }
    _path = path;
  }



  Stream<Response> _get(String url) async* {
    yield await _dio.get(url);
  }

  Stream<Response> _post(String url, dynamic data) async* {
    yield await _dio.post(url, data: data);
  }

  // T add() {
  //   _dio.close()
  //   late T t = T();
  //   HttpUtil()
  //       ._post('https://www.baidu.com', {"a": "b"})
  //       .where((response) => response.statusCode == 200)
  //       .map((response) => response.data)
  //       .listen((data) {
  //         if (kDebugMode) {
  //           print(data);
  //         }
  //       }, onError: (error) {
  //         if (kDebugMode) {
  //           print("Error:$error");
  //         }
  //       });
  //   return t;
  // }
}
