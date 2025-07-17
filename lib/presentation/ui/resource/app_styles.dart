import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class AppStyles {
  AppStyles._();

  static TextStyle getButtonStyle() => const TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "MainFont",
  );

  static TextStyle getTextStyle({
    Color color = AppColors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    double? letterSpacing,
    Color? decorationColor,
    TextDecoration? textDecoration,
    double? height,
  }) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: "MainFont",
          decoration: textDecoration,
          letterSpacing: letterSpacing,
          height: height,
          decorationColor: decorationColor
      );
}