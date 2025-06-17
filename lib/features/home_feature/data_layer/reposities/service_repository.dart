import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_service_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_service_repository.dart';
import 'package:either_dart/either.dart';

import '../../../../core/services/fire_base_failure_service.dart';
import '../../domain_layer/entities/service_entity.dart';

class ServiceRepository extends BaseServiceRepository {
  final BaseServiceRemoteDataSource baseServiceRemoteDataSource;

  ServiceRepository({required this.baseServiceRemoteDataSource});
  @override
  Future<Either<Failure, List<ServiceEntity>>> getServices() async {
    try {
      final result = await baseServiceRemoteDataSource.getServices();
      return Right(result);
    } catch (e) {
      final failure = FirebaseFailure.fromException(
          e is Exception ? e : Exception(e.toString()));
      return Left(failure);
    }
  }
}
