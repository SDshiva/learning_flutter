import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/language_provider.dart';

class LocalizationHelper {
  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'hello': 'Hello',
      'welcome': 'Welcome',
      'login': 'Login',
      'register': 'Register',
      'home': 'Home',
    },
    'ar': {
      'hello': 'مرحبا',
      'welcome': 'مرحبا بكم',
      'login': 'تسجيل الدخول',
      'register': 'تسجيل',
      'home': 'الصفحة الرئيسية',
    },
    'bn': {
      'hello': 'হ্যালো',
      'welcome': 'স্বাগতম',
      'login': 'লগইন',
      'register': 'নিবন্ধন',
      'home': 'হোম',
    },
    'hi': {
      'hello': 'नमस्ते',
      'welcome': 'स्वागत हे',
      'login': 'लॉग इन',
      'register': 'रजिस्टर',
      'home': 'होम',
    },
    'ur': {
      'hello': 'ہیلو',
      'welcome': 'سے خوش آمدید',
      'login': 'لاگ ان',
      'register': 'رجسٹر',
      'home': 'ہوم',
    },
  };

  static String translate(BuildContext context, String key) {
    final locale = Provider.of<LanguageProvider>(context, listen: false).locale;

    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}
