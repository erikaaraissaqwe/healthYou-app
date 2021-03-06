import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppData with ChangeNotifier {
  var data = [];

  void setData(newData) {
    data = newData;
    notifyListeners();
  }

  Future<bool> requestData() async {
    var uri = Uri.parse('https://healthyou-api.herokuapp.com/articles/');
    final response = await http.get((uri));
    if (response.statusCode == 200) {
      setData(jsonDecode(response.body));
      return true;
    } else {
      return false;
    }
  }

}
