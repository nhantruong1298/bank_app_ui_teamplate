import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitState extends LoginState implements Equatable {
  const LoginInitState();

  @override
  List<Object?> get props => [];
}

class LoginAuthState extends LoginState implements Equatable {
  const LoginAuthState();

  @override
  List<Object?> get props => [];
}
