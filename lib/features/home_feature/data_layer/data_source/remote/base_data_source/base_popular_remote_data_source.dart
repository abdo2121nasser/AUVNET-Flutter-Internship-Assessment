import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/popular_entity.dart';

import '../../../../domain_layer/entities/service_entity.dart';

abstract class BasePopularRemoteDataSource{
  Future<List<PopularEntity>> getPopulars();

}