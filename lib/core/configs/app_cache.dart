import 'dart:convert';

import 'package:chat_app/domain/entites/user_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveUserToSharedPreferences(UserEntity user) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

    Map<String, dynamic> userMap = user.toMap();

  // Convert User object to JSON string
  String userJson = json.encode(userMap);

  // Save JSON string to SharedPreferences
  prefs.setString('user_data', userJson);
}

Future<UserEntity?> getUserFromSharedPreferences() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Get JSON string from SharedPreferences
  String? userJson1 = prefs.getString('user_data');
  print("json: $userJson1");

  if (userJson1 != null) {
    // Convert JSON string to User object
    print("decode: ${json.decode(userJson1).runtimeType}");
    Map<String, dynamic> userMap = jsonDecode(userJson1);
    print(userMap);
    return UserEntity.fromMap(userMap);
  }
  return null;
}


