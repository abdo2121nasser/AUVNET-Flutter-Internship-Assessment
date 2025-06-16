import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/repositories/base_authentication_repository.dart';
import 'package:either_dart/either.dart';

import 'package:either_dart/src/either.dart';

import '../../../../core/utils/usecase/base_usecase.dart';

class SignInUseCase extends BaseUseCase {
  final BaseAuthenticationRepository baseAuthenticationRepository;
  final SignInEntity signInEntity;

  SignInUseCase({
    required this.baseAuthenticationRepository,
    required this.signInEntity,
  });
  @override
  Future<Either<Failure, void>> call() async {

    return await baseAuthenticationRepository.signIn(
        signInEntity: signInEntity);
  }
}
