import 'more_enum.dart';
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
class Point1 {
  final int x;
  final int y;

  const Point1(this.x, this.y);
}
class CarHireCompany {
  late CarType storageType;

  CarHireCompany({required this.storageType});
  // Get enum from index
  CarHireCompany.fromID(String key) {
    storageType = CarType.values.firstWhere((element) => element.value == key);
  }
  // compute the enum from index
  bool canLend(CarType type) {
    if (type == storageType) {
      return true;
    }
    return false;
  }
  // get the index of the enum
  int get storageTypeIndex {
    return storageType.index;
  }
}