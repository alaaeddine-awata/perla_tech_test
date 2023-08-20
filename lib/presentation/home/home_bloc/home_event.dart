part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeGetDataEvent extends HomeEvent {}

class HomeGetUserNameEvent extends HomeEvent {}

class HomeAddEvent extends HomeEvent {
  final ({String text,String date}) item;

  HomeAddEvent(this.item);
}

class HomeEditEvent extends HomeEvent {
  final int index;
  final ({String text,String date}) item;

  HomeEditEvent(this.item, this.index);
}

class HomeDeleteEvent extends HomeEvent {
  final ({String text,String date}) item;

  HomeDeleteEvent(this.item);
}
