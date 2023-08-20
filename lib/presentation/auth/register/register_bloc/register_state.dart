part of 'register_bloc.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  final AuthModel signupModel;

  RegisterSuccessState(this.signupModel);
}

class RegisterErrorState extends RegisterState {
  final String message;

  RegisterErrorState(this.message);
}
