// TODO Implement this library.
// 定義一個 LoggerMixin 混合，包含日誌功能
mixin LoggerMixin {
  void log(String message) {
    print('Log: $message');
  }
}

// 使用 LoggerMixin 混合的類別
class ExampleClass with LoggerMixin {
  void performAction() {
    log('Action performed');
  }
}