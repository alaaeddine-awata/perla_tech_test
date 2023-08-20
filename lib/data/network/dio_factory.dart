import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../app/app_preferences.dart';
import '../../app/constant.dart';
import '../../app/dependency_injection.dart';
import 'general_dio_interceptor.dart';

const String APPLICATION_JSON = 'application/json';
const String CONTENT_TYPE = 'content-type';
const String ACCEPT = 'accept';
const String AUTHORIZATION = 'authorization';
const String DEFAULT_LANGUAGE = 'lang';

class DioFactory {
  final AppPreferences _appPreferences;

  DioFactory(this._appPreferences);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    Duration timeOut = const Duration(seconds: 60);
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: 'Bearer ${await _appPreferences.getUserToken()}',
      DEFAULT_LANGUAGE: await _appPreferences.getAppLanguage(),
    };
    dio.options = BaseOptions(
      baseUrl: Constant.baseUrl,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
      headers: headers,
    );
    dio.interceptors.add(instance<GeneralInterceptor>());
    if (kReleaseMode) {
      if (kDebugMode) {
        print('release mode no logs');
      }
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: false,
        responseHeader: false,
        requestBody: true,
        request: true,
        responseBody: true,
      ));
    }
    return dio;
  }

  CancelToken getCancelToken() {
    return CancelToken();
  }

}
