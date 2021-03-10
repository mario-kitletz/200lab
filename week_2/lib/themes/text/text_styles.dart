import 'package:flutter/material.dart';
import 'package:week_2/themes/res/dimensions.dart';
import 'package:week_2/themes/fonts/font_family.dart';

class TextStyles {
  static const h1 = TextStyle(
    color: Colors.white,
    fontSize: Dimensions.font_sp32,
    fontFamily: FontFamily.fAvenirNextLTPro,
  );

  static const h2 = TextStyle(
    color: Colors.yellow,
    fontSize: Dimensions.font_sp20,
    fontFamily: FontFamily.fAvenirNextLTPro,
  );

  static const h3 = TextStyle(
    color: Colors.blue,
    fontSize: Dimensions.font_sp16,
    fontFamily: FontFamily.fAvenirNextLTPro,
  );

  static const sub1 = TextStyle(
    color: Colors.pink,
    fontSize: Dimensions.font_sp12,
    fontFamily: FontFamily.fAvenirNextLTPro,
  );
}
