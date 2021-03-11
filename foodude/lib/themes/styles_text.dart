import 'package:flutter/material.dart';

class FontFamily {
  static const String fontFlatIcon = 'assets/fonts/Flaticon.ttf';
  static const String fontSfProBold = 'assets/fonts/SF-Pro-Display-Bold.ttf';
  static const String fontSfProRegular =
      'assets/fonts/SF-Pro-Display-Regular.ttf';
  static const String fontSfProSemiBold =
      'assets/fonts/SF-Pro-Display-SemiBold.ttf';
}

class StylesText {
  static const TextStyle h2 =
      TextStyle(fontSize: 40, fontFamily: FontFamily.fontSfProSemiBold);
  static const TextStyle h3 =
      TextStyle(fontSize: 27, fontFamily: FontFamily.fontSfProBold);
  static const TextStyle h4 =
      TextStyle(fontSize: 20, fontFamily: FontFamily.fontSfProBold);
  static const TextStyle h5 =
      TextStyle(fontSize: 20, fontFamily: FontFamily.fontSfProSemiBold);
  static const TextStyle h6 =
      TextStyle(fontSize: 16, fontFamily: FontFamily.fontSfProBold);
  static const TextStyle b1 =
      TextStyle(fontSize: 16, fontFamily: FontFamily.fontSfProRegular);
  static const TextStyle b2 =
      TextStyle(fontSize: 15, fontFamily: FontFamily.fontSfProSemiBold);
  static const TextStyle cap = TextStyle(
    fontSize: 12, fontFamily: FontFamily.fontSfProSemiBold
  );
}
