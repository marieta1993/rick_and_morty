import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/entities/character.dart';
import 'package:rick_and_morty/domain/enums/favorite_sort.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';

class GetFavoriteCharacters
    implements UseCase<List<Character>, GetFavoriteCharactersParams> {
  GetFavoriteCharacters(this.repository);

  final CharactersRepository repository;

  @override
  Future<AppResult<List<Character>>> call(
    GetFavoriteCharactersParams params,
  ) {
    return repository.getFavoriteCharacters(params.sort);
  }
}

class GetFavoriteCharactersParams {
  const GetFavoriteCharactersParams({required this.sort});

  final FavoriteSort sort;
}