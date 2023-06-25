// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutte_basic01/main.dart';
// 使用 Future 的方式
void fetchData() {
  print('Fetching data...');
  simulateNetworkDelay().then((result) {
    print('Data fetched: $result');
  }).catchError((error) {
    print('Error fetching data: $error');
  });
}

// 使用 async/await 的方式
Future<void> fetchDataAsync() async {
  print('Fetching data...');
  try {
    var result = await simulateNetworkDelay();
    print('Data fetched: $result');
  } catch (error) {
    print('Error fetching data: $error');
  }
}

Future<String> simulateNetworkDelay() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Data from the network';
  });
}
void main() {
  test('API Test', () async{
    fetchData(); // 使用 Future 的方式
    fetchDataAsync(); // 使用 async/await 的方式r
  });
}
