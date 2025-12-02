import 'dart:convert';

import 'package:rick_and_morty/core/error/exceptions.dart';
import 'package:rick_and_morty/core/utils/storage_keys.dart';
import 'package:rick_and_morty/data/local/shared_preferences/key_value_storage.dart';
import 'package:rick_and_morty/domain/models/paginated_characters/paginated_characters_model.dart';

abstract class CharactersLocalDataSource {
  Future<void> cacheCharactersPage({
    required int page,
    required PaginatedCharactersModel characters,
  });

  Future<PaginatedCharactersModel?> getCachedCharactersPage(int page);
}

class CharactersLocalDataSourceImpl implements CharactersLocalDataSource {
  CharactersLocalDataSourceImpl(this.storage);

  final KeyValueStorage storage;

  @override
  Future<void> cacheCharactersPage({
    required int page,
    required PaginatedCharactersModel characters,
  }) async {
    final key = '${StorageKeys.charactersPagePrefix}$page';
    final value = jsonEncode(characters.toJson());
    await storage.writeString(key: key, value: value);
  }

  @override
  Future<PaginatedCharactersModel?> getCachedCharactersPage(int page) async {
    final key = '${StorageKeys.charactersPagePrefix}$page';
    final cachedJson = await storage.readString(key);
    if (cachedJson == null) {
      return null;
    }
    try {
      final map = jsonDecode(cachedJson) as Map<String, dynamic>;
      return PaginatedCharactersModel.fromJson(map);
    } on FormatException catch (error) {
      throw CacheException(error.message);
    }
  }
}
