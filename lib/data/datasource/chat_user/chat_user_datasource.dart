import 'dart:developer';

import 'package:chat_app/core/configs/configs.dart';
import 'package:chat_app/data/model/chat_user/chat_user_model.dart';
import 'package:chat_app/domain/entites/chat_user/chat_user.dart';

abstract class ChatUserDataSoure {
  Future<List<ChatUser>> getChatUser();
}

class ChatUserDataSoureImpl implements ChatUserDataSoure {
  @override
  Future<List<ChatUser>> getChatUser() async {
    print('ahihi');
    List<ChatUser> listChatUser = [];
    final getDataFireStore = await APIs.firestore.collection('user').get();
    final data = getDataFireStore.docs;

    for (int i = 0; i < data.length; i++) {
      log('data: ${data[i].data()}');
      log('data type: ${data[i].data().runtimeType}');
      listChatUser.add(ChatUserModel.fromMap(data[i].data()));
    }
    return listChatUser;
  }
}
