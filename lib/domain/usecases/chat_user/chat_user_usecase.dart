import 'package:chat_app/core/errors/failure.dart';
import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/domain/entites/chat_user/chat_user.dart';
import 'package:chat_app/domain/repositories/chat_user/chat_user_repository.dart';
import 'package:dartz/dartz.dart';

class ChatUserUseCase extends UseCase<List<ChatUser>, NoParams> {
  final ChatUserRepository chatUserRepository;
  ChatUserUseCase({
    required this.chatUserRepository,
  });
  @override
  Future<Either<Failure, List<ChatUser>>> call(params) async {
    return chatUserRepository.getChatUser();
  }
}
