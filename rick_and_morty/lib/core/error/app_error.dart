enum AppErrorType { server, cache, network, unknown }

class AppError {
  const AppError._(this.type, this.message);

  factory AppError.server([String message = 'Произошла ошибка сервера']) =>
      AppError._(AppErrorType.server, message);

  factory AppError.cache([String message = 'Ошибка кеширования']) =>
      AppError._(AppErrorType.cache, message);

  factory AppError.network([String message = 'Нет подключения к сети']) =>
      AppError._(AppErrorType.network, message);

  factory AppError.unknown([String message = 'Непредвиденная ошибка']) =>
      AppError._(AppErrorType.unknown, message);

  final AppErrorType type;
  final String message;
}


