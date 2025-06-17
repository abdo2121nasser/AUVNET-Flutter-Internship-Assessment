import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:either_dart/either.dart';

import '../entities/popular_entity.dart';

abstract class BasePopularRepository{
  Future<Either<Failure,List<PopularEntity>>> getPopulars();
}