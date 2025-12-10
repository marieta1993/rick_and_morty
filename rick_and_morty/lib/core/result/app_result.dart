import '../error/app_error.dart';

class AppResult<T> {
  const AppResult._({this.data, this.error});

  const AppResult.success(T data) : this._(data: data);

  const AppResult.failure(AppError error) : this._(error: error);

  final T? data;
  final AppError? error;

  bool get isSuccess => error == null;

  bool get hasError => error != null;

  R when<R>({
    required R Function(T data) success,
    required R Function(AppError error) failure,
  }) {
    if (error != null) {
      return failure(error!);
    }
    return success(data as T);
  }
}


