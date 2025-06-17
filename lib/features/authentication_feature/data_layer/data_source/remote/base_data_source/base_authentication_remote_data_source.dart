import 'package:either_dart/either.dart';

import '../../../../../../core/services/fire_base_failure_service.dart';
import '../../../../domain_layer/entities/sign_in_entity.dart';
import '../../../../domain_layer/entities/sign_up_entity.dart';

abstract class BaseAuthenticationRemoteDataSource {
  Future<String> signIn({required SignInEntity signInEntity});
  Future<String> signUp({required SignUpEntity signUpEntity});

 bool isSignedIn();
}
