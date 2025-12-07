import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:rick_and_morty/config/network/constants/constants.dart';
import 'package:rick_and_morty/config/network/constants/end_points.dart';
import 'package:rick_and_morty/domain/models/paginated_characters/paginated_characters_model.dart';

part 'characters_remote_data_source.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class CharactersRemoteDataSource {
  @factoryMethod
  factory CharactersRemoteDataSource(Dio dio) = _CharactersRemoteDataSource;

  @GET(EndPoints.characters)
  Future<PaginatedCharactersModel> getCharactersPage(
    @Query('page') int page,
  );
}
