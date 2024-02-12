import 'dart:convert';

import 'package:chat_app/domain/entites/chat_user/chat_user.dart';

class ChatUserModel extends ChatUser {
  ChatUserModel(
      {required super.image,
      required super.lastActive,
      required super.name,
      required super.isOnline,
      required super.id,
      required super.pushToken,
      required super.email,
      required super.createAt});

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'lastActive': lastActive,
      'name': name,
      'isOnline': isOnline,
      'id': id,
      'pushToken': pushToken,
      'email': email,
      'createAt': createAt,
    };
  }

  factory ChatUserModel.fromMap(Map<String, dynamic> map) {
    return ChatUserModel(
      image: map['image'] ?? '',
      lastActive: map['lastActive'] ?? '',
      name: map['name'] ?? '',
      isOnline: map['isOnline'] ?? false,
      id: map['id'] ?? '',
      pushToken: map['pushToken'] ?? '',
      email: map['email'] ?? '',
      createAt: map['createAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatUserModel.fromJson(String source) =>
      ChatUserModel.fromMap(json.decode(source));
}
