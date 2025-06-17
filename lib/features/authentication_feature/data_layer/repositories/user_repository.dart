import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/local/base_data_source/base_user_local_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/models/user_model.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';

import '../../../../core/services/hive_failure_service.dart';
import '../../domain_layer/entities/user_entity.dart';
import '../data_source/remote/base_data_source/base_user_remote_data_source.dart';

class UserRepository extends BaseUserRepository {
  BaseUserRemoteDataSource baseUserRemoteDataSource;
  BaseUserLocalDataSource baseUserLocalDataSource;
  UserRepository({required this.baseUserRemoteDataSource,
  required this.baseUserLocalDataSource
  });
  @override
  Future<Either<Failure, void>> createUser(
      {required UserEntity userEntity}) async {
    final UserModel userModel = UserModel.fromEntity(userEntity);
    try {
      await baseUserRemoteDataSource.createUser(userModel: userModel);
      return const Right(null);
    } catch (e) {
      final failure = FirebaseFailure.fromException(
          e is Exception ? e : Exception(e.toString()));
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, void>> storeUser({required UserEntity userEntity}) async {
    try {
      await baseUserLocalDataSource.storeUser(userEntity: userEntity);
      return const Right(null);
    } catch (error) {
      return Left(HiveFailure.fromException(error));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getRemoteUser({required String userDocId}) async {
    try {
      final user = await baseUserRemoteDataSource.getUser(userDocId: userDocId);
      return Right(user);
    } on FirebaseException catch (e) {
      return Left(FirebaseFailure.fromException(e));
    } catch (e) {
      return Left(Failure(
        devMessage: e.toString(),
        userMessage: UiStrings.kUnknownErrorMessage,
      ));
    }
  }

  @override
  Either<Failure, UserEntity> getLocalUser() {
    try {
     final user=  baseUserLocalDataSource.getUser();
      return  Right(user);
    } catch (error) {
      return Left(HiveFailure.fromException(error));
    }
  }


}
