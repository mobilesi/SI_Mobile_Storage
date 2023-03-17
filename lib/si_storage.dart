library si_storage;

import 'package:si_storage/secure_storage.dart';

/// SIStorage.
class SIStorage {
  static init({bool clearSecureStorageInFirstLaunch = true}) async {
    await SecureStorage.init(clearSecureStorageInFirstLaunch: clearSecureStorageInFirstLaunch);
  }
}
