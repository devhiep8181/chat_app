import 'package:chat_app/core/errors/exceptions.dart';
import 'package:chat_app/core/errors/failure.dart';
import 'package:chat_app/data/datasource/chat_user/chat_user_datasource.dart';
import 'package:chat_app/domain/entites/chat_user/chat_user.dart';
import 'package:chat_app/domain/repositories/chat_user/chat_user_repository.dart';
import 'package:dartz/dartz.dart';

class ChatUserRepositoryImpl extends ChatUserRepository {
  final ChatUserDataSoure chatUserDataSoure;
  ChatUserRepositoryImpl({
    required this.chatUserDataSoure,
  });

  @override
  Future<Either<Failure, List<ChatUser>>> getChatUser() async {
    try {
      final result = await chatUserDataSoure.getChatUser();
      return Right(result);
    } on ServerException catch (error) {
      return Left(SeverFailure(message: error.message));
    }
  }
}
