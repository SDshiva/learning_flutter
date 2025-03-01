import 'package:flutter/material.dart';

import '../shared_preference/shared_preference.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  ThemeProvider() {
    loadTheme();
  }

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    notifyListeners();
    SharedPreference.setBool('isDarkMode', _themeMode == ThemeMode.dark);
  }

  Future<void> loadTheme() async {
    bool isDarkMode = SharedPreference.getBool('isDarkMode');
    _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
