import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/app_error.dart';
import 'package:rick_and_morty/core/error/exceptions.dart';
import 'package:rick_and_morty/core/network/network_info.dart';
import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/data/remote/characters_local_data_source.dart';
import 'package:rick_and_morty/data/remote/characters_remote_data_source.dart';
import 'package:rick_and_morty/data/remote/favorites_local_data_source.dart';
import 'package:rick_and_morty/domain/entities/character.dart';
import 'package:rick_and_morty/domain/entities/paginated_characters.dart';
import 'package:rick_and_morty/domain/enums/favorite_sort.dart';
import 'package:rick_and_morty/domain/models/character/character_model.dart';
import 'package:rick_and_morty/domain/models/paginated_characters/paginated_characters_model.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  CharactersRepositoryImpl({
    required CharactersRemoteDataSource remoteDataSource,
    required CharactersLocalDataSource localDataSource,
    required FavoritesLocalDataSource favoritesLocalDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _favoritesLocalDataSource = favoritesLocalDataSource,
        _networkInfo = networkInfo;

  final CharactersRemoteDataSource _remoteDataSource;
  final CharactersLocalDataSource _localDataSource;
  final FavoritesLocalDataSource _favoritesLocalDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<AppResult<PaginatedCharacters>> getCharactersPage(int page) async {
    try {
      if (await _networkInfo.isConnected) {
        final remoteModel = await _remoteDataSource.getCharactersPage(page);
        await _localDataSource.cacheCharactersPage(
          page: page,
          characters: remoteModel,
        );
        return AppResult.success(remoteModel.toDomain());
      }

      final cachedModel = await _localDataSource.getCachedCharactersPage(page);
      if (cachedModel == null) {
        return AppResult.failure(
          AppError.cache('Нет кешированных данных для оффлайн режима'),
        );
      }
      return AppResult.success(cachedModel.toDomain());
    } on ServerException catch (error) {
      final fallback = await _localDataSource.getCachedCharactersPage(page);
      if (fallback != null) {
        return AppResult.success(fallback.toDomain());
      }
      return AppResult.failure(
        AppError.server(error.message ?? 'Ошибка сервера'),
      );
    } on CacheException catch (error) {
      return AppResult.failure(
        AppError.cache(error.message ?? 'Ошибка кеширования'),
      );
    } on DioException catch (error) {
      final fallback = await _localDataSource.getCachedCharactersPage(page);
      if (fallback != null) {
        return AppResult.success(fallback.toDomain());
      }
      return AppResult.failure(
        AppError.network(error.message ?? 'Ошибка сети'),
      );
    } on Exception {
      return AppResult.failure(AppError.unknown());
    }
  }

  @override
  Future<AppResult<List<Character>>> getFavoriteCharacters(
    FavoriteSort sort,
  ) async {
    try {
      final favorites = await _favoritesLocalDataSource.fetchFavorites();
      final characters = favorites.map((model) => model.toDomain()).toList();
      characters.sort((a, b) {
        switch (sort) {
          case FavoriteSort.name:
            return a.name.compareTo(b.name);
          case FavoriteSort.status:
            return a.status.compareTo(b.status);
        }
      });
      return AppResult.success(characters);
    } on CacheException catch (error) {
      return AppResult.failure(
        AppError.cache(error.message ?? 'Ошибка чтения избранного'),
      );
    } on FormatException catch (error) {
      return AppResult.failure(AppError.cache(error.message));
    } on Exception {
      return AppResult.failure(AppError.unknown());
    }
  }

  @override
  Future<AppResult<bool>> toggleFavorite(Character character) async {
    try {
      final favorites = await _favoritesLocalDataSource.fetchFavorites();
      final index = favorites.indexWhere((item) => item.id == character.id);
      if (index >= 0) {
        favorites.removeAt(index);
        await _favoritesLocalDataSource.saveFavorites(favorites);
        return const AppResult.success(false);
      }

      final model = CharacterModel.fromDomain(character);
      favorites.add(model);
      await _favoritesLocalDataSource.saveFavorites(favorites);
      return const AppResult.success(true);
    } on CacheException catch (error) {
      return AppResult.failure(
        AppError.cache(error.message ?? 'Ошибка сохранения избранного'),
      );
    } on Exception {
      return AppResult.failure(AppError.unknown());
    }
  }

  @override
  Future<AppResult<bool>> removeFavorite(int id) async {
    try {
      final favorites = await _favoritesLocalDataSource.fetchFavorites();
      final newFavorites =
          favorites.where((character) => character.id != id).toList();
      await _favoritesLocalDataSource.saveFavorites(newFavorites);
      return AppResult.success(newFavorites.length != favorites.length);
    } on CacheException catch (error) {
      return AppResult.failure(
        AppError.cache(error.message ?? 'Ошибка удаления избранного'),
      );
    } on Exception {
      return AppResult.failure(AppError.unknown());
    }
  }

  @override
  Future<AppResult<bool>> isFavorite(int id) async {
    try {
      final favorites = await _favoritesLocalDataSource.fetchFavorites();
      return AppResult.success(
        favorites.any((character) => character.id == id),
      );
    } on CacheException catch (error) {
      return AppResult.failure(
        AppError.cache(error.message ?? 'Ошибка чтения избранного'),
      );
    } on Exception {
      return AppResult.failure(AppError.unknown());
    }
  }

  @override
  Future<AppResult<Set<int>>> getFavoriteIds() async {
    try {
      final favorites = await _favoritesLocalDataSource.fetchFavorites();
      return AppResult.success(
        favorites.map((character) => character.id).toSet(),
      );
    } on CacheException catch (error) {
      return AppResult.failure(
        AppError.cache(error.message ?? 'Ошибка чтения избранного'),
      );
    } on Exception {
      return AppResult.failure(AppError.unknown());
    }
  }
}
