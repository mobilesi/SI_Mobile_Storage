# SI Storage

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
