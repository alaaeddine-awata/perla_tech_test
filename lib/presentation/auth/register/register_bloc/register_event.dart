part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisterRequestEvent extends RegisterEvent{
  final String fullName, phone, password;

  RegisterRequestEvent(this.fullName, this.phone, this.password);
}
