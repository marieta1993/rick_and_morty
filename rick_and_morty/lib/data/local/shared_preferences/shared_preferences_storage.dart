import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'key_value_storage.dart';

@LazySingleton(as: KeyValueStorage)
class SharedPreferencesStorage implements KeyValueStorage {
  SharedPreferencesStorage(this.preferences);

  final SharedPreferences preferences;

  @override
  Future<String?> readString(String key) async {
    // Используем generic get, чтобы избежать краша,
    // когда под тем же ключом ранее хранился другой тип
    // (например, List<String>), а теперь ожидается String.
    final Object? raw = preferences.get(key);

    if (raw == null || raw is String) {
      return raw as String?;
    }

    // Если тип не String, значит формат поменялся.
    // Очищаем ключ, чтобы не падать, и просто считаем,
    // что значения нет (миграция "в ноль").
    await preferences.remove(key);
    return null;
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

