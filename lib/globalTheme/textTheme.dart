import 'package:flutter/material.dart';
import 'package:lend_me/globalTheme/colorTheme.dart';

class TextThemeStyle {
  static TextStyle headerLarge = TextStyle(
    color: ColorTheme.black,
    fontSize: 24,
    fontFamily: 'Avenir Bold',
    fontWeight: FontWeight.w900,
  );

  static TextStyle headerSmall = TextStyle(
    color: ColorTheme.black,
    fontSize: 18,
    fontFamily: 'Avenir Bold',
    fontWeight: FontWeight.w900,
  );

  static TextStyle subHeaderBlack = TextStyle(
    color: ColorTheme.black,
    fontSize: 14,
    fontFamily: 'Avenir Regular',
    fontWeight: FontWeight.w800,
  );

  static TextStyle subHeaderGrey = TextStyle(
    color: ColorTheme.grey,
    fontSize: 14,
    fontFamily: 'Avenir Regular',
    fontWeight: FontWeight.w400,
  );

  static TextStyle captionText = TextStyle(
    color: ColorTheme.black,
    fontSize: 14,
    fontFamily: 'Avenir Regular',
    fontWeight: FontWeight.w400,
  );
}
