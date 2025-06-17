import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_authentication_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_up_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/services/exceptions_service.dart';
import '../../../../../core/utils/constants/logic_strings.dart';

class AuthenticationByFirebaseDataSource
    extends BaseAuthenticationRemoteDataSource {
  @override
  Future<String> signIn({required SignInEntity signInEntity}) async {
    final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signInEntity.email, password: signInEntity.password);
    final user = result.user;
    if (user != null) {
      return user.uid;
    } else {
      throw const ServerException(
          errorMessage: LogicStrings.kUserNotFoundErrorMessage);
    }
  }

  @override
  Future<String> signUp({required SignUpEntity signUpEntity}) async {
    final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signUpEntity.email, password: signUpEntity.password);
    final user = result.user;
    if (user != null) {
      return user.uid;
    } else {
      throw const ServerException(
          errorMessage: LogicStrings.kUserNotFoundErrorMessage);
    }
  }
}
