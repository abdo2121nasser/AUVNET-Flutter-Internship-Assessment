import 'package:either_dart/either.dart';

import '../../services/fire_base_failure_service.dart';

abstract class BaseUseCase<T,Input> {
  Future<Either<Failure, T>> call(Input object);
}


