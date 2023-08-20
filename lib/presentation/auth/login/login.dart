import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import '../../../app/dependency_injection.dart';
import '../../resources/resources.dart';
import '../../resources/values_manager.dart';
import '../../widgets/widgets.dart';
import 'login_bloc/login_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardWidget(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(
                  top: AppSizeH.s96,
                  left: AppSizeW.s24,
                  right: AppSizeW.s24,
                  bottom: AppSizeH.s32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${AppStrings().welcomeBack}!',
                    style: Theme.of(context).primaryTextTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: AppSizeH.s4,
                  ),
                  Text(
                    '${AppStrings().enterYourDataToContinue}.',
                    style: Theme.of(context).primaryTextTheme.headlineMedium,
                  ),
                  SizedBox(height: AppSizeH.s48),
                  Text(
                    AppStrings().phoneNumber,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                  SizedBox(
                    height: AppSizeH.s12,
                  ),
                  TextFormField(
                    controller: phone,
                    decoration: InputDecoration(
                      hintText: AppStrings().enterYourName,
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings().pleaseEnterYourPhoneNumber;
                      }
                      return null;
                    },
                    onChanged: (v) {
                      context.read<LoginBloc>().add(LoginAddPhoneEvent(v));
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: AppSizeH.s24,
                  ),
                  Text(
                    AppStrings().password,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                  SizedBox(
                    height: AppSizeH.s12,
                  ),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: AppStrings().enterYourPassword,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                          !showPassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: AppSizeSp.s18,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !showPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings().pleaseEnterYourPassword;
                      } else if (value.length < 8) {
                        return AppStrings().passwordMustBeAtLeast8Characters;
                      }
                      return null;
                    },
                    onChanged: (v) {
                      context.read<LoginBloc>().add(LoginAddPasswordEvent(v));
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: AppSizeH.s360,
                  ),
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) async {
                      if(state is LoginSuccessState){
                       await resetAllModules();
                       if(mounted){
                         resetBlocs(context);
                         context.goNamed(RoutesNames.homeRoute);
                       }
                      }
                      if(state is LoginErrorState){
                        Fluttertoast.showToast(msg: state.message,backgroundColor: ColorManager.red,toastLength: Toast.LENGTH_LONG);
                      }
                    },
                    builder: (context, state) {
                      if(state is LoginLoadingState){
                        return const Center(child: CircularProgressIndicator(),);
                      }
                      return SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                            onPressed: (context
                                        .read<LoginBloc>()
                                        .phoneNumber
                                        .isNotEmpty &&
                                    context
                                        .read<LoginBloc>()
                                        .password
                                        .isNotEmpty &&
                                    state is! LoginLoadingState)
                                ? () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      context
                                          .read<LoginBloc>()
                                          .add(LoginRequestEvent());
                                    }
                                  }
                                : null,
                            label: AppStrings().login),
                      );
                    },
                  ),
                  SizedBox(
                    height: AppSizeH.s12,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: '${AppStrings().dontHaveAnAccount}? ',
                          style: Theme.of(context).primaryTextTheme.labelMedium,
                        ),
                        TextSpan(
                          text: AppStrings().register,
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(RoutesNames.registerRoute);
                            },
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
