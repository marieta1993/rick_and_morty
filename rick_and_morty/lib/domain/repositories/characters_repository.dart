import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/domain/entities/character.dart';
import 'package:rick_and_morty/domain/entities/paginated_characters.dart';
import 'package:rick_and_morty/domain/enums/favorite_sort.dart';

abstract class CharactersRepository {
  Future<AppResult<PaginatedCharacters>> getCharactersPage(int page);

  Future<AppResult<List<Character>>> getFavoriteCharacters(
    FavoriteSort sort,
  );

  Future<AppResult<bool>> toggleFavorite(Character character);

  Future<AppResult<bool>> isFavorite(int id);

  Future<AppResult<bool>> removeFavorite(int id);

  Future<AppResult<Set<int>>> getFavoriteIds();
}

