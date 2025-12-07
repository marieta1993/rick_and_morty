import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/app_error.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/enums/app_theme_mode.dart';
import 'package:rick_and_morty/domain/usecases/get_theme_mode.dart';
import 'package:rick_and_morty/domain/usecases/set_theme_mode.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc({
    required GetThemeMode getThemeMode,
    required SetThemeMode setThemeMode,
  }) : _getThemeMode = getThemeMode,
       _setThemeMode = setThemeMode,
       super(const ThemeState.initial()) {
    on<_Started>(_onStarted);
    on<_Toggled>(_onToggled);
    on<_Changed>(_onChanged);
  }

  final GetThemeMode _getThemeMode;
  final SetThemeMode _setThemeMode;

  AppThemeMode _currentMode = AppThemeMode.light;

  Future<void> _onStarted(_Started event, Emitter<ThemeState> emit) async {
    emit(const ThemeState.loading());
    final result = await _getThemeMode(const NoParams());
    result.when(
      failure: (error) => emit(ThemeState.error(error: error)),
      success: (mode) {
        _currentMode = mode;
        emit(ThemeState.loaded(mode: mode));
      },
    );
  }

  Future<void> _onToggled(_Toggled event, Emitter<ThemeState> emit) async {
    final newMode = _currentMode == AppThemeMode.light
        ? AppThemeMode.dark
        : AppThemeMode.light;
    await _persistAndEmit(newMode, emit);
  }

  Future<void> _onChanged(_Changed event, Emitter<ThemeState> emit) async {
    await _persistAndEmit(event.mode, emit);
  }

  Future<void> _persistAndEmit(
    AppThemeMode mode,
    Emitter<ThemeState> emit,
  ) async {
    emit(ThemeState.loaded(mode: mode, isUpdating: true));
    final result = await _setThemeMode(SetThemeModeParams(mode));
    result.when(
      failure: (error) => emit(ThemeState.error(error: error)),
      success: (savedMode) {
        _currentMode = savedMode;
        emit(ThemeState.loaded(mode: savedMode));
      },
    );
  }
}
