import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_user_repository.dart';
import 'package:either_dart/either.dart';

import 'package:either_dart/src/either.dart';

import '../../../../core/utils/usecase/base_usecase.dart';

class GetLocalUserUseCase extends BaseUseCase<UserEntity, void> {
  final BaseUserRepository baseUserRepository;

  GetLocalUserUseCase({
    required this.baseUserRepository,
  });
  @override
  Future<Either<Failure, UserEntity>> call(void object) async {
    return baseUserRepository.getLocalUser();
  }
}
