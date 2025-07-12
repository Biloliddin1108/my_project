import 'package:flutter/material.dart';
import '../../resource/them_preferences.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData themeData = ThemeData();
  ThemPreferences preferences = ThemPreferences();
  bool isDarkMode = false;

  ThemeProvider(){
    getPreferences();
  }

  void getPreferences() async {
    themeData = await preferences.getTheme() ?? false ? ThemeData.dark() : ThemeData.light();
    isDarkMode = themeData.brightness == Brightness.dark;
    notifyListeners();
  }

  void toggleTheme(){
    if (isDarkMode){
      themeData = ThemeData.light();
    } else {
      themeData = ThemeData.dark();
    }
    isDarkMode = !isDarkMode;
    preferences.setTheme(isDarkMode);
    notifyListeners();
  }
  bool getValue(){
    return isDarkMode;
  }
}