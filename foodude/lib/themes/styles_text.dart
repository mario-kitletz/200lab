import 'package:app_template/themes/app_colors.dart';
import 'package:flutter/material.dart';

class FontFamily {
  static const String fontFlatIcon = 'assets/fonts/Flaticon.ttf';
  static const String fontAvenirNextLTProRegular =
      'assets/fonts/AvenirNextLTPro-Regular.otf';
  static const String fontAvenirNextLTProDemi =
      'assets/fonts/AvenirNextLTPro-Demi.otf';
  static const String fontAvenirNextLTProBold =
      'assets/fonts/AvenirNextLTPro-Bold.otf';
}

class StylesText {
  static const TextStyle h2 = TextStyle(
      fontSize: 40,
      fontFamily: FontFamily.fontAvenirNextLTProDemi,
      color: AppColor.textLightColor);
  static const TextStyle h3 = TextStyle(
      fontSize: 27,
      fontFamily: FontFamily.fontAvenirNextLTProBold,
      color: AppColor.textLightColor);
  static const TextStyle h4 = TextStyle(
      fontSize: 20,
      fontFamily: FontFamily.fontAvenirNextLTProBold,
      color: AppColor.textLightColor);
  static const TextStyle h5 = TextStyle(
      fontSize: 20,
      fontFamily: FontFamily.fontAvenirNextLTProDemi,
      color: AppColor.textLightColor);
  static const TextStyle h6 = TextStyle(
      fontSize: 16,
      fontFamily: FontFamily.fontAvenirNextLTProBold,
      color: AppColor.textLightColor);
  static const TextStyle b1 = TextStyle(
      fontSize: 16,
      fontFamily: FontFamily.fontAvenirNextLTProRegular,
      color: AppColor.textLightColor);
  static const TextStyle b2 = TextStyle(
      fontSize: 15,
      fontFamily: FontFamily.fontAvenirNextLTProDemi,
      color: AppColor.textLightColor);
  static const TextStyle cap = TextStyle(
      fontSize: 12,
      fontFamily: FontFamily.fontAvenirNextLTProDemi,
      color: AppColor.textLightColor);
}
