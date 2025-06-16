import '../../../domain_layer/entities/sign_in_entity.dart';
import '../../../domain_layer/entities/sign_up_entity.dart';

abstract class BaseAuthenticationRemoteDataSource {
  Future<void> signIn({required SignInEntity signInEntity});
  Future<void> signUp({required SignUpEntity signUpEntity});
}
