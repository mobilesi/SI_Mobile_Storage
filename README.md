# SI Mobile Storage
This plugin wrap `flutter_secure_storage` and `shared_preferences` to store key-value data.

1. SecureStorage will store data in secure storage:

- [Keychain](https://developer.apple.com/library/content/documentation/Security/Conceptual/keychainServConcepts/01introduction/introduction.html#//apple_ref/doc/uid/TP30000897-CH203-TP1) is used for iOS
- AES encryption is used for Android. AES secret key is encrypted with RSA and RSA key is stored in [KeyStore](https://developer.android.com/training/articles/keystore.html)

2. NormalStorage will use for simple data (NSUserDefaults on iOS and macOS, SharedPreferences on Android).


## Usage
1. Init storage
```dart
import 'package:si_storage/si_storage.dart';

await SIStorage.init();
```
2. Use `SecureStorage` with static function, support only `string`
```dart
import 'package:si_storage/secure_storage.dart';

// set value
await SecureStorage.write("secure", "123");

// get value
String? value = await SecureStorage.read("secure");

// delete by key
await SecureStorage.delete("secure");

// delete by list key
await SecureStorage.deleteByListKey(["secure", "otherKey"]);

// delete all
await SecureStorage.deleteAll();
```
3. Use `NormalStorage` with static function, support `bool, int, double, string, string list`
```dart
import 'package:si_storage/normal_storage.dart';

// set value
await NormalStorage.setBool("hello", true);

// get value
bool? value = NormalStorage.getBool("normal"); // no need async/await

// check contain key
bool? hasKey = NormalStorage.containsKey("normal");

// delete by key
await NormalStorage.delete("normal");

// delete by list key
await NormalStorage.deleteByListKey(["normal", "otherKey"]);

// delete all
await NormalStorage.deleteAll();

```
