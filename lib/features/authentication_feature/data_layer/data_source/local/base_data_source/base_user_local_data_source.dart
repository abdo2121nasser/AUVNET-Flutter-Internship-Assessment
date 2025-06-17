import '../../../../domain_layer/entities/user_entity.dart';

abstract class BaseUserLocalDataSource {
  Future<void> storeUser({required UserEntity userEntity});
  UserEntity getUser();

}
