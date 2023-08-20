import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../domain/models/auth_models/auth_models.dart';
import '../presentation/resources/resources.dart';
import 'dependency_injection.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
  String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
  String PREFS_KEY_USER_NAME = 'PREFS_KEY_USER_NAME';
  String PREFS_KEY_LOCAL_DATA = 'PREFS_KEY_LOCAL_DATA';
  String PREFS_KEY_THEME = 'PREFS_KEY_THEME';

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return '';
    }
  }

  Future<Locale> switchAppLanguage() async {
    Locale? currentLanguage = await getLocal();
    if (currentLanguage == LanguageType.ARABIC.getLocal()) {
      await _sharedPreferences.setString(
          PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
      await resetAllModules();
      return ENGLISH_LOCAL;
    } else {
      await _sharedPreferences.setString(
          PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
      await resetAllModules();
      return ARABIC_LOCAL;
    }
  }

  setTheme({required ThemeData themeData}) {
    _sharedPreferences.setString(PREFS_KEY_THEME, themeData.getValue());
  }

  ThemeData getTheme() {
    String? theme = _sharedPreferences.getString(PREFS_KEY_THEME);
    if (theme == ThemeDataType.dark.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  Future<Locale?> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    }
    if (currentLanguage == LanguageType.ENGLISH.getValue()) {
      return ENGLISH_LOCAL;
    } else {
      return null;
    }
  }

  Future<void> setUserName(String name) async {
    _sharedPreferences.setString(PREFS_KEY_USER_NAME, name);
  }

  Future<String> getUserName() async {
    return _sharedPreferences.getString(PREFS_KEY_USER_NAME) ?? '';
  }

  Future<List<({String text, String date})>> getLocalData() async {
    String? jsonString = _sharedPreferences.getString(PREFS_KEY_LOCAL_DATA);
    if (jsonString != null) {
      List<dynamic> jsonList = jsonDecode(jsonString);
      List<({String text, String date})> objectList = jsonList.map((json) => ( text:json['text'] as String, date:json['date'] as String)).toList();
      return objectList;
    }
    return [];
  }

  Future<void> setLocalData(List<({String text, String date})> objectList) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<Map<String, dynamic>> jsonList = objectList.map((obj) => {'text': obj.text, 'date': obj.date}).toList();
  String jsonString = jsonEncode(jsonList);
  await prefs.setString(PREFS_KEY_LOCAL_DATA, jsonString);
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? '';
  }

  Future<void> logOutPref() async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, '');
    _sharedPreferences.setString(PREFS_KEY_USER_NAME, '');
    _sharedPreferences.setString(PREFS_KEY_LOCAL_DATA, '');
  }
}
