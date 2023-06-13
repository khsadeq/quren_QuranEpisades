// ignore_for_file: non_constant_identifier_names

import 'dart:convert' show json;

import 'package:dio/dio.dart' as Dio;
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peaple_quran/dio.dart';

// ignore: camel_case_types
class auth extends ChangeNotifier {
  bool _authenticated = false;
  bool get Authenticated => _authenticated;
  Future login({required Map credentials}) async {
    _authenticated = true;
    Dio.Response response =
        await dio().post('auth/token', data: json.encode(credentials));
    String token = json.decode(response.toString())['token'];
    print(token);
    notifyListeners();

  }

  void add_loading() {
    _authenticated = false;
    notifyListeners();
  }
}
