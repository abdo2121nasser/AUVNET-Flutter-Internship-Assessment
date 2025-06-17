import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/local/base_data_source/base_user_local_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';
import 'package:hive/hive.dart';

class UserHiveLocalDataSource extends BaseUserLocalDataSource {
  @override
  Future<void> storeUser({required UserEntity userEntity}) async {
    final box = Hive.box(LogicStrings.kUserBox);
    await box.put(LogicStrings.kUser, userEntity);
  }

  @override
  UserEntity getUser() {
    var box = Hive.box(LogicStrings.kUserBox);
    UserEntity userEntity = box.get(LogicStrings.kUser);
    if (userEntity != null) {
      return userEntity;
    } else {
      throw Exception(LogicStrings.kUserNotFoundErrorMessage);
    }
  }
}
