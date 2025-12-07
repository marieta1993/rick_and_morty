import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constants/constants.dart';
import '../interceptor/interceptor.dart';

@module
abstract class DioClient {
  @lazySingleton
  Dio dio() => Dio(
    BaseOptions(
      baseUrl: APIBase.url,
      headers: {"Content-Type": HeaderValues.applicationJson},
    ),
  )..interceptors.addAll([ApiLoggingInterceptor()]);
}
