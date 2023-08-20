import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:perla_tech_test/presentation/resources/assets_manager.dart';

import '../resources/routes_manager.dart';
import 'app_bloc/app_bloc.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late AppBloc appBloc;
  @override
  void initState() {
    appBloc = AppBloc()..add(AppCheckStatusEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        bloc: appBloc,
        listener: (context, state) {
          if (state is AppToRegisterState) {
            Timer(const Duration(seconds: 2), () {
                context.goNamed(RoutesNames.registerRoute);
            });
          }
          if (state is AppToHomeState) {
            Timer(const Duration(seconds: 2), () {
              context.goNamed(RoutesNames.homeRoute);
            });
          }
        },
        child: Center(
          child: Image.asset(ImageAssets.logo),
        ),
      ),
    );
  }
}
