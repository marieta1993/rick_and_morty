import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';

@lazySingleton
class RemoveFavoriteCharacter
    implements UseCase<bool, RemoveFavoriteCharacterParams> {
  RemoveFavoriteCharacter(this.repository);

  final CharactersRepository repository;

  @override
  Future<AppResult<bool>> call(RemoveFavoriteCharacterParams params) {
    return repository.removeFavorite(params.id);
  }
}

class RemoveFavoriteCharacterParams {
  const RemoveFavoriteCharacterParams(this.id);

  final int id;
}



