import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';

@lazySingleton
class GetFavoriteIds implements UseCase<Set<int>, NoParams> {
  GetFavoriteIds(this.repository);

  final CharactersRepository repository;

  @override
  Future<AppResult<Set<int>>> call(NoParams params) {
    return repository.getFavoriteIds();
  }
}



