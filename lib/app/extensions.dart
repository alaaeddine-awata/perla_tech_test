import 'package:easy_localization/easy_localization.dart';

extension StringExtensions on DateTime{
  String dateFormat() {
    return DateFormat.yMMMd('en_US').format(this);
  }
}