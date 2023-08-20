import 'dart:async';
import 'package:dio/dio.dart';
import '../../../app/app_preferences.dart';

class GeneralInterceptor extends Interceptor {
  final AppPreferences appPreferences;

  GeneralInterceptor(this.appPreferences);

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
