import 'package:flutter/material.dart';

import '../shared_preference/shared_preference.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = Locale('bn', '');

  Locale get locale => _locale;

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    notifyListeners();
    SharedPreference.setString('lang_code', locale.languageCode);
  }

  Future<void> loadSavedLang() async {
    String? langCode = SharedPreference.getString('lang_code');

    if (langCode != '-1') {
      _locale = Locale(langCode);
      notifyListeners();
    }
  }
}
