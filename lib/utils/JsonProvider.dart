import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

class JsonProvider with ChangeNotifier {
  dynamic _jsonData;

  dynamic get jsonData => _jsonData;

  Future<void> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/searchList.json');
    _jsonData = json.decode(jsonString);
    notifyListeners();
  }
}
