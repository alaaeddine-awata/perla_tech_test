import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:perla_tech_test/presentation/home/home_bloc/home_bloc.dart';
import '../presentation/resources/resources.dart';
import '../presentation/splash/app_bloc/app_bloc.dart';
import 'app_preferences.dart';
import 'dependency_injection.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();

  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) {
      if (local == null) {
        return {context.setLocale(context.locale)};
      }
      else {
        return {context.setLocale(local)};
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc()..add(HomeGetDataEvent())..add(HomeGetUserNameEvent()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) =>
            ThemeProvider(
              initTheme: instance<AppPreferences>().getTheme(),
              builder: (p0, theme) =>
                  MaterialApp.router(
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    title: 'Perla Tech Test',
                    themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode
                        .light,
                    theme: theme,
                    routerConfig: AppRouter.router,
                  ),
            ),
      ),
    );
  }
}
