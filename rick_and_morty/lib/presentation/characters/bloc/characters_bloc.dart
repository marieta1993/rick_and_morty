import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rick_and_morty/core/error/app_error.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/entities/character.dart';
import 'package:rick_and_morty/domain/usecases/get_characters_page.dart';
import 'package:rick_and_morty/domain/usecases/get_favorite_ids.dart';
import 'package:rick_and_morty/domain/usecases/toggle_favorite_character.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc({
    required GetCharactersPage getCharactersPage,
    required GetFavoriteIds getFavoriteIds,
    required ToggleFavoriteCharacter toggleFavoriteCharacter,
  }) : _getCharactersPage = getCharactersPage,
       _getFavoriteIds = getFavoriteIds,
       _toggleFavoriteCharacter = toggleFavoriteCharacter,
       super(const CharactersState.initial()) {
    on<_Started>(_onStarted);
    on<_PageRequested>(_onPageRequested);
    on<_Refresh>(_onRefresh);
    on<_ToggleFavorite>(_onToggleFavorite);
    on<_FavoritesRefreshed>(_onFavoritesRefreshed);
  }

  final GetCharactersPage _getCharactersPage;
  final GetFavoriteIds _getFavoriteIds;
  final ToggleFavoriteCharacter _toggleFavoriteCharacter;

  bool _hasMore = true;
  Set<int> _favoriteIds = {};

  Future<void> _onStarted(_Started event, Emitter<CharactersState> emit) async {
    emit(const CharactersState.loading());
    await _loadFavoriteIds();
  }

  Future<void> _onRefresh(_Refresh event, Emitter<CharactersState> emit) async {
    await _loadFavoriteIds();
    _hasMore = true;
    emit(const CharactersState.loading());
  }

  Future<void> _onPageRequested(
    _PageRequested event,
    Emitter<CharactersState> emit,
  ) async {
    final pageKey = event.pageKey;
    final result = await _getCharactersPage(
      GetCharactersPageParams(page: pageKey),
    );

    result.when(
      failure: (error) {
        final existingCharacters = state.maybeWhen(
          loaded: (_, characters, __, ___, ____, _____) => characters,
          error: (_, __, characters, ___, _____) => characters,
          orElse: () => const <Character>[],
        );
        emit(
          CharactersState.error(
            error: error,
            page: pageKey,
            characters: pageKey == 1 ? const [] : existingCharacters,
            hasMore: _hasMore,
            favoriteIds: _favoriteIds,
          ),
        );
      },
      success: (page) {
        _hasMore = page.hasMore;

        final previousCharacters = pageKey == 1
            ? <Character>[]
            : state.maybeWhen(
                loaded: (_, characters, __, ___, ____, _____) => characters,
                error: (_, __, characters, ___, _____) => characters,
                orElse: () => const <Character>[],
              );

        final combined = [...previousCharacters, ...page.characters];

        emit(
          CharactersState.loaded(
            page: pageKey,
            characters: combined,
            pageItems: page.characters,
            hasMore: _hasMore,
            favoriteIds: _favoriteIds,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onToggleFavorite(
    _ToggleFavorite event,
    Emitter<CharactersState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded) {
      return;
    }

    final result = await _toggleFavoriteCharacter(
      ToggleFavoriteCharacterParams(event.character),
    );

    result.when(
      failure: (error) {
        emit(currentState.copyWith(error: error, pageItems: const []));
      },
      success: (isFavorite) {
        final updatedIds = Set<int>.from(_favoriteIds);
        if (isFavorite) {
          updatedIds.add(event.character.id);
        } else {
          updatedIds.remove(event.character.id);
        }
        _favoriteIds = updatedIds;
        emit(
          currentState.copyWith(
            favoriteIds: updatedIds,
            error: null,
            pageItems: const [],
          ),
        );
      },
    );
  }

  Future<void> _onFavoritesRefreshed(
    _FavoritesRefreshed event,
    Emitter<CharactersState> emit,
  ) async {
    final result = await _getFavoriteIds(const NoParams());
    result.when(
      failure: (_) {},
      success: (ids) {
        _favoriteIds = ids;

        _syncFavoritesWithState(emit);
      },
    );
  }

  Future<void> _loadFavoriteIds() async {
    final favoriteResult = await _getFavoriteIds(const NoParams());
    favoriteResult.when(
      success: (ids) => _favoriteIds = ids,
      failure: (_) => _favoriteIds = {},
    );
  }

  void _syncFavoritesWithState(Emitter<CharactersState> emit) {
    state.maybeWhen(
      loaded: (page, characters, pageItems, hasMore, _, error) {
        emit(
          CharactersState.loaded(
            page: page,
            characters: characters,
            pageItems: const [],
            hasMore: hasMore,
            favoriteIds: _favoriteIds,
            error: error,
          ),
        );
      },
      error: (error, page, characters, hasMore, _) {
        emit(
          CharactersState.error(
            error: error,
            page: page,
            characters: characters,
            hasMore: hasMore,
            favoriteIds: _favoriteIds,
          ),
        );
      },
      orElse: () {},
    );
  }
}
