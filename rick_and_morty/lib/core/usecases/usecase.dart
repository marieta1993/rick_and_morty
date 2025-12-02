import '../result/app_result.dart';

abstract class UseCase<Type, Params> {
  Future<AppResult<Type>> call(Params params);
}

class NoParams {
  const NoParams();
}
