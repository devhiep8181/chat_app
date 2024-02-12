import 'package:chat_app/core/configs/app_cache.dart';
import 'package:chat_app/domain/entites/user/user_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit()
      : super(UserState(
            user: UserEntity(
                uid: '',
                displayName: '',
                email: '',
                photoURL: 'https://www.woolha.com/media/2020/03/eevee.png'))) {
    initializeUser();
  }
  Future<void> initializeUser() async {
    print('call user_cubit');
    try {
      UserEntity? user = await getUserFromSharedPreferences();
      if (user != null) {
        emit(state.copyWith(user: user));
      }
    } catch (e) {
      print('error: $e');
    }
  }
}
