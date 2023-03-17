import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:si_storage/normal_storage.dart';

class SecureStorage {
  static const FlutterSecureStorage _flutterSecureStorage = FlutterSecureStorage();

  static init({bool clearSecureStorageInFirstLaunch = true}) async {
    await NormalStorage.init();
    if (clearSecureStorageInFirstLaunch) {
      // check first launch and remove all value
      if ((await NormalStorage.isFirstLaunch())) {
        _flutterSecureStorage.deleteAll();
      }
    }
  }

  static write(String key, String? value) async {
    await _flutterSecureStorage.write(key: key, value: value);
  }

  static Future<String?> read(String key) async {
    return await _flutterSecureStorage.read(key: key);
  }

  static Future<Map<String, String>> readAll() async {
    return await _flutterSecureStorage.readAll();
  }

  static delete(String key) async {
    await _flutterSecureStorage.delete(key: key);
  }

  static deleteByListKey(List<String> keys) async {
    for (var element in keys) {
      await delete(element);
    }
  }

  static deleteAll() async {
    await _flutterSecureStorage.deleteAll();
  }
}
