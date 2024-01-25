import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

class UserEntity {
  static User? _user;
  String? uid;
  String? displayName;
  String? email;
  String? photoURL;
  UserEntity({
    required this.uid,
    required this.displayName,
    required this.email,
    required this.photoURL,
  });

  static void setUser(User? user) {
    _user = user;
  }

  static User? getUser() {
    return _user;
  }
  
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'photoURL': photoURL,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      uid: map['uid'],
      displayName: map['displayName'],
      email: map['email'],
      photoURL: map['photoURL'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) => UserEntity.fromMap(json.decode(source));
}
