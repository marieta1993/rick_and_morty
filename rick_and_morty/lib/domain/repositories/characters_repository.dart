import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/domain/domain.dart';

abstract class CharactersRepository {
  Future<AppResult<PaginatedCharactersModel>> getCharactersPage(int page);

  Future<AppResult<List<CharacterModel>>> getFavoriteCharacters(
    FavoriteSort sort,
  );

  Future<AppResult<bool>> toggleFavorite(CharacterModel character);

  Future<AppResult<bool>> isFavorite(int id);

  Future<AppResult<bool>> removeFavorite(int id);

  Future<AppResult<Set<int>>> getFavoriteIds();
}
