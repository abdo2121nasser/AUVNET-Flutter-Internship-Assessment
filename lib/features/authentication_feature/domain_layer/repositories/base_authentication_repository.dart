import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:either_dart/either.dart';

import '../entities/sign_in_entity.dart';

abstract class BaseAuthenticationRepository {
  Future<Either<Failure, Future<void>>> signIn(
      {required SignInEntity signInEntity});
}
