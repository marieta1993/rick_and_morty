import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/domain/entities/app_theme_mode.dart';

abstract class ThemeRepository {
  Future<AppResult<AppThemeMode>> loadTheme();

  Future<AppResult<AppThemeMode>> updateTheme(AppThemeMode mode);
}

