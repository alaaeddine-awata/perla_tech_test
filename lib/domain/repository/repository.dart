import 'package:multiple_result/multiple_result.dart';
import '../../data/network/failure_model/failure.dart';
import '../models/auth_models/auth_models.dart';

abstract class Repository {
 //Auth_repo
  Future<Result<AuthModel, FailureModel>> login({
    required String phone,
    required String password,
  });

  Future<Result<AuthModel, FailureModel>> register(
      {
        required String fullName,
        required String phone,
        required String password,
      });
}
