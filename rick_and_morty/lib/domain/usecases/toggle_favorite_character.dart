import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/domain.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';

class ToggleFavoriteCharacter
    implements UseCase<bool, ToggleFavoriteCharacterParams> {
  ToggleFavoriteCharacter(this.repository);

  final CharactersRepository repository;

  @override
  Future<AppResult<bool>> call(ToggleFavoriteCharacterParams params) {
    return repository.toggleFavorite(params.character);
  }
}

class ToggleFavoriteCharacterParams {
  const ToggleFavoriteCharacterParams(this.character);

  final CharacterModel character;
}

