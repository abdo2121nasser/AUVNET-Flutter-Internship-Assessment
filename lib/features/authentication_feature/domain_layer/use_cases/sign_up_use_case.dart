import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_authentication_repository.dart';
import 'package:either_dart/either.dart';

import 'package:either_dart/src/either.dart';

import '../../../../core/utils/usecase/base_usecase.dart';
import '../entities/sign_up_entity.dart';

class SignUpUseCase extends BaseUseCase<String, SignUpEntity> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  SignUpUseCase({
    required this.baseAuthenticationRepository,
  });
  @override
  Future<Either<Failure, String>> call(SignUpEntity object) async {
    return await baseAuthenticationRepository.signUp(signUpEntity: object);
  }
}
