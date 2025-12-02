part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _Initial;

  const factory CharactersState.loading() = _Loading;

  const factory CharactersState.loaded({
    required int page,
    required List<Character> characters,
    required List<Character> pageItems,
    required bool hasMore,
    required Set<int> favoriteIds,
    AppError? error,
  }) = _Loaded;

  const factory CharactersState.error({
    required AppError error,
    required int page,
    required List<Character> characters,
    required bool hasMore,
    required Set<int> favoriteIds,
  }) = _Error;
}

