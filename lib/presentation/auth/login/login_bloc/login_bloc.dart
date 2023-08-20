import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_preferences.dart';
import '../../../../app/dependency_injection.dart';
import '../../../../domain/models/auth_models/auth_models.dart';
import '../../../../domain/usecases/auth_usecases.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase useCase = instance<LoginUseCase>();
  AppPreferences appPreferences= instance<AppPreferences>();
  String phoneNumber = '';
  String password = '';

  LoginBloc()
      : super(LoginInitial()) {

    on<LoginAddPhoneEvent>((event, emit) {
      phoneNumber = event.phoneNumber;
      emit(LoginInitial());
    });
    on<LoginAddPasswordEvent>((event, emit) {
      password = event.password;
      emit(LoginInitial());
    });

    on<LoginRequestEvent>((event, emit) async {
      emit(LoginLoadingState());
        (await useCase.execute((
        phone: phoneNumber,
        password: password
        )))
            .when((success) {
            appPreferences.setUserToken(success.data.token);
            appPreferences.setUserName(success.data.user.username);
          emit(LoginSuccessState(success));
        }, (error) => emit(LoginErrorState(error.message)));
    });
  }
}
