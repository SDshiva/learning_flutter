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
      'username': 'Username',
      'password': 'Password',
      'name': 'Name',
      'email': 'Email',
      'phone': 'Phone',
      'address': 'Address',
      'city': 'City',
      'country': 'Country',
      'state': 'State',
      'zip': 'Zip',
      'dob': 'Date of Birth',
      'gender': 'Gender',
      'male': 'Male',
      'female': 'Female',
      'other': 'Other',
      'submit': 'Submit',
      'cancel': 'Cancel',
      'language': 'Language',
      'create_account': 'Create an Account',
      'new_here': 'New Here?',
      'or': 'Or',
      'forgot_password': 'Forgot Password?',
      'hi_there': 'Hi There!',
      'requried_details': 'Please enter required details',
      'google': 'Google',
      'facebook': 'Facebook',
      'apple': 'Apple',
      'privacy_policy': 'Privacy Policy',
      'terms_of_service': 'Terms of Service',
      'create_account_msg':
          'To create an account, provide details and verify email and set a password.',
      'already_have_account': 'Already have an account?',
      'continue': 'Continue',
      'testing_app': 'Testing App',
      'ongo_msg': 'Fastest for Global Security',
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
      'username': 'ব্যবহারকারীর নাম',
      'password': 'পাসওয়ার্ড',
      'name': 'নাম',
      'email': 'ইমেইল',
      'phone': 'ফোন',
      'address': 'ঠিকানা',
      'city': 'শহর',
      'country': 'দেশ',
      'state': 'রাজ্য',
      'zip': 'জিপ',
      'dob': 'জন্ম তারিখ',
      'gender': 'লিঙ্গ',
      'male': 'পুরুষ',
      'female': 'মহিলা',
      'other': 'অন্যান্য',
      'submit': 'জমা দিন',
      'cancel': 'বাতিল',
      'language': 'ভাষা',
      'create_account': 'একাউন্ট তৈরি করুন',
      'new_here': 'নতুন কি?',
      'or': 'অথবা',
      'forgot_password': 'পাসওয়ার্ড ভুলে গেছেন?',
      'hi_there': 'হ্যালো!',
      'requried_details': 'অনুগ্রহ করে প্রয়োজনীয় তথ্য লিখুন',
      'google': 'গুগল',
      'facebook': 'ফেসবুক',
      'apple': 'আপেল',
      'privacy_policy': 'গোপনীয়তা নীতি',
      'terms_of_service': 'সেবার শর্তাবলী',
      'create_account_msg':
          'একটি অ্যাকাউন্ট তৈরি করতে, বিশদ প্রদান করুন এবং ইমেল যাচাই করুন এবং একটি পাসওয়ার্ড সেট করুন।',
      'already_have_account': 'ইতিমধ্যে একটি অ্যাকাউন্ট আছে?',
      'continue': 'চালু করুন',
      'testing_app': 'টেস্টিং অ্যাপ',
      'ongo_msg': 'বিশ্বব্যাপী নিরাপত্তার জন্য দ্রুততম',
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
