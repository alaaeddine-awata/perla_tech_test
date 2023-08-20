import 'package:multiple_result/multiple_result.dart';
import '../../data/network/failure_model/failure.dart';
import '../models/auth_models/auth_models.dart';
import '../repository/repository.dart';
import 'base_usecase.dart';

class LoginUseCase
    implements
        BaseUseCase<({String phone, String password}),
            AuthModel> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Result<AuthModel, FailureModel>> execute(input) async {
    return await _repository.login(
        phone: input.phone,
        password: input.password);
  }
}

class RegisterUseCase
    implements
        BaseUseCase<
            ({
              String fullName,
              String phone,
              String password,
            }),
            AuthModel> {
  final Repository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Result<AuthModel, FailureModel>> execute(input) async {
    return await _repository.register(
      fullName: input.fullName,
      phone: input.phone,
        password: input.password,
    );
  }
}
