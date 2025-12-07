import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/core/error/app_error.dart';
import 'package:rick_and_morty/domain/domain.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc({
    required GetFavoriteCharacters getFavoriteCharacters,
    required ToggleFavoriteCharacter toggleFavoriteCharacter,
    required RemoveFavoriteCharacter removeFavoriteCharacter,
  }) : _getFavoriteCharacters = getFavoriteCharacters,
       _toggleFavoriteCharacter = toggleFavoriteCharacter,
       _removeFavoriteCharacter = removeFavoriteCharacter,
       super(const FavoritesState.initial()) {
    on<_Started>(_onStarted);
    on<_SortChanged>(_onSortChanged);
    on<_ToggleFavorite>(_onToggleFavorite);
    on<_RemoveFavorite>(_onRemoveFavorite);
    on<_Refresh>(_onRefresh);
  }

  final GetFavoriteCharacters _getFavoriteCharacters;
  final ToggleFavoriteCharacter _toggleFavoriteCharacter;
  final RemoveFavoriteCharacter _removeFavoriteCharacter;

  FavoriteSort _currentSort = FavoriteSort.name;

  Future<void> _onStarted(_Started event, Emitter<FavoritesState> emit) async {
    _currentSort = event.sort ?? FavoriteSort.name;
    await _loadFavorites(emit);
  }

  Future<void> _onSortChanged(
    _SortChanged event,
    Emitter<FavoritesState> emit,
  ) async {
    _currentSort = event.sort;
    await _loadFavorites(emit);
  }

  Future<void> _onToggleFavorite(
    _ToggleFavorite event,
    Emitter<FavoritesState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded) {
      return;
    }

    final result = await _toggleFavoriteCharacter(
      ToggleFavoriteCharacterParams(event.character),
    );

    result.when(
      failure: (error) => emit(currentState.copyWith(error: error)),
      success: (_) => _loadFavorites(emit, showLoading: false),
    );
  }

  Future<void> _onRemoveFavorite(
    _RemoveFavorite event,
    Emitter<FavoritesState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded) {
      return;
    }

    final result = await _removeFavoriteCharacter(
      RemoveFavoriteCharacterParams(event.id),
    );

    result.when(
      failure: (error) => emit(currentState.copyWith(error: error)),
      success: (_) => _loadFavorites(emit, showLoading: false),
    );
  }

  Future<void> _onRefresh(_Refresh event, Emitter<FavoritesState> emit) async {
    await _loadFavorites(emit);
  }

  Future<void> _loadFavorites(
    Emitter<FavoritesState> emit, {
    bool showLoading = true,
  }) async {
    if (showLoading) {
      emit(const FavoritesState.loading());
    }

    final result = await _getFavoriteCharacters(
      GetFavoriteCharactersParams(sort: _currentSort),
    );

    result.when(
      failure: (error) => emit(FavoritesState.error(error: error)),
      success: (characters) => emit(
        FavoritesState.loaded(characters: characters, sort: _currentSort),
      ),
    );
  }
}
