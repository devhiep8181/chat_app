part of 'user_cubit.dart';

// ignore: must_be_immutable
class UserState extends Equatable {
  UserEntity user;
  UserState({ required this.user});


  @override
  List<Object> get props => [user];

  UserState copyWith({
    UserEntity? user,
  }) {
    return UserState(
      user: user ?? this.user,
    );
  }
}

