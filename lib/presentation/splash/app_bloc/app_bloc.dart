import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../app/app_preferences.dart';
import '../../../app/dependency_injection.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppPreferences appPreferences = instance<AppPreferences>();

  AppBloc() : super(AppInitial()) {

    on<AppCheckStatusEvent>((event, emit) async {
      if ((await appPreferences.getUserToken()).isNotEmpty) {
        emit(AppToHomeState());
      } else {
        emit(AppToRegisterState());
      }
    });

    on<AppLogoutEvent>((event, emit) async {
      await appPreferences.logOutPref();
      emit(AppToLoginState());
    });

    on<AppInitialEvent>((event, emit) async {
      appPreferences = instance<AppPreferences>();
      emit(AppInitial());
    });
  }
}
