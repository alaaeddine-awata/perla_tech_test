import 'package:flutter/material.dart';

class ColorManager {
  //-------main colors------------
  static Color primary =  Hex16Color.fromHex("#6C63FF");
  static Color secondary = Hex16Color.fromHex("#0978F2");
  static Color lightGrey = Hex16Color.fromHex("#F5F5F5");
  static Color lighterGrey = Hex16Color.fromHex("#F3F4F6CC").withAlpha(80);
  static Color grey = Hex16Color.fromHex("#C7C7C7");
  static Color darkGrey = Hex16Color.fromHex("#B1B1B1");
  static Color white = Hex16Color.fromHex("#FFFFFF");
  static Color black = Hex16Color.fromHex("#333333");
  static Color red = Hex16Color.fromHex("#FF5757");
}

extension Hex16Color on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
