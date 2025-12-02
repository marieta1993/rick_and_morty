import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/error/exceptions.dart';
import 'package:rick_and_morty/domain/models/paginated_characters/paginated_characters_model.dart';

abstract class CharactersRemoteDataSource {
  Future<PaginatedCharactersModel> getCharactersPage(int page);
}

class CharactersRemoteDataSourceImpl implements CharactersRemoteDataSource {
  CharactersRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<PaginatedCharactersModel> getCharactersPage(int page) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/character',
        queryParameters: {'page': page},
      );
      final data = response.data;
      if (data == null) {
        throw ServerException('Empty response from server');
      }
      return PaginatedCharactersModel.fromJson(data);
    } on DioException catch (error) {
      final message = error.response?.statusMessage ?? error.message;
      throw ServerException(message);
    }
  }
}
