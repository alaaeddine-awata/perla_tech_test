import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_preferences.dart';
import '../../../../app/dependency_injection.dart';
import '../../../../domain/models/auth_models/auth_models.dart';
import '../../../../domain/usecases/auth_usecases.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterUseCase useCase = instance<RegisterUseCase>();
  AppPreferences appPreferences = instance<AppPreferences>();

  RegisterBloc() : super(RegisterInitial()) {
 on<RegisterRequestEvent>((event, emit) async {
      emit(RegisterLoadingState());
      (await useCase.execute((fullName: event.fullName,phone: event.phone,password: event.password))).when(
        (success) {
          appPreferences.setUserToken(success.data.token);
          appPreferences.setUserName(success.data.user.username);
          emit(RegisterSuccessState(success));
        },
        (error) => emit(RegisterErrorState(error.message)),
      );
    });
  }
}
