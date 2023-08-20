part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}


class LoginGetProfileState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final AuthModel loginModel;

  LoginSuccessState(this.loginModel);
}

class LoginErrorState extends LoginState {
  final String message;

  LoginErrorState(this.message);
}

//LogOut State
// class LogOutSuccessState extends LoginState {
//   final DefaultSuccessModel success;

//   LogOutSuccessState(this.success);
// }
