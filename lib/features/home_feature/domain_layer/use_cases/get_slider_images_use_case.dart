import 'package:auvent_flutter_internship_assessment/core/services/fire_base_failure_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/usecase/base_usecase.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_service_repository.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/reposities/base_slider_repository.dart';
import 'package:either_dart/src/either.dart';

import '../entities/service_entity.dart';

class GetSliderImagesUseCase extends BaseUseCase<List<String>, void> {
  final BaseSliderRepository baseSliderRepository;

  GetSliderImagesUseCase({required this.baseSliderRepository});
  @override
  Future<Either<Failure, List<String>>> call(void object) async {
    return await baseSliderRepository.getImages();
  }
}
