import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/models/user_model.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_user_repository.dart';
import 'package:either_dart/either.dart';

import '../../domain_layer/entities/user_entity.dart';
import '../data_source/remote/base_data_source/base_user_remote_data_source.dart';

class UserRepository extends BaseUserRepository {
  BaseUserRemoteDataSource baseUserRemoteDataSource;
  UserRepository({required this.baseUserRemoteDataSource});
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
}
