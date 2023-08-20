import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:perla_tech_test/domain/usecases/auth_usecases.dart';
import 'package:perla_tech_test/presentation/home/home_bloc/home_bloc.dart';
import 'package:perla_tech_test/presentation/splash/app_bloc/app_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/network/app_api.dart';
import '../data/network/dio_factory.dart';
import '../data/network/network_info.dart';
import '../data/repository/repository_implementer.dart';
import '../domain/repository/repository.dart';
import 'app_preferences.dart';
import '../data/network/general_dio_interceptor.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  instance.registerFactory<SharedPreferences>(() => sharedPreferences);

  instance.registerFactory<AppPreferences>(() => AppPreferences(instance()));

  instance.registerFactory<DioFactory>(() => DioFactory(
        instance(),
      ));

  instance.registerFactory<GeneralInterceptor>(() => GeneralInterceptor(
        instance(),
      ));

  final dio = await instance<DioFactory>().getDio();

  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));

  instance.registerLazySingleton<Repository>(() => RepositoryImplementer(
        instance(),
        instance(),
      ));

  instance.registerLazySingleton<LoginUseCase>(() => LoginUseCase(instance()));

  instance.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(instance()));
}

resetAllModules() async {
  await instance.reset(dispose: false);
  await initAppModule();
}

resetBlocs(BuildContext context) {
  context.read<AppBloc>().add(AppInitialEvent());
  context.read<HomeBloc>().add(HomeInitialEvent());
  context.read<HomeBloc>().add(HomeGetUserNameEvent());
  context.read<HomeBloc>().add(HomeGetDataEvent());
}
