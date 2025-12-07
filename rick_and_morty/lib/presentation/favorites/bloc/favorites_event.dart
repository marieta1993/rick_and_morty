part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.started({FavoriteSort? sort}) = _Started;

  const factory FavoritesEvent.sortChanged(FavoriteSort sort) = _SortChanged;

  const factory FavoritesEvent.toggleFavorite(CharacterModel character) =
      _ToggleFavorite;

  const factory FavoritesEvent.removeFavorite(int id) = _RemoveFavorite;

  const factory FavoritesEvent.refresh() = _Refresh;
}
