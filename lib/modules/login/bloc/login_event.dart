import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginInitEvent extends LoginEvent {
  const LoginInitEvent();

  @override
  List<Object?> get props => [];
}

class LoginAuthEvent extends LoginEvent {
  const LoginAuthEvent();

  @override
  List<Object?> get props => [];
}
