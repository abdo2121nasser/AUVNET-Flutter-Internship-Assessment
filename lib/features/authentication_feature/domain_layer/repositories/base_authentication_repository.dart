import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:either_dart/either.dart';

import '../entities/sign_in_entity.dart';
import '../entities/sign_up_entity.dart';

abstract class BaseAuthenticationRepository {
  Future<Either<Failure, void>> signIn({required SignInEntity signInEntity});
  Future<Either<Failure, void>> signUp({required SignUpEntity signUpEntity});
}
