import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:perla_tech_test/presentation/auth/login/login_bloc/login_bloc.dart';
import 'package:perla_tech_test/presentation/auth/register/register_bloc/register_bloc.dart';
import 'package:perla_tech_test/presentation/home/home.dart';
import '../auth/login/login.dart';
import '../auth/register/register.dart';
import '../splash/splash.dart';

class RoutesNames {
  static const String splashRoute = 'splash';
  static const String registerRoute = 'register';
  static const String loginRoute = 'login';
  static const String homeRoute = 'home';
}

class RoutesPaths {
  static const String splashRoute = '/';
  static const String registerRoute = '/register';
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
}

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: RoutesPaths.splashRoute,
    routes: [
      GoRoute(
        path: RoutesPaths.splashRoute,
        name: RoutesNames.splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: RoutesNames.registerRoute,
        path: RoutesPaths.registerRoute,
        builder: (context, state) =>  BlocProvider(create: (context) => RegisterBloc(),child: const RegisterView()),
      ),
      GoRoute(
        name: RoutesNames.loginRoute,
        path: RoutesPaths.loginRoute,
        builder: (context, state) {
          return BlocProvider(create: (context) => LoginBloc(),child: const LoginView());
        },
      ),
      GoRoute(
        name: RoutesNames.homeRoute,
        path: RoutesPaths.homeRoute,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}