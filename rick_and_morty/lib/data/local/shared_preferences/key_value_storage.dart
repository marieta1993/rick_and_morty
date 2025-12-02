abstract class KeyValueStorage {
  Future<void> writeString({
    required String key,
    required String value,
  });

  Future<String?> readString(String key);

  Future<void> remove(String key);
}

