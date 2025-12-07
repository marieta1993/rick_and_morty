import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/domain.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';

@lazySingleton
class GetFavoriteCharacters
    implements UseCase<List<CharacterModel>, GetFavoriteCharactersParams> {
  GetFavoriteCharacters(this.repository);

  final CharactersRepository repository;

  @override
  Future<AppResult<List<CharacterModel>>> call(
    GetFavoriteCharactersParams params,
  ) {
    return repository.getFavoriteCharacters(params.sort);
  }
}

class GetFavoriteCharactersParams {
  const GetFavoriteCharactersParams({required this.sort});

  final FavoriteSort sort;
}
