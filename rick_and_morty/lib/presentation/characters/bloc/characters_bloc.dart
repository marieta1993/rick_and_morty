import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:rick_and_morty/core/error/app_error.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/domain.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

@injectable
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

  Future<void> _onStarted(_Started event, Emitter<CharactersState> emit) async {
    emit(const CharactersState.loading());
  }

  Future<void> _onRefresh(_Refresh event, Emitter<CharactersState> emit) async {
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

    if (result.hasError) {
      final error = result.error!;

      final hasMore = state.maybeWhen(
        loaded: (_, __, ___, hasMore, ____, _____) => hasMore,
        error: (_, __, ___, hasMore, _____) => hasMore,
        orElse: () => true,
      );
      final favoriteIds = state.maybeWhen(
        loaded: (_, __, ___, ____, favoriteIds, _____) => favoriteIds,
        error: (_, __, ___, ____, favoriteIds) => favoriteIds,
        orElse: () => <int>{},
      );

      final existingCharacters = state.maybeWhen(
        loaded: (_, characters, __, ___, ____, _____) => characters,
        error: (_, __, characters, ___, _____) => characters,
        orElse: () => const <CharacterModel>[],
      );

      emit(
        CharactersState.error(
          error: error,
          page: pageKey,
          characters: pageKey == 1 ? const [] : existingCharacters,
          hasMore: hasMore,
          favoriteIds: favoriteIds,
        ),
      );
      return;
    }

    final page = result.data!;
    final hasMore = page.hasMore;

    final previousCharacters = pageKey == 1
        ? <CharacterModel>[]
        : state.maybeWhen(
            loaded: (_, characters, __, ___, ____, _____) => characters,
            error: (_, __, characters, ___, _____) => characters,
            orElse: () => const <CharacterModel>[],
          );

    final combined = [...previousCharacters, ...page.characters];

    // Для обновления избранного запрашиваем ids здесь,
    // внутри самого обработчика события (а не в callback `when`).
    final favoriteResult = await _getFavoriteIds(const NoParams());
    final favoriteIds = favoriteResult.when(
      success: (ids) => ids,
      failure: (_) => <int>{},
    );

    emit(
      CharactersState.loaded(
        page: pageKey,
        characters: combined,
        pageItems: page.characters,
        hasMore: hasMore,
        favoriteIds: favoriteIds,
        error: null,
      ),
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
        final updatedIds = Set<int>.from(currentState.favoriteIds);
        if (isFavorite) {
          updatedIds.add(event.character.id);
        } else {
          updatedIds.remove(event.character.id);
        }
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
        state.maybeWhen(
          loaded: (page, characters, pageItems, hasMore, _, error) {
            emit(
              CharactersState.loaded(
                page: page,
                characters: characters,
                pageItems: const [],
                hasMore: hasMore,
                favoriteIds: ids,
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
                favoriteIds: ids,
              ),
            );
          },
          orElse: () {},
        );
      },
    );
  }
}
