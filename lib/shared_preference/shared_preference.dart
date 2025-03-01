import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static SharedPreferences? _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> setBool(String key, bool value) async {
    await _preferences?.setBool(key, value);
  }

  static bool getBool(String key) {
    return _preferences?.getBool(key) ?? false;
  }

  static Future<void> setString(String key, String value) async {
    await _preferences?.setString(key, value);
  }

  static String getString(String key) {
    return _preferences?.getString(key) ?? "-1";
  }

  static Future<void> setInt(String key, int value) async {
    await _preferences?.setInt(key, value);
  }

  static int getInt(String key) {
    return _preferences?.getInt(key) ?? -1;
  }

  static Future<void> setDouble(String key, double value) async {
    await _preferences?.setDouble(key, value);
  }

  static double getDouble(String key) {
    return _preferences?.getDouble(key) ?? -1.0;
  }

  static Future<void> remove(String key) async {
    await _preferences?.remove(key);
  }

  static Future<void> clear() async {
    await _preferences?.clear();
  }
}
