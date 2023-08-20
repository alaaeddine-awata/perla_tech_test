import 'package:flutter/material.dart';

import 'resources.dart';

class FontConstants {
  static const String fontFamily = "Montserrat";
}

ThemeData lightTheme() {
  return ThemeData(
      colorScheme: ColorScheme.light(
        //colors fo all app
        primary: ColorManager.primary,
        secondary: ColorManager.secondary,
        background: ColorManager.white,
        brightness: Brightness.light,
        outline: ColorManager.lightGrey,
        error: ColorManager.red,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: ColorManager.white,
      drawerTheme: DrawerThemeData(backgroundColor: ColorManager.white),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager.primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
               if (states.contains(MaterialState.disabled)) {
                return ColorManager.primary.withOpacity(.5);
              }
              return ColorManager.primary; // Use the component's default.
            },
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizeR.s12))),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(ColorManager.lightGrey)
        )
      ),
      iconTheme:
          IconThemeData(color: ColorManager.black, size: AppSizeSp.s24),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.primary,
        selectionHandleColor: ColorManager.primary,
      ),
      switchTheme: SwitchThemeData(
          trackColor: MaterialStatePropertyAll(ColorManager.grey),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        filled: true,
        fillColor: ColorManager.lightGrey,
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizeW.s16, vertical: AppSizeH.s12),
        prefixIconColor: ColorManager.darkGrey,
        suffixIconColor: ColorManager.primary,
        labelStyle: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.grey,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w400),
      ),
      primaryTextTheme: TextTheme(
        labelLarge: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.white,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w500),
          headlineLarge: TextStyle(
              fontFamily: FontConstants.fontFamily,
              color: ColorManager.primary,
              fontSize: AppSizeSp.s24,
              fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.grey,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w500),
        titleLarge: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.grey,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w400),
        titleMedium: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.black,
            fontSize: AppSizeSp.s14,
            fontWeight: FontWeight.w400),
        labelMedium: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.darkGrey,
            fontSize: AppSizeSp.s14,
            fontWeight: FontWeight.w400),
        labelSmall: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.primary,
            fontSize: AppSizeSp.s14,
            fontWeight: FontWeight.w400,decoration: TextDecoration.underline,decorationColor: ColorManager.primary),
        bodySmall: TextStyle(
          fontFamily: FontConstants.fontFamily,
          color: ColorManager.black,
          fontSize: AppSizeSp.s12,
          fontWeight: FontWeight.w500,),
        bodyLarge: TextStyle(
          fontFamily: FontConstants.fontFamily,
          color: ColorManager.black,
          fontSize: AppSizeSp.s16,
          fontWeight: FontWeight.w500,),
      )
  );
}


ThemeData darkTheme() {
  return ThemeData(
      colorScheme: ColorScheme.light(
        //colors fo all app
        primary: ColorManager.primary,
        secondary: ColorManager.secondary,
        background: ColorManager.black,
        brightness: Brightness.dark,
        outline: ColorManager.lightGrey,
        error: ColorManager.red,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: ColorManager.black,
      drawerTheme: DrawerThemeData(backgroundColor: ColorManager.black),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager.primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
               if (states.contains(MaterialState.disabled)) {
                return ColorManager.primary.withOpacity(.5);
              }
              return ColorManager.primary; // Use the component's default.
            },
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizeR.s12))),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ColorManager.lightGrey)
          )
      ),
      iconTheme:
          IconThemeData(color: ColorManager.black, size: AppSizeSp.s24),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.primary,
        selectionHandleColor: ColorManager.primary,
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStatePropertyAll(ColorManager.grey)
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizeR.s8),borderSide: BorderSide.none),
        filled: true,
        fillColor: ColorManager.darkGrey,
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizeW.s16, vertical: AppSizeH.s12),
        prefixIconColor: ColorManager.darkGrey,
        suffixIconColor: ColorManager.primary,
        labelStyle: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.grey,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w400),
      ),
      primaryTextTheme: TextTheme(
        labelLarge: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.white,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w500),
          headlineLarge: TextStyle(
              fontFamily: FontConstants.fontFamily,
              color: ColorManager.primary,
              fontSize: AppSizeSp.s24,
              fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.grey,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w500),
        titleLarge: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.grey,
            fontSize: AppSizeSp.s16,
            fontWeight: FontWeight.w400),
        titleMedium: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.white,
            fontSize: AppSizeSp.s14,
            fontWeight: FontWeight.w400),
        labelMedium: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.darkGrey,
            fontSize: AppSizeSp.s14,
            fontWeight: FontWeight.w400),
        labelSmall: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.primary,
            fontSize: AppSizeSp.s14,
            fontWeight: FontWeight.w400,decoration: TextDecoration.underline,decorationColor: ColorManager.primary),
        bodySmall: TextStyle(
            fontFamily: FontConstants.fontFamily,
            color: ColorManager.white,
            fontSize: AppSizeSp.s12,
            fontWeight: FontWeight.w500,),
        bodyLarge: TextStyle(
          fontFamily: FontConstants.fontFamily,
          color: ColorManager.white,
          fontSize: AppSizeSp.s16,
          fontWeight: FontWeight.w500,),
      )
  );
}

enum ThemeDataType { light, dark }

extension ThemeDataValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataType.dark.toString();
    } else {
      return ThemeDataType.light.toString();
    }
  }
}

extension ThemeDataTypeExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}
