import 'package:chat_app/core/errors/failure.dart';
import 'package:chat_app/domain/entites/chat_user/chat_user.dart';
import 'package:dartz/dartz.dart';

abstract class ChatUserRepository {
  Future<Either<Failure, List<ChatUser>>> getChatUser();
}
