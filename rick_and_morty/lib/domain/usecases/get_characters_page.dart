import 'package:rick_and_morty/core/result/app_result.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/domain/domain.dart';
import 'package:rick_and_morty/domain/repositories/characters_repository.dart';

class GetCharactersPage
    implements UseCase<PaginatedCharactersModel, GetCharactersPageParams> {
  GetCharactersPage(this.repository);

  final CharactersRepository repository;

  @override
  Future<AppResult<PaginatedCharactersModel>> call(
    GetCharactersPageParams params,
  ) {
    return repository.getCharactersPage(params.page);
  }
}

class GetCharactersPageParams {
  const GetCharactersPageParams({required this.page});

  final int page;
}

