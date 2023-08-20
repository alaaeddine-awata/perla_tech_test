import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:perla_tech_test/app/dependency_injection.dart';
import 'package:perla_tech_test/presentation/auth/register/register_bloc/register_bloc.dart';
import 'package:perla_tech_test/presentation/auth/register/register_bloc/register_bloc.dart';
import '../../resources/resources.dart';
import '../../widgets/widgets.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController fullName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  bool showConfirmPassword = false;

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    confirmPassword.dispose();
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
                    '${AppStrings().createAccount}!',
                    style: Theme.of(context).primaryTextTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: AppSizeH.s4,
                  ),
                  Text(
                    '${AppStrings().registerToGetStarted}.',
                    style: Theme.of(context).primaryTextTheme.headlineMedium,
                  ),
                  SizedBox(height: AppSizeH.s48),
                  Text(
                    AppStrings().fullName,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                  SizedBox(
                    height: AppSizeH.s12,
                  ),
                  TextFormField(
                    controller: fullName,
                    decoration:
                        InputDecoration(hintText: AppStrings().enterYourName),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings().pleaseEnterYourName;
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: AppSizeH.s24,
                  ),
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
                  ),
                  SizedBox(
                    height: AppSizeH.s24,
                  ),
                  Text(
                    AppStrings().confirmPassword,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                  SizedBox(
                    height: AppSizeH.s12,
                  ),
                  TextFormField(
                    controller: confirmPassword,
                    decoration: InputDecoration(
                      hintText: AppStrings().repeatYourPassword,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showConfirmPassword = !showConfirmPassword;
                          });
                        },
                        icon: Icon(
                          !showConfirmPassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: AppSizeSp.s18,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !showConfirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings().pleaseEnterYourPassword;
                      } else if (value.length < 8) {
                        return AppStrings().passwordMustBeAtLeast8Characters;
                      } else if (confirmPassword.text != password.text) {
                        return AppStrings().thePasswordsMustBeMatch;
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: AppSizeH.s158,
                  ),
                  BlocConsumer<RegisterBloc, RegisterState>(
                    listener: (context, state) async {
                      if(state is RegisterErrorState){
                        Fluttertoast.showToast(msg: state.message,backgroundColor: ColorManager.red,toastLength: Toast.LENGTH_LONG);
                      }
                      if(state is RegisterSuccessState){
                        await resetAllModules();
                        if(mounted){
                          resetBlocs(context);
                          context.goNamed(RoutesNames.homeRoute);
                        }
                      }
                    },
                    builder: (context, state) {
                      if(state is RegisterLoadingState){
                        return const Center(child: CircularProgressIndicator(),);
                      }
                      return SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                context.read<RegisterBloc>().add(RegisterRequestEvent(fullName.text, phone.text, password.text));
                              }
                            },
                            label: AppStrings().register),
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
                          text: '${AppStrings().alreadyHaveAnAccount}? ',
                          style: Theme.of(context).primaryTextTheme.labelMedium,
                        ),
                        TextSpan(
                          text: AppStrings().login,
                          style: Theme.of(context).primaryTextTheme.labelSmall,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(RoutesNames.loginRoute);
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
