import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/entities/app_theme_mode.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';

class SetThemeMode implements UseCase<AppThemeMode, SetThemeModeParams> {
  SetThemeMode(this.repository);

  final ThemeRepository repository;

  @override
  Future<AppResult<AppThemeMode>> call(SetThemeModeParams params) {
    return repository.updateTheme(params.mode);
  }
}

class SetThemeModeParams {
  const SetThemeModeParams(this.mode);

  final AppThemeMode mode;
}

