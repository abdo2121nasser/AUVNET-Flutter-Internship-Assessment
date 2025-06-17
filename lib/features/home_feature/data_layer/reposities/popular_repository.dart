import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_popular_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_service_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_popular_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_service_repository.dart';
import 'package:either_dart/either.dart';

import '../../../../core/services/fire_base_failure_service.dart';
import '../../domain_layer/entities/popular_entity.dart';
import '../../domain_layer/entities/service_entity.dart';

class PopularRepository extends BasePopularRepository {
  final BasePopularRemoteDataSource basePopularRemoteDataSource;

  PopularRepository({required this.basePopularRemoteDataSource});
  @override
  Future<Either<Failure, List<PopularEntity>>> getPopulars() async {
    try {
      final result = await basePopularRemoteDataSource.getPopulars();
      return Right(result);
    } catch (e) {
      final failure = FirebaseFailure.fromException(
          e is Exception ? e : Exception(e.toString()));
      return Left(failure);
    }
  }
}
