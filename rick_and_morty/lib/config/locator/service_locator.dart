import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/config/network/connectivity/connectivity_checker.dart';
import 'package:rick_and_morty/core/network/api_client.dart';
import 'package:rick_and_morty/core/network/network_info.dart';
import 'package:rick_and_morty/data/local/shared_preferences/key_value_storage.dart';
import 'package:rick_and_morty/data/local/shared_preferences/shared_preferences_storage.dart';
import 'package:rick_and_morty/data/remote/characters_local_data_source.dart';
import 'package:rick_and_morty/data/remote/characters_remote_data_source.dart';
import 'package:rick_and_morty/data/remote/favorites_local_data_source.dart';
import 'package:rick_and_morty/data/remote/theme_local_data_source.dart';
import 'package:rick_and_morty/data/repositories/characters_repository.dart';
import 'package:rick_and_morty/data/repositories/theme_repository.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';
import 'package:rick_and_morty/domain/usecases/get_characters_page.dart';
import 'package:rick_and_morty/domain/usecases/get_favorite_characters.dart';
import 'package:rick_and_morty/domain/usecases/get_favorite_ids.dart';
import 'package:rick_and_morty/domain/usecases/remove_favorite_character.dart';
import 'package:rick_and_morty/domain/usecases/set_theme_mode.dart';
import 'package:rick_and_morty/domain/usecases/toggle_favorite_character.dart';
import 'package:rick_and_morty/domain/usecases/get_theme_mode.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_bloc.dart';
import 'package:rick_and_morty/presentation/favorites/bloc/favorites_bloc.dart';
import 'package:rick_and_morty/presentation/theme/bloc/theme_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt
    ..registerLazySingleton<SharedPreferences>(() => sharedPreferences)
    ..registerLazySingleton<KeyValueStorage>(
      () => SharedPreferencesStorage(sharedPreferences),
    )
    ..registerLazySingleton<ConnectivityChecker>(() => ConnectivityChecker())
    ..registerLazySingleton<Dio>(() => createDioClient())
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl())
    ..registerLazySingleton<CharactersRemoteDataSource>(
      () => CharactersRemoteDataSourceImpl(dio: getIt<Dio>()),
    )
    ..registerLazySingleton<CharactersLocalDataSource>(
      () => CharactersLocalDataSourceImpl(getIt<KeyValueStorage>()),
    )
    ..registerLazySingleton<FavoritesLocalDataSource>(
      () => FavoritesLocalDataSourceImpl(getIt<KeyValueStorage>()),
    )
    ..registerLazySingleton<ThemeLocalDataSource>(
      () => ThemeLocalDataSourceImpl(getIt<KeyValueStorage>()),
    )
    ..registerLazySingleton<CharactersRepository>(
      () => CharactersRepositoryImpl(
        remoteDataSource: getIt(),
        localDataSource: getIt(),
        favoritesLocalDataSource: getIt(),
        networkInfo: getIt(),
      ),
    )
    ..registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImpl(getIt()),
    )
    ..registerLazySingleton(() => GetCharactersPage(getIt()))
    ..registerLazySingleton(() => GetFavoriteCharacters(getIt()))
    ..registerLazySingleton(() => GetFavoriteIds(getIt()))
    ..registerLazySingleton(() => ToggleFavoriteCharacter(getIt()))
    ..registerLazySingleton(() => RemoveFavoriteCharacter(getIt()))
    ..registerLazySingleton(() => GetThemeMode(getIt()))
    ..registerLazySingleton(() => SetThemeMode(getIt()))
    ..registerFactory(
      () => CharactersBloc(
        getCharactersPage: getIt(),
        getFavoriteIds: getIt(),
        toggleFavoriteCharacter: getIt(),
      ),
    )
    ..registerFactory(
      () => FavoritesBloc(
        getFavoriteCharacters: getIt(),
        toggleFavoriteCharacter: getIt(),
        removeFavoriteCharacter: getIt(),
      ),
    )
    ..registerFactory(
      () => ThemeBloc(
        getThemeMode: getIt(),
        setThemeMode: getIt(),
      ),
    );
}
