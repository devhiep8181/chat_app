import 'dart:async';

import 'package:chat_app/core/errors/failure.dart';
import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/domain/entites/chat_user/chat_user.dart';
import 'package:chat_app/domain/usecases/chat_user/chat_user_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';

part 'chat_user_event.dart';
part 'chat_user_state.dart';

class ChatUserBloc extends Bloc<ChatUserEvent, ChatUserState> {
  ChatUserUseCase chatUserUseCase;
  ChatUserBloc({required this.chatUserUseCase})
      : super(ChatUserInitialState()) {
    on<GetListChatUser>(_onGetListChatUser);
  }

  FutureOr<void> _onGetListChatUser(
      GetListChatUser event, Emitter<ChatUserState> emit) async {
    try {
      emit(ChatUserLoadingState());
      final result = await chatUserUseCase(NoParams());
      emit(result.fold(
          (failure) => failure is OfflineFailure
              ? const ChatUserErrorState(message: noConnection)
              : ChatUserErrorState(
                  message:
                      (failure as SeverFailure).message ?? defaultErrorMessage),
          (success) => ChatUserLoadedState(listChatUser: success)));
    } catch (e) {
      print(e);
      emit(ChatUserErrorState(message: e.toString()));
    }
  }
}
