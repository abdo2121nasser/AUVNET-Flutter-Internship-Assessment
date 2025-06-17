import '../../../../domain_layer/entities/service_entity.dart';

abstract class BaseServiceRemoteDataSource{
  Future<List<ServiceEntity>> getServices();

}