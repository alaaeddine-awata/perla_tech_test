import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'app/bloc_observer.dart';
import 'app/dependency_injection.dart';
import 'presentation/resources/language_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];
  await initAppModule();
  runApp(EasyLocalization(
      supportedLocales: supportedLocales,
      path: ASSETS_PATH_LOCALISATION,
      child: const MyApp()));
}
