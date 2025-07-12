import 'dart:ui';

import 'app_colors.dart';

abstract class AppStyles {
  AppStyles._();

  static TextStyle gettextStyle({
    Color color = AppColors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w400,
    double? letterSpacing,
    Color? decorationColor,
    TextDecoration? textDecoration,
    double? height,
    String? fontFamily,
    TextDecoration? decoration,
  }) => gettextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: "MainFont",
    decoration: textDecoration,
    letterSpacing: letterSpacing,
    height: height,
    decorationColor: decorationColor,
  );
}
