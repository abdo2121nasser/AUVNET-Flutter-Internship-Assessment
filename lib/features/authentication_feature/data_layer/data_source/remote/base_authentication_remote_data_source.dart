import '../../../domain_layer/entities/sign_in_entity.dart';

abstract class BaseAuthenticationRemoteDataSource{
 Future<void> signIn({required SignInEntity signInEntity});
}