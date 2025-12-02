import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/app_error.dart';
import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/data/remote/theme_local_data_source.dart';
import 'package:rick_and_morty/domain/entities/app_theme_mode.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';

@LazySingleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  ThemeRepositoryImpl(this._localDataSource);

  final ThemeLocalDataSource _localDataSource;

  @override
  Future<AppResult<AppThemeMode>> loadTheme() async {
    try {
      final stored = await _localDataSource.readTheme();
      if (stored == null) {
        return const AppResult.success(AppThemeMode.light);
      }
      return AppResult.success(AppThemeMode.fromString(stored));
    } on Exception {
      return AppResult.failure(AppError.cache('Не удалось загрузить тему'));
    }
  }

  @override
  Future<AppResult<AppThemeMode>> updateTheme(AppThemeMode mode) async {
    try {
      await _localDataSource.writeTheme(mode.storageValue);
      return AppResult.success(mode);
    } on Exception {
      return AppResult.failure(AppError.cache('Не удалось сохранить тему'));
    }
  }
}
