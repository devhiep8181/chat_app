part of 'chat_user_bloc.dart';

abstract class ChatUserState extends Equatable {
  const ChatUserState();

  @override
  List<Object> get props => [];
}

class ChatUserInitialState extends ChatUserState {}

class ChatUserLoadingState extends ChatUserState {}

class ChatUserLoadedState extends ChatUserState {
  final List<ChatUser> listChatUser;
  const ChatUserLoadedState({required this.listChatUser});
  @override
  // TODO: implement props
  List<Object> get props => [listChatUser];
}

class ChatUserErrorState extends ChatUserState {
  final String message;
  const ChatUserErrorState({required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}

//TODO: CODE NỐT BLOC LẤY DỮ LIỆU USER