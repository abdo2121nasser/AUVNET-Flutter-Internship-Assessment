import '../../../../domain_layer/entities/service_entity.dart';

abstract class BaseSliderImagesRemoteDataSource{
  Future<List<String>> getSliderImages();

}