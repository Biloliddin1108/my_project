import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/resource/app_styles.dart';

ThemeData lightMode = ThemeData(
  fontFamily: "MainFont",
  textTheme: TextTheme(bodyLarge: AppStyles.getTextStyle(color: AppColors.black)),
  brightness: Brightness.light,
  primaryColor:  AppColors.primary,
  scaffoldBackgroundColor: AppColors.backgroundColor,
);

ThemeData darkMode = ThemeData(
  fontFamily: "MainFont",
  textTheme: TextTheme(bodyLarge: AppStyles.getTextStyle(color: AppColors.white)),
  brightness: Brightness.dark,
  primaryColor:  AppColors.primary,
  scaffoldBackgroundColor: AppColors.backgroundColorDark,
);
