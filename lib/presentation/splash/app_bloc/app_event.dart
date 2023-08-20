part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class AppInitialEvent extends AppEvent {}


class AppCheckStatusEvent extends AppEvent {}


class AppLogoutEvent extends AppEvent {}
