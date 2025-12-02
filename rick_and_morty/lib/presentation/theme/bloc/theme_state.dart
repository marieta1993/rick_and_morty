part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;

  const factory ThemeState.loading() = _Loading;

  const factory ThemeState.loaded({
    required AppThemeMode mode,
    @Default(false) bool isUpdating,
  }) = _Loaded;

  const factory ThemeState.error({
    required AppError error,
  }) = _Error;
}

