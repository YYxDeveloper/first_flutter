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
void main() {
  void testDartConstClass(){
    //* yzPlane
    Vector3d point = Vector3d.yzPlane(y: 2.5, z: 4.0);
    print(point.x);

  }
  testDartConstClass();

  //* test('Counter value should be incremented'
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });
}

