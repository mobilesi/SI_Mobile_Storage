import 'package:shared_preferences/shared_preferences.dart';

class NormalStorage {
  static SharedPreferences? _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> isFirstLaunch() async {
    bool isFirstLaunch =  _sharedPreferences?.getBool("key_first_launch") ?? true;
    if (isFirstLaunch) {
      await _sharedPreferences?.setBool("key_first_launch", false);
    }
    return isFirstLaunch;
  }

  static Future<bool?> setBool(String key, bool value) async {
    return await _sharedPreferences?.setBool(key, value);
  }

  static bool? getBool(String key) {
    return _sharedPreferences?.getBool(key);
  }

  static Future<bool?> setInt(String key, int value) async {
    return await _sharedPreferences?.setInt(key, value);
  }

  static int? getInt(String key) {
    return _sharedPreferences?.getInt(key);
  }

  static Future<bool?> setString(String key, String value) async {
    return await _sharedPreferences?.setString(key, value);
  }

  static String? getString(String key) {
    return _sharedPreferences?.getString(key);
  }

  static Future<bool?> setDouble(String key, double value) async {
    return await _sharedPreferences?.setDouble(key, value);
  }

  static double? getDouble(String key) {
    return _sharedPreferences?.getDouble(key);
  }

  static Future<bool?> setStringList(String key, List<String> value) async {
    return await _sharedPreferences?.setStringList(key, value);
  }

  static List<String>? getStringList(String key) {
    return _sharedPreferences?.getStringList(key);
  }

  static bool? containsKey(String key) {
    return _sharedPreferences?.containsKey(key);
  }

  static Future<bool?> delete(String key) async{
    return await _sharedPreferences?.remove(key);
  }

  static deleteByListKey(List<String> keys) async{
    for (var element in keys) {
      await delete(element);
    }
  }

  static Future<bool?> deleteAll() async{
    return await _sharedPreferences?.clear();
  }
}