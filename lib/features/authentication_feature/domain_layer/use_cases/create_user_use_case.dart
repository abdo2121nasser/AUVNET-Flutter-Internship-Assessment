import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_user_repository.dart';
import 'package:either_dart/either.dart';

import 'package:either_dart/src/either.dart';

import '../../../../core/utils/usecase/base_usecase.dart';

class CreateUserUseCase extends BaseUseCase<void, UserEntity> {
  final BaseUserRepository baseUserRepository;

  CreateUserUseCase({
    required this.baseUserRepository,
  });
  @override
  Future<Either<Failure, void>> call(UserEntity object) async {
    return await baseUserRepository.createUser(userEntity: object);
  }
}
