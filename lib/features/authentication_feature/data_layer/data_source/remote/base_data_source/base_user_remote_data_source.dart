import '../../../../domain_layer/entities/user_entity.dart';
import '../../../models/user_model.dart';

abstract class BaseUserRemoteDataSource {
  Future<void> createUser({required UserModel userModel});

}
