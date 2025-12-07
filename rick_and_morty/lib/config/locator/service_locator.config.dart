// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:rick_and_morty/config/locator/register_module.dart' as _i359;
import 'package:rick_and_morty/config/network/connectivity/connectivity_checker.dart'
    as _i332;
import 'package:rick_and_morty/config/network/dio_client/dio_client.dart'
    as _i484;
import 'package:rick_and_morty/core/network/network_info.dart' as _i763;
import 'package:rick_and_morty/data/local/shared_preferences/key_value_storage.dart'
    as _i533;
import 'package:rick_and_morty/data/local/shared_preferences/shared_preferences_storage.dart'
    as _i589;
import 'package:rick_and_morty/data/remote/characters_local_data_source.dart'
    as _i364;
import 'package:rick_and_morty/data/remote/characters_remote/characters_remote_data_source.dart'
    as _i838;
import 'package:rick_and_morty/data/remote/favorites_local_data_source.dart'
    as _i954;
import 'package:rick_and_morty/data/remote/theme_local_data_source.dart'
    as _i608;
import 'package:rick_and_morty/data/repositories/characters_repository.dart'
    as _i476;
import 'package:rick_and_morty/data/repositories/theme_repository.dart'
    as _i219;
import 'package:rick_and_morty/domain/domain.dart' as _i549;
import 'package:rick_and_morty/domain/repositories/characters_repository.dart'
    as _i640;
import 'package:rick_and_morty/domain/repositories/theme_repository.dart'
    as _i343;
import 'package:rick_and_morty/domain/usecases/get_characters_page.dart'
    as _i728;
import 'package:rick_and_morty/domain/usecases/get_favorite_characters.dart'
    as _i1057;
import 'package:rick_and_morty/domain/usecases/get_favorite_ids.dart' as _i446;
import 'package:rick_and_morty/domain/usecases/get_theme_mode.dart' as _i596;
import 'package:rick_and_morty/domain/usecases/remove_favorite_character.dart'
    as _i292;
import 'package:rick_and_morty/domain/usecases/set_theme_mode.dart' as _i537;
import 'package:rick_and_morty/domain/usecases/toggle_favorite_character.dart'
    as _i887;
import 'package:rick_and_morty/presentation/characters/bloc/characters_bloc.dart'
    as _i670;
import 'package:rick_and_morty/presentation/favorites/bloc/favorites_bloc.dart'
    as _i607;
import 'package:rick_and_morty/presentation/theme/bloc/theme_bloc.dart'
    as _i647;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    final dioClient = _$DioClient();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i332.ConnectivityChecker>(
      () => _i332.ConnectivityChecker(),
    );
    gh.lazySingleton<_i361.Dio>(() => dioClient.dio());
    gh.lazySingleton<_i763.NetworkInfo>(() => const _i763.NetworkInfoImpl());
    gh.lazySingleton<_i533.KeyValueStorage>(
      () => _i589.SharedPreferencesStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i838.CharactersRemoteDataSource>(
      () => _i838.CharactersRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i608.ThemeLocalDataSource>(
      () => _i608.ThemeLocalDataSourceImpl(gh<_i533.KeyValueStorage>()),
    );
    gh.lazySingleton<_i954.FavoritesLocalDataSource>(
      () => _i954.FavoritesLocalDataSourceImpl(gh<_i533.KeyValueStorage>()),
    );
    gh.lazySingleton<_i364.CharactersLocalDataSource>(
      () => _i364.CharactersLocalDataSourceImpl(gh<_i533.KeyValueStorage>()),
    );
    gh.lazySingleton<_i343.ThemeRepository>(
      () => _i219.ThemeRepositoryImpl(gh<_i608.ThemeLocalDataSource>()),
    );
    gh.lazySingleton<_i640.CharactersRepository>(
      () => _i476.CharactersRepositoryImpl(
        remoteDataSource: gh<_i838.CharactersRemoteDataSource>(),
        localDataSource: gh<_i364.CharactersLocalDataSource>(),
        favoritesLocalDataSource: gh<_i954.FavoritesLocalDataSource>(),
        networkInfo: gh<_i763.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i728.GetCharactersPage>(
      () => _i728.GetCharactersPage(gh<_i640.CharactersRepository>()),
    );
    gh.lazySingleton<_i1057.GetFavoriteCharacters>(
      () => _i1057.GetFavoriteCharacters(gh<_i640.CharactersRepository>()),
    );
    gh.lazySingleton<_i446.GetFavoriteIds>(
      () => _i446.GetFavoriteIds(gh<_i640.CharactersRepository>()),
    );
    gh.lazySingleton<_i292.RemoveFavoriteCharacter>(
      () => _i292.RemoveFavoriteCharacter(gh<_i640.CharactersRepository>()),
    );
    gh.lazySingleton<_i887.ToggleFavoriteCharacter>(
      () => _i887.ToggleFavoriteCharacter(gh<_i640.CharactersRepository>()),
    );
    gh.factory<_i670.CharactersBloc>(
      () => _i670.CharactersBloc(
        getCharactersPage: gh<_i549.GetCharactersPage>(),
        getFavoriteIds: gh<_i549.GetFavoriteIds>(),
        toggleFavoriteCharacter: gh<_i549.ToggleFavoriteCharacter>(),
      ),
    );
    gh.factory<_i607.FavoritesBloc>(
      () => _i607.FavoritesBloc(
        getFavoriteCharacters: gh<_i549.GetFavoriteCharacters>(),
        toggleFavoriteCharacter: gh<_i549.ToggleFavoriteCharacter>(),
        removeFavoriteCharacter: gh<_i549.RemoveFavoriteCharacter>(),
      ),
    );
    gh.lazySingleton<_i596.GetThemeMode>(
      () => _i596.GetThemeMode(gh<_i343.ThemeRepository>()),
    );
    gh.lazySingleton<_i537.SetThemeMode>(
      () => _i537.SetThemeMode(gh<_i343.ThemeRepository>()),
    );
    gh.factory<_i647.ThemeBloc>(
      () => _i647.ThemeBloc(
        getThemeMode: gh<_i596.GetThemeMode>(),
        setThemeMode: gh<_i537.SetThemeMode>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i359.RegisterModule {}

class _$DioClient extends _i484.DioClient {}
