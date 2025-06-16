import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_authentication_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_up_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/services/exceptions_service.dart';

class AuthenticationByFirebaseDataSource
    extends BaseAuthenticationRemoteDataSource {
  @override
  Future<void> signIn({required SignInEntity signInEntity}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signInEntity.email, password: signInEntity.password);
    } on FirebaseAuthException catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signUp({required SignUpEntity signUpEntity}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: signUpEntity.email, password: signUpEntity.password);
    } on FirebaseAuthException catch (e) {
      rethrow;
    }
  }
}
