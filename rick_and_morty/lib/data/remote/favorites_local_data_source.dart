import 'dart:convert';

import 'package:rick_and_morty/core/utils/storage_keys.dart';
import 'package:rick_and_morty/data/local/shared_preferences/key_value_storage.dart';
import 'package:rick_and_morty/domain/models/character/character_model.dart';

abstract class FavoritesLocalDataSource {
  Future<List<CharacterModel>> fetchFavorites();

  Future<void> saveFavorites(List<CharacterModel> favorites);
}

class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  FavoritesLocalDataSourceImpl(this.storage);

  final KeyValueStorage storage;

  @override
  Future<List<CharacterModel>> fetchFavorites() async {
    final raw = await storage.readString(StorageKeys.favoritesKey);
    if (raw == null) {
      return <CharacterModel>[];
    }
    final decoded = jsonDecode(raw) as List<dynamic>;
    return decoded
        .map((item) => CharacterModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> saveFavorites(List<CharacterModel> favorites) async {
    final encoded = jsonEncode(
      favorites.map((character) => character.toJson()).toList(),
    );
    await storage.writeString(key: StorageKeys.favoritesKey, value: encoded);
  }
}
