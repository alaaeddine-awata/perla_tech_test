part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginAddPhoneEvent extends LoginEvent {
  final String phoneNumber;

  LoginAddPhoneEvent(this.phoneNumber);
}

class LoginAddPasswordEvent extends LoginEvent {
  final String password;

  LoginAddPasswordEvent(this.password);
}

class LoginRequestEvent extends LoginEvent {}
