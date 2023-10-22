//WEB: https://codewithandrea.com/tips/dart-2.17-enums-with-members/
enum AuthException {
  invalidEmail('Invalid email'),
  emailAlreadyInUse('Email already in use'),
  weakPassword('Password is too weak'),
  wrongPassword('Wrong password');

  const AuthException(this.message);
  final String message;
}
void enumAdvancePrintStringType() {
  const exception = AuthException.wrongPassword;
  print(exception.message); // Wrong password
}
enum StatusCode {
  badRequest(401, 'Bad request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not found'),
  internalServerError(500, 'Internal server error'),
  notImplemented(501, 'Not implemented');

  const StatusCode(this.code, this.description);
  final int code;
  final String description;

  @override
  String toString() => 'StatusCode($code, $description)';
}
void enumAdvancePrintStringType2() {
  const statusCode = StatusCode.notFound;
  print(statusCode); // StatusCode(404, Not found)
}
class CarHireCompany {
  late CarType storageType;

  CarHireCompany({required this.storageType});

  CarHireCompany.fromID(String key) {
    // Get enum from index
    storageType = CarType.values.firstWhere((element) => element.value == key);
  }

  bool canLend(CarType type) {
    if (type == storageType) {
      return true;
    }
    return false;
  }

  int get storageTypeIndex {
    return storageType.index;
  }
}
// enhanced enum is more like a constant class
enum CarType {
  none(""),
  suv("ABC-1"),
  sedan("CDE-2");

  // can add more properties or getters/methods if needed
  final String value;

  // can use named parameters if you want
  const CarType(this.value);
}

void enumAdvancePrintStringType3() {
  final company = CarHireCompany(storageType: CarType.sedan);
  print(company.storageType); // CarType.sedan
  print(company.storageTypeIndex); // 1
}