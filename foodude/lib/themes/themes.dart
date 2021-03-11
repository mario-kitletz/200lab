import 'package:app_template/themes/app_colors.dart';
import 'package:app_template/themes/styles_text.dart';
import 'package:flutter/material.dart';

class Theme {
  Theme._();

  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColor.primary1,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: FontFamily.fontSfProRegular,
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
