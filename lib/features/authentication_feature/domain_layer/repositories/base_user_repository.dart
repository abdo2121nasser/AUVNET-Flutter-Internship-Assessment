import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:either_dart/either.dart';

import '../entities/user_entity.dart';

abstract class BaseUserRepository{

 Future<Either<Failure,void>> createUser({required UserEntity userEntity});
 Future<Either<Failure,void>> storeUser({required UserEntity userEntity});



}