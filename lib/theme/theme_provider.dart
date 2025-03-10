import 'package:flutter/material.dart';

import '../shared_preference/shared_preference.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  bool _isDarkMode = false;

  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode => _isDarkMode;

  ThemeProvider() {
    loadTheme();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    notifyListeners();
    SharedPreference.setBool('isDarkMode', _themeMode == ThemeMode.dark);
  }

  Future<void> loadTheme() async {
    _isDarkMode = SharedPreference.getBool('isDarkMode');
    _themeMode = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
