// import 'dart:convert';

// import 'package:chat_app/domain/entites/user_entity.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedStorage {
//   final SharedPreferences sharedPreferences;
//   SharedStorage({
//     required this.sharedPreferences,
//   });

//   get user =>
//       UserEntity.fromLocalDataSource(json.decode(getString("user_data")!));

//   Future<void> setString({required String key, required String value}) async =>
//       await sharedPreferences.setString(key, value);

//   String? getString(String key) => sharedPreferences.getString(key);
// }
