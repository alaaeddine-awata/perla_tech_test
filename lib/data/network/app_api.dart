import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../app/constant.dart';
import '../../domain/models/auth_models/auth_models.dart';
import 'end_points.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  //Auth_api
  @POST(EndPoints.login)
  Future<HttpResponse<AuthModel>> login({
    @Field("phone") required String phone,
    @Field("password") required String password,
  });

  @POST(EndPoints.register)
  Future<HttpResponse<AuthModel>> register({
    @Field("full_name") required String fullName,
    @Field("phone") required String phone,
    @Field("password") required String password,
  });
}
