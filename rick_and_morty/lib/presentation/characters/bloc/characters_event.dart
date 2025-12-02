part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.started() = _Started;

  const factory CharactersEvent.pageRequested(int pageKey) = _PageRequested;

  const factory CharactersEvent.refresh() = _Refresh;

  const factory CharactersEvent.toggleFavorite(Character character) =
      _ToggleFavorite;

  const factory CharactersEvent.favoritesRefreshed() = _FavoritesRefreshed;
}
