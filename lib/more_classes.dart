// 定義一個LoggerMixin混合，包含日誌功能
import 'package:flutter/cupertino.dart';

class LoggerMixin {
  @required
  void log(String message) {
    print('Log: $message');
  }
}

// 定義一個可以記錄操作的類別
class ActionLogger with LoggerMixin {
  void performAction(String action) {
    log('Performing action: $action');
  }
}

// 定義一個可以計算的類別
class Calculator {
  int add(int a, int b) {
    return a + b;
  }
}

// 定義一個可以計算並記錄操作的類別，同時使用了LoggerMixin混合
class LoggedCalculator extends Calculator with LoggerMixin {
  int add(int a, int b) {
    final result = super.add(a, b);
    log('Adding $a and $b, result: $result');
    return result;
  }
}

void main() {
  final actionLogger = ActionLogger();
  actionLogger.performAction('Login');

  final loggedCalculator = LoggedCalculator();
  final sum = loggedCalculator.add(5, 7);
  print('Sum: $sum');
}
