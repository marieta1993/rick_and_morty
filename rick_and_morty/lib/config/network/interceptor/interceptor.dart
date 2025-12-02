import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:rick_and_morty/config/locator/service_locator.dart';
import 'package:rick_and_morty/config/network/connectivity/connectivity_checker.dart';
import 'package:rick_and_morty/config/network/constants/constants.dart';

class ApiLoggingInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final hasConnection = await getIt<ConnectivityChecker>().hasConnection();
    if (!hasConnection) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: "No internet connection. Please check your connectivity.",
          type: DioExceptionType.connectionError,
        ),
      );
    }

    options.headers[HeaderParameterKeys.accept] = HeaderValues.applicationJson;

    debugPrint(
      'REQUEST[${options.method}] => PATH: ${options.uri} => HEADER: ${options.headers}  => BODY: ${options.data} => QUERY: ${options.queryParameters}',
    );
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} => DATA: ${response.data}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path} => MESSAGE: ${err.message} => DATA: ${err.response?.data}',
    );

    return super.onError(err, handler);
  }
}
