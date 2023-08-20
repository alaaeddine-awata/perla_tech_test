part of 'app_bloc.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppToHomeState extends AppState {}

class AppToRegisterState extends AppState {}

class AppToLoginState extends AppState {}
