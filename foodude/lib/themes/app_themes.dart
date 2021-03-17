import 'package:app_template/themes/app_colors.dart';
import 'package:app_template/themes/styles_text.dart';
import 'package:app_template/themes/theme_text.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColor.primary1,
      accentColor: AppColor.primary2,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: FontFamily.fontAvenirNextLTProRegular,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: ThemeText.textTheme);

  static final ThemeData darkTheme = lightTheme.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black87,
      textTheme: ThemeText.textTheme.copyWith(
        headline2: StylesText.h2.copyWith(color: AppColor.textDarkColor),
        headline3: StylesText.h3.copyWith(color: AppColor.textDarkColor),
        headline4: StylesText.h4.copyWith(color: AppColor.textDarkColor),
        headline5: StylesText.h5.copyWith(color: AppColor.textDarkColor),
        headline6: StylesText.h6.copyWith(color: AppColor.textDarkColor),
        bodyText1: StylesText.b1.copyWith(color: AppColor.textDarkColor),
        bodyText2: StylesText.b2.copyWith(color: AppColor.textDarkColor),
        caption: StylesText.cap.copyWith(color: AppColor.textDarkColor),
      ));
}
