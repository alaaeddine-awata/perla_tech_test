import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:perla_tech_test/presentation/home/home_bloc/home_bloc.dart';
import 'package:perla_tech_test/presentation/splash/app_bloc/app_bloc.dart';
import 'package:perla_tech_test/presentation/splash/app_bloc/app_bloc.dart';
import '../../app/app_preferences.dart';
import '../../app/dependency_injection.dart';
import '../resources/resources.dart';

class CustomDrawer extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomDrawer({super.key, required this.scaffoldKey});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizeSp.s24).copyWith(top: AppSizeH.s48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    widget.scaffoldKey.currentState?.closeDrawer();
                  },
                  icon: RotatedBox(
                      quarterTurns: 3,
                      child: SvgPicture.asset(IconAssets.menu))),
              SizedBox(
                height: AppSizeH.s32,
              ),
              Text(
                context.read<HomeBloc>().userName ?? '',
                style: Theme.of(context).primaryTextTheme.bodyLarge,
              ),
              SizedBox(
                height: AppSizeH.s64,
              ),
              ThemeSwitcher.withTheme(
                builder: (context, switcher, theme) {
                  return DrawerItemWidget(
                    iconPath: IconAssets.theme,
                    iconColor: Theme.of(context).isDarkTheme
                        ? ColorManager.white
                        : null,
                    alignToEnd: true,
                    suffix: Switch(
                      value: theme.isDarkTheme,
                      onChanged: (value) {
                        ThemeData newTheme =
                            theme.brightness == Brightness.light
                                ? darkTheme()
                                : lightTheme();
                        switcher.changeTheme(theme: newTheme);
                        instance<AppPreferences>()
                            .setTheme(themeData: newTheme);
                      },
                    ),
                    label: theme.isDarkTheme
                        ? AppStrings().darkMode
                        : AppStrings().lightMode,
                    onTap: () {},
                  );
                },
              ),
              DrawerItemWidget(
                iconPath: IconAssets.language,
                iconColor:
                    Theme.of(context).isDarkTheme ? ColorManager.white : null,
                label: "${AppStrings().disableLanguage}\\",
                suffix: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s8),
                  child: Text(
                    AppStrings().activeLanguage,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .labelSmall
                        ?.copyWith(decoration: TextDecoration.none),
                  ),
                ),
                onTap: () async {
                  context.setLocale(
                      await instance<AppPreferences>().switchAppLanguage());
                },
              ),
              BlocListener<AppBloc, AppState>(
                listener: (context, state) async {
                  if(state is AppToLoginState){
                    resetBlocs(context);
                    await resetAllModules();
                    if(mounted) {
                      context.goNamed(RoutesNames.loginRoute);
                    }
                  }
                },
                child: DrawerItemWidget(
                  onTap: () => context.read<AppBloc>().add(AppLogoutEvent()),
                  iconPath: IconAssets.logout,
                  label: AppStrings().logout,
                  labelStyle: Theme.of(context)
                      .primaryTextTheme
                      .titleMedium
                      ?.copyWith(color: ColorManager.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItemWidget extends StatefulWidget {
  final String iconPath;
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsets? padding;
  final Widget? suffix;
  final Size? iconSize;
  final Color? iconColor;
  final Function() onTap;
  final bool? alignToEnd;

  const DrawerItemWidget(
      {Key? key,
      required this.iconPath,
      required this.label,
      this.padding,
      this.suffix,
      required this.onTap,
      this.iconSize,
      this.labelStyle,
      this.alignToEnd,
      this.iconColor})
      : super(key: key);

  @override
  State<DrawerItemWidget> createState() => _DrawerItemWidgetState();
}

class _DrawerItemWidgetState extends State<DrawerItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.only(bottom: AppSizeH.s32),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.iconPath,
              color: widget.iconColor,
              height: widget.iconSize?.height,
              width: widget.iconSize?.width,
            ),
            SizedBox(
              width: AppSizeW.s11,
            ),
            Text(
              widget.label,
              style: widget.labelStyle ??
                  Theme.of(context).primaryTextTheme.titleMedium,
            ),
            Visibility(
                visible: (widget.alignToEnd ?? false), child: const Spacer()),
            widget.suffix ?? const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
