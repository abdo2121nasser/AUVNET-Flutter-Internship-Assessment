import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/usecase/base_usecase.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_popular_repository.dart';
import 'package:either_dart/src/either.dart';

import '../entities/popular_entity.dart';

class GetPopularUseCase extends BaseUseCase<List<PopularEntity>, void> {
  final BasePopularRepository basePopularRepository;

  GetPopularUseCase({required this.basePopularRepository});
  @override
  Future<Either<Failure, List<PopularEntity>>> call(void object) async {
    return await basePopularRepository.getPopulars();
  }
}
