import 'package:dio/dio.dart';
import 'package:rick_and_morty/config/network/constants/constants.dart';
import 'package:rick_and_morty/config/network/interceptor/interceptor.dart';

class ApiClient {
  ApiClient(this._dio);

  final Dio _dio;

  Dio get dio => _dio;
}

Dio createDioClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: APIBase.url,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
  dio.interceptors.add(ApiLoggingInterceptor());
  return dio;
}
