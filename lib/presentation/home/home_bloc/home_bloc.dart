import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:perla_tech_test/app/app_preferences.dart';
import 'package:perla_tech_test/app/dependency_injection.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  AppPreferences appPreferences = instance<AppPreferences>();
  List<({String text,String date})> data =[];
  String? userName;
  HomeBloc() : super(HomeInitial()) {

    on<HomeInitialEvent>((event, emit) async {
      appPreferences = instance<AppPreferences>();
      data =[];
      userName = null;
      emit(HomeInitial());
    });

    on<HomeGetUserNameEvent>((event, emit) async {
      userName = await appPreferences.getUserName();
      emit(HomeInitial());
    });

    on<HomeGetDataEvent>((event, emit) async {
      data = await appPreferences.getLocalData();
      emit(HomeInitial());
    });

    on<HomeAddEvent>((event, emit) {
      data.add(event.item);
      appPreferences.setLocalData(data);
      emit(HomeInitial());
    });

    on<HomeDeleteEvent>((event, emit) {
      data.remove(event.item);
      appPreferences.setLocalData(data);
      emit(HomeInitial());
    });

    on<HomeEditEvent>((event, emit) {
      final newItem = event.item;
      data[event.index] = newItem;
      appPreferences.setLocalData(data);
      emit(HomeInitial());
    });
  }
}
