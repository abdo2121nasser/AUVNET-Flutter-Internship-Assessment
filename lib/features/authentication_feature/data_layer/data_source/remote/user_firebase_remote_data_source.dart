import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_user_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/utils/constants/logic_strings.dart';
import '../../models/user_model.dart';

class UserFirebaseRemoteDataSource extends BaseUserRemoteDataSource {
  @override
  Future<void> createUser({required UserModel userModel}) async {
   await FirebaseFirestore.instance
        .collection(LogicStrings.kUserCollection)
        .add(userModel.toJson());
  }
}
