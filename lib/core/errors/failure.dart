import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class OfflineFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class SeverFailure extends Failure {
  final String? message;
  SeverFailure({
    this.message,
  });

  @override
  List<Object?> get props => [message];
}

class EmptyCacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}
