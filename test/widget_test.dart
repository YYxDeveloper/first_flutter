// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutte_basic01/main.dart';
import 'dart:math';
import 'more_classes.dart';
import 'more_enum.dart';


void main() {

  // testDartConstClass();

  //* test('Counter value should be incremented'
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });


  // testMixin();
  // trytru_constBuilder();
  // enumAdvancePrintStringType();
  // enumAdvancePrintStringType2();
  enumAdvancePrintStringType3();

}
class Point {
  final double x;
  final double y;
  final double distanceFromOrigin;

  Point(double x, double y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}
class Vector2d {
  final double x;
  final double y;

  Vector2d.named({required this.x, required this.y});
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the y parameter to the named super constructor like:
  // Vector3d.yzPlane({required double y, required this.z})
  //       : super.named(x: 0, y: y);
  //新初始化函示＆父類別參數default
  Vector3d.yzPlane({required super.y, required this.z}) : super.named(x: 0);
}
class Counter {
  int value = 0;

  void increment() => value++;

  void decrement() => value--;
}
class Dog {
  String name;
  int age;

  Dog(this.name, this.age);

  Dog.newBorn()
    :name = 'Doggy', age = 0;
}
class DynamicObject {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print('呼叫未定義的方法：${invocation.memberName}');
    return null;
  }


}
void testDartConstClass(){
  //* yzPlane
  Vector3d point = Vector3d.yzPlane(y: 2.5, z: 4.0);
  print(point.x);

}
 void trytru_constBuilder(){
  //https://www.jianshu.com/p/d4ea99eae8cd
   const p1 = Point1(2, 3);
   const p2 = Point1(2, 3);

   print(identical(p1, p2));  // true，因為 p1 和 p2 都是編譯時常量
 }
void testMixin(){
  final example = ExampleClass();
  example.performAction(); // 使用 Mixin 中的 log 方法

}
 void trytry_dynamic(){
   dynamic data = fetchDataFromServer();

   if (data is int) {
     print('Received an integer: $data');
   } else if (data is String) {
     print('Received a string: $data');
   } else if (data is List) {
     print('Received a list with ${data.length} items');
   } else {
     print('Received an unknown data type');
   }
 }
dynamic fetchDataFromServer() {
  // 模擬從伺服器獲取數據的操作
  return 42; // 可以是整數、字串、列表等等
}




