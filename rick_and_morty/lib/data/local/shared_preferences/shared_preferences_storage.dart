import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'key_value_storage.dart';

@LazySingleton(as: KeyValueStorage)
class SharedPreferencesStorage implements KeyValueStorage {
  SharedPreferencesStorage(this.preferences);

  final SharedPreferences preferences;

  @override
  Future<String?> readString(String key) async {
    return preferences.getString(key);
  }

  @override
  Future<void> remove(String key) async {
    await preferences.remove(key);
  }

  @override
  Future<void> writeString({
    required String key,
    required String value,
  }) async {
    await preferences.setString(key, value);
  }
}

