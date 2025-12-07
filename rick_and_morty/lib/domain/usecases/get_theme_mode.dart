import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/enums/app_theme_mode.dart';
import 'package:rick_and_morty/domain/repositories/theme_repository.dart';

@lazySingleton
class GetThemeMode implements UseCase<AppThemeMode, NoParams> {
  GetThemeMode(this.repository);

  final ThemeRepository repository;

  @override
  Future<AppResult<AppThemeMode>> call(NoParams params) {
    return repository.loadTheme();
  }
}



