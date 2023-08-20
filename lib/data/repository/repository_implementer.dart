import 'dart:io';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../domain/models/auth_models/auth_models.dart';
import '../../domain/repository/repository.dart';
import '../../presentation/resources/strings_manager.dart';
import '../network/app_api.dart';
import '../network/failure_model/failure.dart';
import '../network/network_info.dart';

class RepositoryImplementer extends Repository {
  final AppServiceClient _appServiceClient;
  final NetworkInfo _networkInfo;

  RepositoryImplementer(
    this._appServiceClient,
    this._networkInfo,
  );

@override
  Future<Result<AuthModel, FailureModel>> login(
      {
      required String phone,
      required String password,}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.login(
            phone: phone, password: password);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<AuthModel, FailureModel>> register(
      {
        required String fullName,
      required String phone,
      required String password,
     }) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.register(
          fullName: fullName,
          phone: phone,
          password: password,
        );
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }
}
