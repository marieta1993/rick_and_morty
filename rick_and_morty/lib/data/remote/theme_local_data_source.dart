import 'package:rick_and_morty/core/utils/storage_keys.dart';
import 'package:rick_and_morty/data/local/shared_preferences/key_value_storage.dart';

abstract class ThemeLocalDataSource {
  Future<String?> readTheme();

  Future<void> writeTheme(String value);
}

class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  ThemeLocalDataSourceImpl(this.storage);

  final KeyValueStorage storage;

  @override
  Future<String?> readTheme() {
    return storage.readString(StorageKeys.themeModeKey);
  }

  @override
  Future<void> writeTheme(String value) {
    return storage.writeString(key: StorageKeys.themeModeKey, value: value);
  }
}
