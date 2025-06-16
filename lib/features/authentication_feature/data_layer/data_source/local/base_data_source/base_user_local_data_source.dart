import '../../../../domain_layer/entities/user_entity.dart';
import '../../../models/user_model.dart';

abstract class BaseUserLocalDataSource {
  Future<void> storeUser({required UserEntity userEntity});

}
