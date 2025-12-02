import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/entities/app_theme_mode.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';

class GetThemeMode implements UseCase<AppThemeMode, NoParams> {
  GetThemeMode(this.repository);

  final ThemeRepository repository;

  @override
  Future<AppResult<AppThemeMode>> call(NoParams params) {
    return repository.loadTheme();
  }
}

