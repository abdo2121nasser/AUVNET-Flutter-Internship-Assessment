import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/service_entity.dart';
import 'package:either_dart/either.dart';

abstract class BaseServiceRepository{
  Future<Either<Failure,List<ServiceEntity>>> getServices();
}