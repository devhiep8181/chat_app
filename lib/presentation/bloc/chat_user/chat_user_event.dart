part of 'chat_user_bloc.dart';

abstract class ChatUserEvent extends Equatable {
  const ChatUserEvent();

  @override
  List<Object> get props => [];
}

class GetListChatUser extends ChatUserEvent {}
