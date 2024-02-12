// import 'dart:convert';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// import '../../domain/entites/user_entity.dart';

// class Storage {
//   static final Storage _instance = Storage._internal();

//   factory Storage() => _instance;

//   Storage._internal();

//   FlutterSecureStorage secureStorage = const FlutterSecureStorage();

//   UserEntity account = UserEntity();
  
//   //vấn đề khi dùng secureStorage mà chưa biết cách khắc phục
//   // get user là phương thức bất đồng bộ, vì vậy khi gọi rất rắc rối
//   //mục đích của mình là muốn gán trực tiếp giá trị userEntity = Storage().user luôn
//   //tìm giải pháp cho điều này
//   get user => UserEntity.fromLocalDataSource(json.decode(getString("user_data")));

//   bool get isTestAccount => false;

//   Future<void> setString(String key, String value) async =>
//       await secureStorage.write(key: key, value: value);

//   Future<String?> getString(String key) async => await secureStorage.read(key: key);
// }
