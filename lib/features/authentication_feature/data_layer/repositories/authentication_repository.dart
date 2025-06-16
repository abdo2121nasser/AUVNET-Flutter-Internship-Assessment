import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_authentication_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_up_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_authentication_repository.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/services/fire_base_failure_service.dart';
import '../../domain_layer/entities/sign_in_entity.dart';

class AuthenticationRepository extends BaseAuthenticationRepository {
  final BaseAuthenticationRemoteDataSource baseAuthenticationRemoteDataSource;

  AuthenticationRepository({required this.baseAuthenticationRemoteDataSource});

  @override
  Future<Either<Failure, void>> signIn(
      {required SignInEntity signInEntity}) async {
    try {
      await baseAuthenticationRemoteDataSource.signIn(
          signInEntity: signInEntity);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      Failure failure = FirebaseFailure.fromException(e);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, void>> signUp({required SignUpEntity signUpEntity}) async {
    try {
      await baseAuthenticationRemoteDataSource.signUp(
          signUpEntity: signUpEntity);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      Failure failure = FirebaseFailure.fromException(e);
      return Left(failure);
    }
  }
}
